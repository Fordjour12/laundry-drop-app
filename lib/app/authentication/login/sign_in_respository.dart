import "dart:developer" as devtools show log;

import 'package:supabase_flutter/supabase_flutter.dart';

class SignInRepository {
  final SupabaseClient supabaseClient;

  SignInRepository(this.supabaseClient);

  Future<User> signIn(String email, String password) async {
    try {
      final response = await supabaseClient.auth
          .signInWithPassword(email: email, password: password);
      if (response.user != null) {
        print("User signed in successfully");
      }
      return response.user!;
    } on AuthException catch (e) {
      devtools.log(e.message);
      throw Exception(e.message);
    } catch (e) {
      print(e);
      devtools.log(e.toString());
      throw Exception('User sign in failed');
    }
  }
}
