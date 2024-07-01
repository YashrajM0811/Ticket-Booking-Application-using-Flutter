import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking_application/utils/app_layout.dart';
import 'package:ticket_booking_application/utils/app_style.dart';

class IconTextWidget extends StatelessWidget {
  final IconData icon;
  final String text;
  const IconTextWidget({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: AppLayout.getHeight(12, context),
        horizontal: AppLayout.getHeight(12, context),
      ),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black38),
        borderRadius: BorderRadius.circular(
          AppLayout.getWidth(10, context),
        ),
      ),
      child: Row(
        children: [
          Icon(
            icon,
            color: Colors.black,
          ),
          Gap(AppLayout.getWidth(10, context)),
          Text(
            text,
            style: Styles.textStyle,
          )
        ],
      ),
    );
  }
}
