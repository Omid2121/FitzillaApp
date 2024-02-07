import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/texts.dart';


class TRegisterForm extends StatelessWidget {
  const TRegisterForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          const Image(
            height: 100,
            image: AssetImage(TImages.lightLogo),
          ),
          Text(TTexts.signupTitle, style: Theme.of(context).textTheme.headlineSmall),
          const SizedBox(height: TSizes.sm),
          Text(TTexts.signupSubtitle, style: Theme.of(context).textTheme.bodyLarge),
          /// First Name and Last Name
          TextFormField(
            decoration: const InputDecoration(labelText: 'First Name', prefixIcon: Icon(Iconsax.user_edit)),
          ),
          const SizedBox(height: TSizes.spaceBtwInputFields),

          TextFormField(
            decoration: const InputDecoration(labelText: 'Last Name', prefixIcon: Icon(Iconsax.user_edit)),
          ),
          const SizedBox(height: TSizes.spaceBtwInputFields),

          TextFormField(
            decoration: const InputDecoration(labelText: 'Address', prefixIcon: Icon(Iconsax.location)),
          ),
          const SizedBox(height: TSizes.spaceBtwInputFields),

          TextFormField(
            decoration: const InputDecoration(labelText: 'Phone number', prefixIcon: Icon(Iconsax.mobile)),
          ),
          const SizedBox(height: TSizes.spaceBtwInputFields),

          /// Email
          TextFormField(
            decoration: const InputDecoration(labelText: "Email", prefixIcon: Icon(Iconsax.direct)),
          ),
          const SizedBox(height: TSizes.spaceBtwInputFields),

          /// Password
          TextFormField(
            obscureText: true,
            decoration: const InputDecoration(labelText: "Password", prefixIcon: Icon(Iconsax.lock), suffixIcon: Icon(Iconsax.eye_slash)),
          ),
          const SizedBox(height: TSizes.spaceBtwInputFields),

          /// Sign Up Button
          SizedBox(width: double.infinity, child:  ElevatedButton(onPressed: () {}, child: const Text('Create Account'))),
        ],
      ),
    );
  }
}