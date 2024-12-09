import 'package:flutter/material.dart';
import 'package:whatsapp_clone/common/utils/coloors.dart';

class LanguageButton extends StatelessWidget {
  const LanguageButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: const Color(0xFF182229),
      borderRadius: BorderRadius.circular(20),
      child: InkWell(
        onTap: () {},
        borderRadius: BorderRadius.circular(20),
        highlightColor: const Color(0xFF09141A),
        child: const Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 8,
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                Icons.language_outlined,
                color: Coloors.greenDark,
              ),
              SizedBox(width: 10),
              Text(
                "English",
                style: TextStyle(color: Coloors.greyDark),
              ),
              SizedBox(width: 10),
              Icon(
                Icons.keyboard_arrow_down_outlined,
                color: Coloors.greenDark,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
