import 'package:flutter/material.dart';
import 'package:whatsapp_clone/common/utils/coloors.dart';

class PrivacyAndTerms extends StatelessWidget {
  const PrivacyAndTerms({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
      child: RichText(
        textAlign: TextAlign.center,
        text: const TextSpan(
          text: "Read our",
          style: TextStyle(
            color: Coloors.greyDark,
            height: 1.5,
          ),
          children: [
            TextSpan(
              text: "Privacy Policy. ",
              style: TextStyle(
                color: Coloors.blueDark,
              ),
            ),
            TextSpan(text: 'Tap "Agree and continue" to accept the '),
            TextSpan(
              text: "Terms of Services.",
              style: TextStyle(
                color: Coloors.blueDark,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
