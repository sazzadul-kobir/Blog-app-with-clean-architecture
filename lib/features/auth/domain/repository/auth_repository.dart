import 'package:fpdart/fpdart.dart';
import '../../../../core/error/failure.dart';

abstract interface class AuthRepository{

  Either<Failure,String> SignupWithEmailPassword({
    required String name,
    required String email,
    required String password
});

  Either<Failure,String> SigninWithEmailPassword({

    required String email,
    required String password
  });
}