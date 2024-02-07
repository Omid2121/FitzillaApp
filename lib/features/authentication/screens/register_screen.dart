import 'package:flutter/material.dart';

import '../../../utils/constants/sizes.dart';
import 'widgets/register_form.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: const SingleChildScrollView(
            child: Padding(
                padding: EdgeInsets.all(TSizes.defaultSpace),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    /// Form
                    TRegisterForm(),
                  ],
                )
            )
        )
    );
  }
}
