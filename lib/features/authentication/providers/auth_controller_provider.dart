
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../data/repositories/auth_repository.dart';
import 'states/auth_states.dart';

class AuthController extends StateNotifier<AuthState> {
  AuthController(this.ref) : super(const AuthStateInitial());

  final Ref ref;

  void login(String email, String password) async {
    state = const AuthStateLoading();

    try {
      await ref.read(authRepositoryProvider).login(email, password);
      state = const AuthStateSuccess();
    } catch (e) {
      state = AuthStateFailure(e.toString());
    }
  }
}

final AuthControllerProvider = StateNotifierProvider<AuthController, AuthState>((ref) {
  return AuthController(ref);
});