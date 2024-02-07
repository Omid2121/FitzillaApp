import 'package:fitzilla_app/data/repositories/auth_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../common/styles/spacing_styles.dart';
import '../providers/auth_controller_provider.dart';
import 'widgets/login_form.dart';
import 'widgets/login_header.dart';

class LoginScreen extends ConsumerStatefulWidget {
  const LoginScreen({super.key});

  @override
  ConsumerState<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends ConsumerState<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    var emailController = TextEditingController();
    var passwordController = TextEditingController();

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              /// Logo, title, and subtitle
              const TLoginHeader(),

              /// Form
              TLoginForm(
                email: emailController,
                password: passwordController,
                onLogin: () => ref.read(AuthControllerProvider.notifier).login(emailController.text, passwordController.text),
                onRegister: () => ref.read(AuthControllerProvider.notifier).register(),
              ),
            ]
          )
        )
      )
    );
  }
}
