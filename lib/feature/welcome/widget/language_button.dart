import 'package:flutter/material.dart';
import 'package:whatsapp_clone/common/extension/custom_theme_extension.dart';
import 'package:whatsapp_clone/common/utils/coloors.dart';
import 'package:whatsapp_clone/common/widgets/custom_icon_button.dart';

class LanguageButton extends StatelessWidget {
  const LanguageButton({
    super.key,
  });

  showBottomSheet(context) {
    return showModalBottomSheet(
      context: context,
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Column(
            children: [
              Container(
                height: 4,
                width: 30,
                decoration: BoxDecoration(
                    color: context.theme.greyColor,
                    borderRadius: BorderRadius.circular(5)),
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  CustomIconButton(
                    onTap: () => Navigator.pop(context),
                    icon: Icons.close_outlined,
                    iconSize: 22,
                    iconColor: Coloors.greyDark,
                  ),
                  const SizedBox(width: 10),
                  const Text(
                    "App language",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  )
                ],
              ),
              const SizedBox(height: 10),
              Divider(
                color: context.theme.greyColor!.withOpacity(0.3),
                thickness: .5,
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      RadioListTile(
                        value: true,
                        groupValue: true,
                        onChanged: (value) {},
                        activeColor: Coloors.greenDark,
                        title: const Text("English"),
                        subtitle: Text(
                          "(phone's language)",
                          style: TextStyle(color: context.theme.greyColor),
                        ),
                      ),
                      RadioListTile(
                        value: false,
                        groupValue: true,
                        onChanged: (value) {},
                        activeColor: Coloors.greenDark,
                        title: const Text("VietNam"),
                        subtitle: Text(
                          "Việt Nam",
                          style: TextStyle(color: context.theme.greyColor),
                        ),
                      ),
                      RadioListTile(
                        value: false,
                        groupValue: true,
                        onChanged: (value) {},
                        activeColor: Coloors.greenDark,
                        title: const Text("China"),
                        subtitle: Text(
                          "中国",
                          style: TextStyle(color: context.theme.greyColor),
                        ),
                      ),
                      RadioListTile(
                        value: false,
                        groupValue: true,
                        onChanged: (value) {},
                        activeColor: Coloors.greenDark,
                        title: const Text("Taiwan"),
                        subtitle: Text(
                          "臺灣",
                          style: TextStyle(color: context.theme.greyColor),
                        ),
                      ),
                      RadioListTile(
                        value: false,
                        groupValue: true,
                        onChanged: (value) {},
                        activeColor: Coloors.greenDark,
                        title: const Text("Russia"),
                        subtitle: Text(
                          "Россия",
                          style: TextStyle(color: context.theme.greyColor),
                        ),
                      ),
                      RadioListTile(
                        value: false,
                        groupValue: true,
                        onChanged: (value) {},
                        activeColor: Coloors.greenDark,
                        title: const Text("Japan"),
                        subtitle: Text(
                          "日本",
                          style: TextStyle(color: context.theme.greyColor),
                        ),
                      ),
                      RadioListTile(
                        value: false,
                        groupValue: true,
                        onChanged: (value) {},
                        activeColor: Coloors.greenDark,
                        title: const Text("Laos"),
                        subtitle: Text(
                          "ລາວ",
                          style: TextStyle(color: context.theme.greyColor),
                        ),
                      ),
                      RadioListTile(
                        value: false,
                        groupValue: true,
                        onChanged: (value) {},
                        activeColor: Coloors.greenDark,
                        title: const Text("Thailand"),
                        subtitle: Text(
                          "ประเทศไทย",
                          style: TextStyle(color: context.theme.greyColor),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: context.theme.langBtnBgColor,
      borderRadius: BorderRadius.circular(20),
      child: InkWell(
        onTap: () => showBottomSheet(context),
        borderRadius: BorderRadius.circular(20),
        highlightColor: context.theme.langBtnHighlightColor,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 8,
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                Icons.language_outlined,
                color: context.theme.blueColor,
              ),
              const SizedBox(width: 10),
              const Text(
                "English",
                style: TextStyle(color: Coloors.greyDark),
              ),
              const SizedBox(width: 10),
              const Icon(
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
