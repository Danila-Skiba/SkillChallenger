import 'package:flutter/material.dart';

import '../../../ui/ui.dart';

class CustomCheckBox extends StatelessWidget {
  const CustomCheckBox({
    super.key,
    required String selectedGender,
    required this.checkController,
    this.text = "",
    this.image,
    this.iconData,
  }) : _selectedGender = selectedGender;

  final String _selectedGender;
  final String checkController;
  final String text;
  final Image? image;
  final IconData? iconData;

  @override
  Widget build(BuildContext context) {
    return AppBaseContainer(
      height: 100,
      width: 100,
      widthBorder: 2,
      shadow: false,
      borderColor:
          _selectedGender == checkController ? primaryColorDark : hintTextColor,
      color: Colors.white,
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      radius: 15,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          if (image != null) image!,
          if (iconData != null)
            Icon(
              iconData,
              color:
                  _selectedGender == checkController
                      ? checkController == 'male'
                          ? genderActiveIconColorMen
                          : checkController == 'female'
                          ? genderActiveIconColorWomen
                          : genderActiveIconColorAny
                      : hintTextColor,
            ),
          SizedBox(width: 5),
          Text(
            text,
            style: bodyMedium.copyWith(
              color:
                  _selectedGender == checkController
                      ? primaryColor
                      : hintTextColor,
            ),
          ),
        ],
      ),
    );
  }
}
