import 'package:blog_app/core/error/exeptions.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

abstract interface class AuthRemoteDataSource {
  Future<String> SignupWithEmailPassword(
      {required String name, required String email, required String password});

  Future<String> SigninWithEmailPassword(
      {required String email, required String password});
}

class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  final SupabaseClient supabaseClient;
  AuthRemoteDataSourceImpl({required this.supabaseClient});

  @override
  Future<String> SigninWithEmailPassword({
    required String email,
    required String password,
  }) {
    // TODO: implement SigninWithEmailPassword
    throw UnimplementedError();
  }

  @override
  Future<String> SignupWithEmailPassword({
    required String name,
    required String email,
    required String password,
  }) async {
    try {
      final response = await supabaseClient.auth
          .signUp(password: password, email: email, data: {
        'name': name,
      });
      if (response.user == null) {
        throw ServerException("User is Null");
      }
      return response.user!.id;
    } catch (e) {
      throw ServerException(e.toString());
    }
  }
}
