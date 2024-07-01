import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking_application/utils/app_layout.dart';
import 'package:ticket_booking_application/utils/app_style.dart';
import 'package:ticket_booking_application/widgets/double_text_widget.dart';
import 'package:ticket_booking_application/widgets/icon_text_widget.dart';
import 'package:ticket_booking_application/widgets/tickets_tabs.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.symmetric(
            horizontal: AppLayout.getWidth(20, context),
            vertical: AppLayout.getHeight(20, context)),
        children: [
          Gap(AppLayout.getHeight(40, context)),
          Text(
            "What are \nyou looking for?",
            style: Styles.headLineStyle1
                .copyWith(fontSize: AppLayout.getWidth(35, context)),
          ),
          Gap(AppLayout.getHeight(20, context)),
          Container(
            decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black38,
                ),
                borderRadius: const BorderRadius.all(Radius.circular(20))),
            child: Column(
              children: [
                const TicketsTabs(
                  firstTab: 'Airline Tickets',
                  secondTab: 'Hotels',
                ),
                Gap(AppLayout.getHeight(25, context)),
                Container(
                  padding: EdgeInsets.symmetric(
                    // vertical: AppLayout.getHeight(18, context),
                    horizontal: AppLayout.getHeight(15, context),
                  ),
                  margin:
                      EdgeInsets.only(bottom: AppLayout.getHeight(18, context)),
                  child: Column(
                    children: [
                      const IconTextWidget(
                          icon: Icons.flight_takeoff_outlined,
                          text: "Departure"),
                      Gap(AppLayout.getHeight(15, context)),
                      const IconTextWidget(
                          icon: Icons.flight_land_rounded, text: "Arrival"),
                      Gap(AppLayout.getHeight(25, context)),
                      Container(
                        padding: EdgeInsets.symmetric(
                          vertical: AppLayout.getHeight(18, context),
                          horizontal: AppLayout.getHeight(15, context),
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            AppLayout.getWidth(10, context),
                          ),
                          color: Color(0xD91130CE),
                        ),
                        child: Center(
                          child: Text(
                            "Find Tickets",
                            style: Styles.headLineStyle3
                                .copyWith(color: Styles.bgColor),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Gap(AppLayout.getHeight(25, context)),
          const DoubleTextWidget(
              bigText: "Upcoming Flights", smallText: "View All"),
          Gap(AppLayout.getHeight(5, context)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: AppLayout.getHeight(425, context),
                width: size.width * 0.43,
                padding: EdgeInsets.symmetric(
                    horizontal: AppLayout.getHeight(10, context),
                    vertical: AppLayout.getWidth(10, context)),
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.shade200,
                          blurRadius: 1,
                          spreadRadius: 1)
                    ],
                    borderRadius: BorderRadius.circular(
                        AppLayout.getHeight(20, context))),
                child: Column(children: [
                  Container(
                    height: AppLayout.getHeight(190, context),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                          AppLayout.getHeight(12, context)),
                      image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/images/pool_view.png"),
                      ),
                    ),
                  ),
                  Gap(AppLayout.getHeight(12, context)),
                  Text(
                    "20% Discount on the early booking of this flight. Don't miss out this offer.",
                    style: Styles.headLineStyle2,
                    textAlign: TextAlign.justify,
                  )
                ]),
              ),
              Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        width: size.width * 0.43,
                        height: AppLayout.getHeight(200, context),
                        decoration: BoxDecoration(
                            color: Color(0xFF3ABBBB),
                            borderRadius: BorderRadius.circular(
                                AppLayout.getHeight(18, context))),
                        padding: EdgeInsets.symmetric(
                            horizontal: AppLayout.getHeight(15, context),
                            vertical: AppLayout.getHeight(15, context)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Discount \nfor survey",
                              style: Styles.headLineStyle2.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: Styles.bgColor),
                            ),
                            Gap(AppLayout.getHeight(10, context)),
                            Text(
                              "Take the survey about our services and get discount",
                              style: Styles.headLineStyle2.copyWith(
                                  fontWeight: FontWeight.w500,
                                  color: Styles.bgColor,
                                  fontSize: 18),
                            )
                          ],
                        ),
                      ),
                      Positioned(
                        right: -45,
                        top: -40,
                        child: Container(
                          padding:
                              EdgeInsets.all(AppLayout.getHeight(30, context)),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                  width: 18, color: Color(0xFF189999)),
                              color: Colors.transparent),
                        ),
                      )
                    ],
                  ),
                  Gap(AppLayout.getHeight(15, context)),
                  Container(
                    width: size.width * 0.44,
                    height: AppLayout.getHeight(200, context),
                    padding: EdgeInsets.symmetric(
                        horizontal: AppLayout.getHeight(15, context),
                        vertical: AppLayout.getWidth(15, context)),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        AppLayout.getHeight(18, context),
                      ),
                      color: const Color(0XFFEC6545),
                    ),
                    child: Column(
                      children: [
                        Text(
                          "Take Love ❤️",
                          style: Styles.headLineStyle2.copyWith(
                              color: Styles.bgColor,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                        Gap(AppLayout.getHeight(5, context)),
                        RichText(
                            text: const TextSpan(children: [
                          TextSpan(text: "😍", style: TextStyle(fontSize: 32)),
                          TextSpan(text: "🥰", style: TextStyle(fontSize: 38)),
                          TextSpan(text: "😘", style: TextStyle(fontSize: 32))
                        ]))
                      ],
                    ),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
