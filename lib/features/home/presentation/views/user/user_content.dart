import 'package:flutter/material.dart';
import '../../widgets/ads_list.dart';
import '../../widgets/header_special.dart';
import '../../widgets/list_of_special_doc.dart';
import '../../widgets/meeting_section.dart';
import '../../widgets/search_bar_widget.dart';

class UserContent extends StatelessWidget {
  const UserContent({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        spacing: 16,
        children: [
          SearchBarWidget(),
           MeetingSection(

           ),
           AutoMovingAdsCarousel(),
           HeaderSpecial(
             title: "Fast specializations",
           ),
           ListOfSpecialDoc(),
           SizedBox(),
         ],
      
      ),
    );
  }
}























































