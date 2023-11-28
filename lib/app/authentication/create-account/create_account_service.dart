import 'package:in.laundrydrop.app/app/authentication/create-account/create_account.dart';
import 'package:in.laundrydrop.app/app/authentication/create-account/create_account_repository.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class CreateAccountService {

  final CreateAccountRepository _createAccountRepository;

  CreateAccountService(this._createAccountRepository);

  Future<User?> createNewAccount(CreateAccountModel userInfo) {
    return _createAccountRepository.createAccount(userInfo);
  }
}
