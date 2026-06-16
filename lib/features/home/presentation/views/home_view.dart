import 'package:flutter/material.dart';
import 'package:tabib_app/features/home/presentation/views/user/user_content.dart';

import '../widgets/custom_app_bar_profile.dart';
import 'doc/doc_content.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final role="doctor";
    return Column(
      children: [
        CustomAppBarProfile(
          title: 'hello omar',
          subTitle: "here s' quick look at your appointments",
        ),
        Expanded(child:
        role=="user"?UserContent():DocContent()),
      ],
    );
  }
}
