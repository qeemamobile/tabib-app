import 'package:flutter/material.dart';
import 'package:tabib_app/core/extension/app_extension.dart';
import 'package:tabib_app/core/utilities/custom_image_view.dart';

import '../../../../core/constant/assets_manager.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({super.key});


  @override
  Widget build(BuildContext context) {
    final theme =context.appTheme;
    return TextField(
      onTapUpOutside: (event){
        FocusScope.of(context).unfocus();
      },
      decoration: InputDecoration(
        hintText: 'search for doctor',
        hintStyle: theme.regular14.copyWith(color: theme.textColor200),
        prefixIcon:CustomImageView(
          imagePath: AssetsManager.search,
          fit: BoxFit.scaleDown,
        ),
        filled: true,
        fillColor: Colors.white,
        contentPadding: const EdgeInsets.symmetric(
          vertical: 16.0,
          horizontal: 24.0,
        ),

        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(100.0),
          borderSide: const BorderSide(
            color: Color(0xFFE5E9F0), // Subtle light gray border
            width: 1.0,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(100.0),
          borderSide: const BorderSide(
            color: Color(0xFFE5E9F0),
            width: 1.0,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(100.0),
          borderSide:  BorderSide(
            color: theme.primaryColor
          ),
        ),
      ),
    );
  }
}