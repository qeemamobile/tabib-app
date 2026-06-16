import 'package:flutter/material.dart';

import '../../../../core/constant/assets_manager.dart';
import '../../../../core/extension/app_extension.dart';
import '../../../../core/utilities/custom_image_view.dart';

class ListOfSpecialDoc extends StatelessWidget {
  const ListOfSpecialDoc({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100, // Height is required for horizontal ListView.builder
      child: ListView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsetsDirectional.only(end: 12),
            child: SpecialItem(),
          );
        },
      ),
    );
  }
}

class SpecialItem extends StatelessWidget {
  const SpecialItem({super.key});

  @override
  Widget build(BuildContext context) {
    final theme =context.appTheme;
    return Container(

      padding: const EdgeInsets.all(10),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        shadows: [
          BoxShadow(
            color: Color(0x19000000),
            blurRadius: 1,
            offset: Offset(0, 1),
            spreadRadius: 0,
          )
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CustomImageView(imagePath: AssetsManager.skinDoc,),

          SizedBox(
            width: 54,
            child: Text(
              'kids',
              textAlign: TextAlign.center,
              style: theme.bold12.copyWith(fontSize:14,color:theme.primaryColor500),
            ),
          ),
        ],
      ),
    );
  }
}













