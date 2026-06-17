import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:tabib_app/core/extension/app_extension.dart';

class ReportFieldLabel extends StatelessWidget {
  final String label;
  const ReportFieldLabel({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Text(
        label.tr(),
        style: context.appTheme.regular14.copyWith(color: context.appTheme.textColor300),
      ),
    );
  }
}

class ReportTextField extends StatelessWidget {
  final String hint;
  final int maxLines;
  const ReportTextField({super.key, required this.hint, this.maxLines = 1});

  @override
  Widget build(BuildContext context) {
    final theme = context.appTheme;
    return TextField(
      maxLines: maxLines,
      decoration: InputDecoration(
        hintText: hint.tr(),
        hintStyle: theme.regular14.copyWith(color: Colors.grey[400]),
        filled: true,
        fillColor: theme.whiteColor,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: Colors.grey[200]!),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: Colors.grey[200]!),
        ),
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      ),
    );
  }
}

class ReportDropdown extends StatelessWidget {
  final String value;
  const ReportDropdown({super.key, required this.value});

  @override
  Widget build(BuildContext context) {
    final theme = context.appTheme;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        color: theme.whiteColor,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey[200]!),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(Icons.keyboard_arrow_down, color: Colors.grey[400]),
          Text(
            value.tr(),
            style: theme.regular14.copyWith(color: theme.textColor600),
          ),
        ],
      ),
    );
  }
}
