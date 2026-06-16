import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:tabib_app/core/constant/assets_manager.dart';
import 'package:tabib_app/core/extension/app_extension.dart';
import 'package:tabib_app/core/utilities/custom_image_view.dart';
import 'package:tabib_app/features/appointments/presentation/views/appointments_view.dart';
import 'package:tabib_app/features/home/presentation/views/home_view.dart';
import 'package:tabib_app/features/patients/presentation/views/patients_view.dart';
import 'package:tabib_app/features/profile/presentation/views/profile_view.dart';
import 'package:tabib_app/features/records/presentation/views/records_view.dart';
import 'package:tabib_app/features/reservations/presentation/views/reservations_view.dart';

class MainLayout extends StatefulWidget {
  final String role;

  const MainLayout({super.key, required this.role});

  @override
  State<MainLayout> createState() => _MainLayoutState();
}

class _MainLayoutState extends State<MainLayout> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final bool isDoctor = widget.role == 'doc';
    final theme = context.appTheme;

    final List<Widget> views = isDoctor
        ?  [
            HomeView(),
            PatientsView(),
      ReservationsView(),
            ProfileView(),
          ]
        :  [
            HomeView(),

      AppointmentsView(),
            RecordsView(),
            ProfileView(),
          ];

    final List<BottomNavigationBarItem> items = isDoctor
        ? [
            BottomNavigationBarItem(
              icon: CustomImageView(
                imagePath: AssetsManager.home,
              ),
              activeIcon: CustomImageView(
                imagePath: AssetsManager.homeActive,
              ),
              label: 'layout.navBar.home'.tr(),
            ),
            BottomNavigationBarItem(
              icon: CustomImageView(
                imagePath: AssetsManager.patients,
              ),
              activeIcon: CustomImageView(
                imagePath: AssetsManager.patientsActive,
              ),
              label: 'layout.navBar.patients'.tr(),
            ),
            BottomNavigationBarItem(
              icon: CustomImageView(
                imagePath: AssetsManager.appointments,
              ),
              activeIcon: CustomImageView(
                imagePath: AssetsManager.appointmentsActive,
              ),
              label: 'layout.navBar.appointments'.tr(),
            ),
            BottomNavigationBarItem(
              icon: CustomImageView(
                imagePath: AssetsManager.profile,
              ),
              activeIcon: CustomImageView(
                imagePath: AssetsManager.profileActive,
                color: theme.primaryColor,
              ),
              label: 'layout.navBar.profile'.tr(),
            ),
          ]
        : [
            BottomNavigationBarItem(
              icon: CustomImageView(
                imagePath: AssetsManager.home,
                color: theme.textColor300,
              ),
              activeIcon: CustomImageView(
                imagePath: AssetsManager.homeActive,
                color: theme.primaryColor,
              ),
              label: 'layout.navBar.home'.tr(),
            ),
            BottomNavigationBarItem(
              icon: CustomImageView(
                imagePath: AssetsManager.appointments,
              ),
              activeIcon: CustomImageView(
                imagePath: AssetsManager.appointmentsActive,
                color: theme.primaryColor,
              ),
              label: 'layout.navBar.reservations'.tr(),
            ),
            BottomNavigationBarItem(
              icon: CustomImageView(
                imagePath: AssetsManager.records,
                color: theme.textColor300,
              ),
              activeIcon: CustomImageView(
                imagePath: AssetsManager.recordsActive,
                color: theme.primaryColor,
              ),
              label: 'layout.navBar.records'.tr(),
            ),
            BottomNavigationBarItem(
              icon: CustomImageView(
                imagePath: AssetsManager.profile,
                color: theme.textColor300,
              ),
              activeIcon: CustomImageView(
                imagePath: AssetsManager.profileActive,
                color: theme.primaryColor,
              ),
              label: 'layout.navBar.profile'.tr(),
            ),
          ];

    return Scaffold(
      backgroundColor: theme.backgroundColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: IndexedStack(
            index: _currentIndex,
            children: views,
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) => setState(() => _currentIndex = index),
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        items: items,
      ),
    );
  }
}
