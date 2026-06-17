import 'package:flutter/material.dart';
import '../../widgets/doc_info_cart.dart';
import '../../widgets/header_special.dart';
import '../../widgets/meeting_section.dart';
import '../../widgets/request_review_doc.dart';
import '../../widgets/search_bar_widget.dart';

class DocContent extends StatelessWidget {
  const DocContent({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        spacing: 16,
        children: [
          SearchBarWidget(),
          DocDashboard(),
          MeetingSection(),
          HeaderSpecial(title: "Requests requiring review (2)"),
          RequestReviewDocCard(),
        ],
      ),
    );
  }
}
