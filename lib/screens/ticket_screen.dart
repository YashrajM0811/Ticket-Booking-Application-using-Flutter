import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking_application/components/ticket_view.dart';
import 'package:ticket_booking_application/utils/app_info_list.dart';
import 'package:ticket_booking_application/utils/app_layout.dart';
import 'package:ticket_booking_application/utils/app_style.dart';
import 'package:ticket_booking_application/widgets/column_layout_widget.dart';
import 'package:ticket_booking_application/widgets/layout_builder_widget.dart';
import 'package:ticket_booking_application/widgets/tickets_tabs.dart';
import 'package:barcode_widget/barcode_widget.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      body: Stack(
        children: [
          ListView(
            padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(20, context), vertical: AppLayout.getHeight(20, context)),
            children: [
              Gap(AppLayout.getHeight(40, context)),
              Text(
                'Tickets',
                style: Styles.headLineStyle1,
              ),
              Gap(AppLayout.getHeight(20, context)),
              const TicketsTabs(firstTab: 'Upcoming', secondTab: 'Previous'),
              Gap(AppLayout.getHeight(20, context)),
              Container(
                padding: EdgeInsets.only(left: AppLayout.getHeight(15, context)),
                child: TicketView(ticket: ticketList[0], isColor: true,),
              ),
              SizedBox(
                height: AppLayout.getHeight(1, context),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(15, context), vertical: AppLayout.getHeight(20, context)),
                margin: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(15, context)),
                child: Column(
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      ColumnLayout( firstText: "Flutter DB", secText: "Passenger", alignment: CrossAxisAlignment.start, isColor: false,),
                      ColumnLayout( firstText: "5221 364869", secText: "Passport", alignment: CrossAxisAlignment.end, isColor: false,),
                    ],),
                     Gap(AppLayout.getHeight(20, context)),
                    const LayoutBuilderWidget(sections: 15, isColor: false, width: 5,),
                     Gap(AppLayout.getHeight(20, context)),
                     const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      ColumnLayout( firstText: "0055 444 14478", secText: "Number of E-ticket", alignment: CrossAxisAlignment.start, isColor: false,),
                      ColumnLayout( firstText: "B2SG28", secText: "Booking Code", alignment: CrossAxisAlignment.end, isColor: false,),
                    ],),
                   Gap(AppLayout.getHeight(20, context)),
                    const LayoutBuilderWidget(sections: 15, isColor: false, width: 5,),
                     Gap(AppLayout.getHeight(20, context)),
                     Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  "assets/images/visa_card.png", 
                                  scale: 11,
                                ),
                                Text(
                                  "**** 2632",
                                  style: Styles.headLineStyle4,
                                )
                              ],
                            ),
                            Gap(AppLayout.getHeight(5, context)),
                            Text(
                              "Payment Method",
                              style: Styles.headLineStyle4,
                            )
                          ],
                        ),
                         const ColumnLayout( firstText: "\$259.59", secText: "Price", alignment: CrossAxisAlignment.end, isColor: false,),
                      ],
                     ),
                  ],
                ),
              ),
              SizedBox(
                height: AppLayout.getHeight(1, context),
              ),
              Container(
                margin: EdgeInsets.only(left: AppLayout.getHeight(15, context), right: AppLayout.getHeight(15, context)),
                padding: EdgeInsets.only(top:  AppLayout.getHeight(20, context), bottom:  AppLayout.getHeight(20, context)),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(AppLayout.getHeight(21, context),),
                    bottomRight: Radius.circular(AppLayout.getHeight(21, context),)
                  )
                ),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(15, context)),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(AppLayout.getHeight(15, context)),
                    child: BarcodeWidget(
                      barcode: Barcode.code128(),
                      data: 'https://github.com/YashrajM0811',
                      drawText: false,
                      color: Styles.textColor,
                      width: double.infinity,
                      height: 70,
                    ),
                  ),
                ),
              ),
              Gap(AppLayout.getHeight(20, context)),
              Container(
                padding: EdgeInsets.only(left: AppLayout.getHeight(15, context)),
                child: TicketView(ticket: ticketList[1],),
              ),
            ],

          ),
          Positioned(
          left: AppLayout.getHeight(22, context),
          top: AppLayout.getHeight(295, context),
          child: Container(
            padding: EdgeInsets.all(AppLayout.getHeight(3, context)),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Styles.textColor, width: 2)
            ),
            child: CircleAvatar(
              maxRadius: 4,
              backgroundColor: Styles.textColor,
            ),
          ),
        ),
        Positioned(
          right: AppLayout.getHeight(22, context),
          top: AppLayout.getHeight(295, context),
          child: Container(
            padding: EdgeInsets.all(AppLayout.getHeight(3, context)),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Styles.textColor, width: 2)
            ),
            child: CircleAvatar(
              maxRadius: 4,
              backgroundColor: Styles.textColor,
            ),
          ),
        )
        ],
      ),
    );
  }
}