import 'package:fpdart/fpdart.dart';
import '../../../../core/error/failure.dart';

abstract interface class AuthRepository{

  Future<Either<Failure,String>> SignupWithEmailPassword({
    required String name,
    required String email,
    required String password
});

  Future<Either<Failure,String>> SigninWithEmailPassword({

    required String email,
    required String password
  });
}