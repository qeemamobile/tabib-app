import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:tabib_app/core/extension/app_extension.dart';
import 'package:tabib_app/features/home/presentation/views/user/appointment_details_view.dart';
import 'package:tabib_app/features/home/presentation/widgets/doctor_search_card.dart';
import 'package:tabib_app/features/home/presentation/widgets/search_bar_widget.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = context.appTheme;

    return Scaffold(
      backgroundColor: theme.backgroundColor,
      appBar: AppBar(
        title: Text('home.search.title'.tr(), style: theme.bold18),
        backgroundColor: theme.backgroundColor,
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, size: 20),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: theme.whiteColor,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: theme.textColor100.withOpacity(0.5)),
                  ),
                  child: Icon(Icons.tune, color: theme.primaryColor, size: 24),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: SearchBarWidget(
                    hintText: 'home.search.hint'.tr(),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.separated(
              padding: const EdgeInsets.all(20),
              itemCount: 3,
              separatorBuilder: (context, index) => const SizedBox(height: 16),
              itemBuilder: (context, index) {
                return DoctorSearchCard(
                  name: 'appointments.drName'.tr(),
                  specialty: 'appointments.physiotherapy'.tr(),
                  rating: 4.8,
                  appointmentsCount: '+100',
                  specializations: [
                    'appointments.injuryRehabilitation'.tr(),
                    'appointments.motorRehabilitation'.tr(),
                  ],
                  date: 'Tuesday 24.12.2025',
                  time: '5:00 PM',
                  price: '120',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const AppointmentDetailsView(),
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
