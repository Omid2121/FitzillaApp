import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/sizes.dart';


class TLoginForm extends StatelessWidget {
  const TLoginForm({Key? key, required this.email, required this.password, required this.onLogin, required this.onRegister}) : super(key: key);

  final TextEditingController email;
  final TextEditingController password;
  final void Function() onLogin;
  final void Function() onRegister;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: TSizes.spaceBtwSections),
      child: Form(child: Column(
        children: [
          /// Email
          TextFormField(
            controller: email,
            decoration: const InputDecoration(
              prefixIcon: Icon(Iconsax.direct_right),
              labelText: "Email",
            ),
          ),
          const SizedBox(height: TSizes.spaceBtwInputFields),
          /// Password
          TextFormField(
            controller: password,
            obscureText: true,
            decoration: const InputDecoration(
              prefixIcon: Icon(Iconsax.lock),
              labelText: "Password",
              suffixIcon: Icon(Iconsax.eye_slash),
            ),
          ),
          const SizedBox(height: TSizes.spaceBtwSections),
          /// Login button
          SizedBox(width: double.infinity, child: ElevatedButton(onPressed: onLogin,
              child: const Text("Login"))),
          const SizedBox(height: TSizes.spaceBtwItems),
          /// Create account button
          SizedBox(width: double.infinity, child: ElevatedButton(onPressed: onRegister,
              child: const Text("Create account"))),
        ],
      )),
    );
  }
}
