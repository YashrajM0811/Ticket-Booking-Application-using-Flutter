import 'package:flutter/material.dart';
import 'package:ticket_booking_application/utils/app_layout.dart';
import 'package:ticket_booking_application/utils/app_style.dart';

class TicketsTabs extends StatelessWidget {
  final String firstTab;
  final String secondTab;
  const TicketsTabs({super.key, required this.firstTab, required this.secondTab});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return FittedBox(
      child: Row(
        children: [
          // Airline Tickets
          Container(
            width: size.width * 0.44,
            padding: EdgeInsets.symmetric(
                vertical: AppLayout.getHeight(10, context)),
            decoration: BoxDecoration(
              border: Border.all(color: const Color(0xD91130CE)),
              borderRadius: BorderRadius.horizontal(
                  left: Radius.circular(AppLayout.getHeight(20, context))),
              color: const Color(0xD91130CE),
            ),
            child: Center(
              child: Text(
               firstTab,
                style: TextStyle(color: Styles.bgColor),
              ),
            ),
          ),
          // Hotels
          Container(
            width: size.width * 0.44,
            padding: EdgeInsets.symmetric(
                vertical: AppLayout.getHeight(10, context)),
            decoration: BoxDecoration(
              border: Border.all(color: const Color(0xD91130CE)),
              borderRadius: BorderRadius.horizontal(
                  right: Radius.circular(AppLayout.getHeight(50, context))),
              color: Colors.transparent,
            ),
            child: Center(
              child: Text(
                secondTab,
                style: const TextStyle(color: Color(0xD91130CE)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
