import 'package:flutter/material.dart';
import 'package:tabib_app/core/extension/app_extension.dart';

class PatientReportHeader extends StatelessWidget {
  final String name;
  final String id;
  final String date;
  final String time;
  final String image;

  const PatientReportHeader({
    super.key,
    required this.name,
    required this.id,
    required this.date,
    required this.time,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    final theme = context.appTheme;
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: theme.whiteColor,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.grey[100]!),
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              image,
              width: 50,
              height: 50,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 12),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: theme.bold18.copyWith(fontSize: 16, color: theme.textColor600),
              ),
              const SizedBox(height: 4),
              Text(
                "ID: #$id",
                style: theme.regular14.copyWith(color: theme.textColor300),
              ),
            ],
          ),
          const Spacer(),
          Text(
            "$date • $time",
            style: theme.regular12.copyWith(color: theme.textColor300),
          ),
        ],
      ),
    );
  }
}
