import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking_application/utils/app_layout.dart';
import 'package:ticket_booking_application/utils/app_style.dart';

class HotelScreen extends StatelessWidget {

  final Map<String, dynamic> hotel;

  const HotelScreen({Key? key, required this.hotel}): super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    print("Hotel Price is ${hotel['price']}");
    return Container(
      width: size.width* 0.6,
      height: AppLayout.getHeight(350, context),
      margin: const EdgeInsets.only(right: 17, top: 5),
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 17),
      decoration: BoxDecoration(
        color: const  Color(0xD91130CE),
        borderRadius: BorderRadius.circular(AppLayout.getHeight(12, context),),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade200,
            blurRadius: 2,
            spreadRadius: 1,
          )
        ]
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: AppLayout.getHeight(180, context),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppLayout.getHeight(12, context),),
              color: Styles.primaryColor,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  "assets/images/${hotel['image']}",
                ),
              ),
            ),
          ),
          const Gap(10),
          Text(
            "${hotel['place']}",
            style: Styles.headLineStyle2.copyWith(color: Styles.secbgColor),
            ),
          const Gap(5),
          Text(
            "${hotel['destination']}", 
            style: Styles.headLineStyle2.copyWith(color: Styles.bgColor),
            ),
            const Gap(8),
          Text(
            "\$${hotel['price']}/night", 
            style: Styles.headLineStyle1.copyWith(color: Styles.secbgColor),
            ),
        ],
      ),
    );
  }
}
