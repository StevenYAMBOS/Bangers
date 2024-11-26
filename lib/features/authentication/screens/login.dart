import 'package:bangers/common/styles/spacing_styles.dart';
import 'package:bangers/utils/constants/images.dart';
import 'package:bangers/utils/constants/sizes.dart';
import 'package:bangers/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyles.paddingWithAppBarHeight,
          child: Column(
            children: [
              /// Logo, titre et sous titre
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image(
                    height: 150,
                    image: AssetImage(TImages.logoLight),
                  ),
                  Text(TTexts.loginTitle),
                  SizedBox(height: TSizes.sm),
                  Text(TTexts.loginDescription)
                ],
              ),

              /// Form
              Form(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: TSizes.spaceBetweenSections),
                  child: Column(
                    children: [
                      /// Email
                      TextFormField(
                        decoration: const InputDecoration(
                            prefixIcon: Icon(Iconsax.direct_right),
                            labelText: TTexts.emailInput),
                      ),

                      /// Séparateur
                      const SizedBox(height: TSizes.spaceBetweenSections),

                      /// Password
                      TextFormField(
                        decoration: const InputDecoration(
                            prefixIcon: Icon(Iconsax.password_check),
                            labelText: TTexts.passwordInput,
                            suffixIcon: Icon(Iconsax.eye_slash)),
                      ),

                      /// Séparateur
                      const SizedBox(height: TSizes.spaceBetweenSections / 2),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Checkbox(value: true, onChanged: (value) {}),
                              const Text(TTexts.forgetPassword),
                            ],
                          ),
                          // Mot de passe oublié
                          TextButton(
                              onPressed: () {},
                              child: const Text(TTexts.forgetPassword)),
                        ],
                      ),

                      /// Espacement
                      const SizedBox(height: TSizes.spaceBetweenSections),

                      /// Bouton connexion
                      SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                              onPressed: () {},
                              child: const Text(TTexts.loginButton))),

                      /// Espacement
                      const SizedBox(height: TSizes.spaceBetweenItems),

                      /// Bouton inscription
                      SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                              onPressed: () {},
                              child: const Text(TTexts.registerButton))),
                    ],
                  ),
                ),
              ),

              /// Espacement
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(child: Divider(color: Colors.black, thickness: 0.5, indent: 60, endIndent: 5)),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
