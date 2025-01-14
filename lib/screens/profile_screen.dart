import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking_application/utils/app_layout.dart';
import 'package:ticket_booking_application/utils/app_style.dart';
import 'package:ticket_booking_application/widgets/column_layout_widget.dart';
import 'package:ticket_booking_application/widgets/layout_builder_widget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: AppLayout.getHeight(20, context),
          vertical: AppLayout.getHeight(20, context),
        ),
        children: [
          Gap(
            AppLayout.getHeight(40, context),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: AppLayout.getHeight(86, context),
                width: AppLayout.getHeight(86, context),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black38),
                  borderRadius: BorderRadius.circular(
                    AppLayout.getHeight(10, context),
                  ),
                  image: const DecorationImage(
                    image: AssetImage("assets/images/logo.png"),
                  ),
                ),
              ),
              Gap(
                AppLayout.getHeight(10, context),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Book Tickets",
                    style: Styles.headLineStyle1,
                  ),
                  Gap(
                    AppLayout.getHeight(2, context),
                  ),
                  Text(
                    "New York",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey.shade500),
                  ),
                  Gap(
                    AppLayout.getHeight(8, context),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: AppLayout.getHeight(3, context),
                        vertical: AppLayout.getHeight(3, context)),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                            AppLayout.getHeight(100, context)),
                        color: const Color(0xFFFEF4F3)),
                    child: Row(children: [
                      Container(
                        padding:
                            EdgeInsets.all(AppLayout.getHeight(3, context)),
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xFF526799),
                        ),
                        child: const Icon(
                          FluentSystemIcons.ic_fluent_shield_filled,
                          color: Colors.white,
                          size: 15,
                        ),
                      ),
                      Gap(
                        AppLayout.getHeight(6, context),
                      ),
                      const Text(
                        "Premium Status",
                        style: TextStyle(
                            color: Color(0xFF526799),
                            fontWeight: FontWeight.w600),
                      ),
                    ]),
                  ),
                ],
              ),
              const Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  InkWell(
                      onTap: () {
                        print("Your tapped on Edit button");
                      },
                      child: Text(
                        "Edit",
                        style: Styles.textStyle.copyWith(
                          color: Styles.primaryColor,
                          fontWeight: FontWeight.w300,
                        ),
                      ))
                ],
              )
            ],
          ),
          Gap(AppLayout.getHeight(8, context)),
          Divider(
            color: Colors.grey.shade300,
          ),
          Gap(AppLayout.getHeight(8, context)),
          Stack(
            children: [
              Container(
                height: AppLayout.getHeight(90, context),
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 86, 113, 209),
                    borderRadius: BorderRadius.circular(
                        AppLayout.getHeight(18, context))),
              ),
              Positioned(
                right: -45,
                top: -40,
                child: Container(
                  padding: EdgeInsets.all(AppLayout.getHeight(30, context)),
                  decoration: BoxDecoration(
                      color: Colors.transparent,
                      shape: BoxShape.circle,
                      border:
                          Border.all(width: 18, color: Styles.primaryColor)),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                    horizontal: AppLayout.getHeight(25, context),
                    vertical: AppLayout.getHeight(17, context)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      maxRadius: 25,
                      backgroundColor: Colors.white,
                      child: Icon(
                        FluentSystemIcons.ic_fluent_lightbulb_filament_filled,
                        color: Styles.primaryColor,
                        size: 27,
                      ),
                    ),
                    Gap(AppLayout.getHeight(14, context)),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "You\'ve got a new reward",
                          style: Styles.headLineStyle2.copyWith(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                        Text(
                          "You\'ve 95 flights this year",
                          style: Styles.headLineStyle2.copyWith(
                              fontWeight: FontWeight.bold,
                              color: Colors.white.withOpacity(0.90),
                              fontSize: 16),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
          Gap(AppLayout.getHeight(25, context)),
          Text("Accumlated Miles", style: Styles.headLineStyle2),
          Gap(AppLayout.getHeight(14, context)),
          Container(
            padding: EdgeInsets.symmetric(
                horizontal: AppLayout.getHeight(15, context)),
            decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.circular(AppLayout.getHeight(18, context)),
                color: Styles.bgColor,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade200,
                    blurRadius: 1,
                    spreadRadius: 1,
                  )
                ]),
            child: Column(
              children: [
                Gap(AppLayout.getHeight(15, context)),
                Text(
                  "192802",
                  style: TextStyle(
                      fontSize: 45,
                      color: Styles.textColor,
                      fontWeight: FontWeight.w600),
                ),
                Gap(AppLayout.getHeight(20, context)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Miles Accured",
                      style: Styles.headLineStyle4.copyWith(fontSize: 16),
                    ),
                    Text(
                      "15 March 2023",
                      style: Styles.headLineStyle4.copyWith(fontSize: 16),
                    )
                  ],
                ),
                Gap(AppLayout.getHeight(4, context)),
                Divider(
                  color: Colors.grey.shade300,
                ),
                Gap(AppLayout.getHeight(4, context)),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ColumnLayout(
                      firstText: "23 042",
                      secText: "Miles",
                      alignment: CrossAxisAlignment.start,
                      isColor: false,
                    ),
                    ColumnLayout(
                      firstText: "Airline CO",
                      secText: "Received from",
                      alignment: CrossAxisAlignment.end,
                      isColor: false,
                    )
                  ],
                ),
                Gap(AppLayout.getHeight(12, context)),
                const LayoutBuilderWidget(
                  sections: 12,
                  isColor: false,
                ),
                Gap(AppLayout.getHeight(12, context)),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ColumnLayout(
                      firstText: "24",
                      secText: "Miles",
                      alignment: CrossAxisAlignment.start,
                      isColor: false,
                    ),
                    ColumnLayout(
                      firstText: "McDoanald\'s",
                      secText: "Received from",
                      alignment: CrossAxisAlignment.end,
                      isColor: false,
                    )
                  ],
                ),
                Gap(AppLayout.getHeight(12, context)),
                const LayoutBuilderWidget(
                  sections: 12,
                  isColor: false,
                ),
                Gap(AppLayout.getHeight(12, context)),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ColumnLayout(
                      firstText: "54 340",
                      secText: "Miles",
                      alignment: CrossAxisAlignment.start,
                      isColor: false,
                    ),
                    ColumnLayout(
                      firstText: "DBestech",
                      secText: "Received from",
                      alignment: CrossAxisAlignment.end,
                      isColor: false,
                    )
                  ],
                ),
              ],
            ),
          ),
          Gap(AppLayout.getHeight(25, context)),
          InkWell(
            onTap: (){
              print("You are tapped on profile {how to get more miles}");
            },
            child: Center(
              child: Text(
                "How to get more miles",
                style: Styles.textStyle.copyWith(
                    color: Styles.primaryColor, fontWeight: FontWeight.w500),
              ),
            ),
          )
        ],
      ),
    );
  }
}
