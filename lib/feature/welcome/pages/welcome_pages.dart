import 'package:flutter/material.dart';
import 'package:whatsapp_clone/common/utils/coloors.dart';
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
      backgroundColor: Coloors.backgroundDark,
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
                  color: Coloors.blueDark,
                ),
              ),
            ),
          ),
          const SizedBox(height: 40),
          Expanded(
            child: Column(
              children: [
                const Text(
                  "Welcome to WhatsApp",
                  style: TextStyle(
                    color: Coloors.greenDark,
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
