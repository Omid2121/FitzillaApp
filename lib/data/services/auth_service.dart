import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../features/authentication/models/user_model.dart';
import '../../utils/http/http_helper.dart';
import '../../utils/local_storage/storage_utility.dart';
import '../../utils/validators/validation.dart';

class AuthService {

  final _secureStorage = TLocalStorage();
  bool _isLoggedIn = false;

  Future<void> isLoggedIn() async {
    var token = await _secureStorage.readData('token');
    if (token != null) {
      _isLoggedIn = true;
      await getAccount();
    }
    _isLoggedIn = false;

  }

  Future<void> login(String email, String password) async {
    // validate both email and password
    TValidator.validateEmail(email);
    TValidator.validatePassword(password);

    var response = await THttpHelper.authenticate('login', {'email': email, 'password': password});
    var token = response['token'];
    await _secureStorage.saveData('token', token);
  }

  Future<void> register(UserModel user) async {
    TValidator.validateEmail(user.email);
    TValidator.validatePassword(user.password);
    TValidator.validateBirthDate(user.dateOfBirth);
    TValidator.validatePhoneNumber(user.phoneNumber);

    await THttpHelper.authenticate('register', user.toJson());
  }

  Future<void> getAccount() async {
    var token = await _secureStorage.readData('token');
    var response = await THttpHelper.get('account', token);
    var user = UserModel.fromJson(response);
    // save user to local storage
    await _secureStorage.saveData('user', user.toJson());
  }

  Future<void> updateAccount(UserModel user) async {
    var token = await _secureStorage.readData('token');
    await THttpHelper.put('account', token, user.toJson());
    await _secureStorage.saveData('user', user.toJson());
  }

  Future<void> deleteAccount() async {
    var token = await _secureStorage.readData('token');
    await THttpHelper.delete('account', token);
    await _secureStorage.removeData('user');
  }

  Future<void> logout() async {
    await _secureStorage.removeData('token');
  }
}

final authServiceProvider = Provider<AuthService>((ref) => AuthService());