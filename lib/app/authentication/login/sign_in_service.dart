import 'package:in.laundrydrop.app/app/authentication/login/sign_in.dart';
import 'package:in.laundrydrop.app/app/authentication/login/sign_in_respository.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class SignInServices {
  final SignInRepository _signInRepository;

  SignInServices(this._signInRepository);

  Future<User?> signIn(SignInModel userInfo) {
    return _signInRepository.signIn(userInfo.email, userInfo.password);
  }
}
