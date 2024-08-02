import 'package:blog_app/core/error/exeptions.dart';
import 'package:blog_app/core/error/failure.dart';
import 'package:blog_app/features/auth/data/datasources/auth_remote_data_source.dart';
import 'package:blog_app/features/auth/domain/repository/auth_repository.dart';
import 'package:fpdart/fpdart.dart';


class AuthRepsitoryImpl implements AuthRepository {

  AuthRemoteDataSource remoteDataSource;

  AuthRepsitoryImpl(this.remoteDataSource);

  @override
 Future< Either<Failure, String>> SigninWithEmailPassword({
    required String email,
    required String password,
  }) {

    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, String>> SignupWithEmailPassword({
    required String name,
    required String email,
    required String password,
  }) async {

    try{
      final userId= await remoteDataSource.SignupWithEmailPassword(
          name: name,
          email: email,
          password: password,
      );
      return right(userId);
    }on ServerException catch(e){
      return left(Failure(e.message));
    }

  }
}
