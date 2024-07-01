import 'package:flutter/material.dart';
import 'package:ticket_booking_application/utils/app_layout.dart';

class ThickContainer extends StatelessWidget {
  final bool ? isColor; 
  const ThickContainer({super.key, this.isColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(AppLayout.getHeight(3.0, context)),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(width: 2.5, color: isColor == null ? Colors.white :  Colors.black ),
      ),
    );
  }
}