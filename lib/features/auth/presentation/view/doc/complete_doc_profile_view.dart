import 'dart:developer';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:tabib_app/core/extension/app_extension.dart';
import '../../widgets/doc/complete_doc_profile_step_one.dart';
import '../../widgets/doc/complete_doc_profile_step_two.dart';

class CompleteDocProfileView extends StatefulWidget {
  const CompleteDocProfileView({super.key});

  @override
  State<CompleteDocProfileView> createState() => _CompleteProfileViewState();
}

class _CompleteProfileViewState extends State<CompleteDocProfileView> {
  late PageController _pageController;
  int _currentPage = 0;
  @override
  void initState() {
    _pageController = PageController();
    completesProfileSteps = [
      CompleteDocProfileStepOne(pageController: _pageController),
      CompleteDocProfileStepTwo(),
    ];

    super.initState();
  }

  late final List<Widget> completesProfileSteps;
  @override
  Widget build(BuildContext context) {
    final theme = context.appTheme;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              GestureDetector(
                onTap: () {
                  log("skip");
                },
                child: Align(
                  alignment: AlignmentDirectional.topStart,
                  child: Text(
                    'auth.completeProfile.skip'.tr(),
                    textAlign: TextAlign.start,
                    style: theme.bold18.copyWith(
                      fontSize: 16,
                      color: theme.textColor200,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 40),
              SmoothPageIndicator(
                controller: _pageController, // PageController
                count: 2,
                effect: ExpandingDotsEffect(
                  dotHeight: 8,
                  dotColor: theme.primaryColor300,
                  activeDotColor: theme.primaryColor,
                ),
                onDotClicked: (index) {},
              ),
              SizedBox(height: 24),
              Expanded(
                child: PageView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  controller: _pageController,
                  onPageChanged: (value) {
                    setState(() {
                      _currentPage = value;
                    });
                  },
                  itemCount: completesProfileSteps.length,
                  itemBuilder: (context, index) {
                    return completesProfileSteps[index];
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
