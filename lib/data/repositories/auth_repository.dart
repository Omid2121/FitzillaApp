import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../services/auth_service.dart';

class AuthRepository {
  final AuthService _authService;
  AuthRepository(this._authService);

  Future<String> login(String username, String password) async {
    return _authService.login(username, password);
  }
}

final authRepositoryProvider = Provider<AuthRepository>((ref) =>
    AuthRepository(ref.read(authServiceProvider)));