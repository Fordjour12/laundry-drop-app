import 'package:in.laundrydrop.app/app/authentication/create-account/create_account.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class CreateAccountRepository {
  final SupabaseClient supabase;

  CreateAccountRepository(this.supabase);

  Future<User> createAccount(CreateAccountModel userInfo) async {
    // try {
    final response = await supabase.auth.signUp(
      email: userInfo.email,
      password: userInfo.password,
      data: {userInfo.username: userInfo.username},
      emailRedirectTo: "io.supabase.flutterquickstart://login-callback/",
    );
    if (response.user != null) {
      print("User created successfully");
      return response.user!;
    } else {
      throw Exception('User creation failed');
    }
    // } catch (error) {
    //   print(error);
    //   throw Exception('Error creating user: $error.message');
    // }
    // } on AuthException catch (error) {
    //   print(error.statusCode);
    // } catch (error) {
    //   print(error);
    // }
  }
}
