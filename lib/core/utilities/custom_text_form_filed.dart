import 'package:flutter/material.dart';
import 'package:tabib_app/core/extension/app_extension.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({super.key,  this.controller, required this.hintText,  this.keyboardType});
  final TextEditingController? controller;
  final String hintText;
  final TextInputType? keyboardType;

  @override
  Widget build(BuildContext context) {
    final theme=context.appTheme;
    return Directionality(
      textDirection: TextDirection.rtl, 
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(24.0), // Creates the smooth rounded corners
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.15),
              spreadRadius: 1,
              blurRadius: 10,
              offset: const Offset(0, 4), // Replicates the soft bottom shadow
            ),
          ],
        ),
        child: TextFormField(
          textAlign: TextAlign.right, // Keeps text aligned to the right
          keyboardType: keyboardType,
          controller: controller,
          style:theme.regular14,
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: theme.regular14.copyWith(color: theme.textColor200),
            contentPadding: const EdgeInsets.all(16.0),
            border: InputBorder.none,
            enabledBorder: InputBorder.none,
            focusedBorder: InputBorder.none,
          ),
        ),
      ),
    );
  }
}