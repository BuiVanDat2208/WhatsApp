import 'package:flutter/material.dart';
import 'package:whatsapp_clone/common/extension/custom_theme_extension.dart';
import 'package:whatsapp_clone/common/widgets/custom_elevated_button.dart';
import 'package:whatsapp_clone/feature/welcome/widget/language_button.dart';
import 'package:whatsapp_clone/feature/welcome/widget/privacy_and_terms.dart';

class WelcomePages extends StatefulWidget {
  const WelcomePages({super.key});

  @override
  State<WelcomePages> createState() => _WelcomePagesState();
}

class _WelcomePagesState extends State<WelcomePages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsetsDirectional.symmetric(
                    horizontal: 50, vertical: 10),
                child: Image.asset(
                  "assets/images/circle.png",
                  color: context.theme.blueColor,
                ),
              ),
            ),
          ),
          const SizedBox(height: 40),
          Expanded(
            child: Column(
              children: [
                Text(
                  "Welcome to WhatsApp",
                  style: TextStyle(
                    color: context.theme.circleImageColor,
                    fontSize: 21,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                // Title
                const PrivacyAndTerms(),
                // Button
                CustomElevatedButton(
                  onPressed: () {},
                  text: "Agree and Continue",
                ),
                const SizedBox(height: 30),
                // LanguageButton
                const LanguageButton()
              ],
            ),
          )
        ],
      ),
    );
  }
}
