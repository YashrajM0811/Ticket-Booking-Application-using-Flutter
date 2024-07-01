import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get_utils/src/platform/platform.dart';
import 'package:ticket_booking_application/utils/app_layout.dart';
import 'package:ticket_booking_application/utils/app_style.dart';
import 'package:ticket_booking_application/widgets/layout_builder_widget.dart';
import 'package:ticket_booking_application/widgets/thick_container.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  final bool? isColor;
  const TicketView({Key? key, required this.ticket, this.isColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    print("Hotel Price is ${ticket['from/code']}");
    return SizedBox(
      width: size.width * 0.90,
      height: AppLayout.getHeight(
          GetPlatform.isAndroid == true ? 172 : 169, context),
      child: Container(
        margin: EdgeInsets.only(
          right: AppLayout.getHeight(16, context),
        ),
        child: Column(children: [
          // Blue Part
          Container(
            decoration: BoxDecoration(
                color:
                    isColor == null ? Styles.primaryColor : Colors.transparent,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(
                    AppLayout.getHeight(16, context),
                  ),
                  topRight: Radius.circular(
                    AppLayout.getHeight(21, context),
                  ),
                ),
                border: Border.all(
                    color:
                        isColor == null ? Colors.transparent : Colors.black12)),
            padding: EdgeInsets.all(
              AppLayout.getHeight(16, context),
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      ticket['from']['code'],
                      style: isColor == null
                          ? Styles.headLineStyle3.copyWith(color: Colors.white)
                          : Styles.headLineStyle3,
                    ),
                    Expanded(child: Container()),
                    const ThickContainer(
                      isColor: true,
                    ),
                    Expanded(
                        child: Stack(children: [
                      SizedBox(
                        height: AppLayout.getHeight(24, context),
                        child: LayoutBuilder(
                          builder: (BuildContext context,
                              BoxConstraints constraints) {
                            return Flex(
                              direction: Axis.horizontal,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              mainAxisSize: MainAxisSize.max,
                              children: List.generate(
                                (constraints.constrainWidth() / 6).floor(),
                                (index) => SizedBox(
                                  width: AppLayout.getWidth(3, context),
                                  height: AppLayout.getHeight(1, context),
                                  child: DecoratedBox(
                                    decoration: BoxDecoration(
                                        color: isColor == null
                                            ? Colors.white
                                            : Colors.grey.shade500),
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      Center(
                        child: Transform.rotate(
                          angle: 1.5,
                          child: Icon(
                            Icons.local_airport_rounded,
                            color:
                                isColor == null ? Colors.white : Colors.black,
                          ),
                        ),
                      ),
                    ])),
                    const ThickContainer(
                      isColor: true,
                    ),
                    Expanded(child: Container()),
                    Text(
                      ticket['to']['code'],
                      style: isColor == null
                          ? Styles.headLineStyle3.copyWith(color: Colors.white)
                          : Styles.headLineStyle3,
                    ),
                  ],
                ),
                const Gap(3),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: AppLayout.getWidth(100, context),
                      child: Text(
                        ticket['from']['name'],
                        style: isColor == null
                            ? Styles.headLineStyle4
                                .copyWith(color: Colors.white)
                            : Styles.headLineStyle4
                                .copyWith(color: Colors.black),
                      ),
                    ),
                    Text(
                      "${ticket['flying-time']}",
                      style: isColor == null
                          ? Styles.headLineStyle3.copyWith(color: Colors.white)
                          : Styles.headLineStyle3,
                    ),
                    SizedBox(
                      width: AppLayout.getWidth(100, context),
                      child: Text(
                        ticket['to']['name'],
                        textAlign: TextAlign.end,
                        style: isColor == null
                            ? Styles.headLineStyle4
                                .copyWith(color: Colors.white)
                            : Styles.headLineStyle4
                                .copyWith(color: Colors.black),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),

          // Orange Divider Part
          Container(
            color: isColor == null ? Styles.orangeColor : Colors.transparent,
            child: Row(
              children: [
                SizedBox(
                  height: AppLayout.getHeight(20, context),
                  width: AppLayout.getWidth(10, context),
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      color:
                          isColor == null ? Colors.white : Colors.transparent,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(
                          AppLayout.getHeight(10, context),
                        ),
                        bottomRight: Radius.circular(
                          AppLayout.getHeight(10, context),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                    child: Padding(
                        padding: EdgeInsets.all(
                          AppLayout.getHeight(12.0, context),
                        ),
                        child: const LayoutBuilderWidget(
                          sections: 6,
                        ))),
                SizedBox(
                  height: AppLayout.getHeight(20, context),
                  width: AppLayout.getWidth(10, context),
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                        color:
                            isColor == null ? Colors.white : Colors.transparent,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(
                            AppLayout.getHeight(10, context),
                          ),
                          bottomLeft: Radius.circular(
                            AppLayout.getHeight(10, context),
                          ),
                        )),
                  ),
                ),
              ],
            ),
          ),

          // Orange Part
          Container(
            decoration: BoxDecoration(
              color: isColor == null ? Styles.orangeColor : Colors.transparent,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(
                  AppLayout.getHeight(isColor == null ? 21 : 0, context),
                ),
                bottomRight: Radius.circular(
                  AppLayout.getHeight(isColor == null ? 21 : 0, context),
                ),
              ),
              border: Border.all(
                  color: isColor == null ? Colors.transparent : Colors.black12),
            ),
            padding:
                const EdgeInsets.only(top: 10, left: 16, right: 16, bottom: 16),
            child: Column(
              children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "${ticket['day']}",
                            style: isColor == null
                                ? Styles.headLineStyle3
                                    .copyWith(color: Colors.white)
                                : Styles.headLineStyle3,
                          ),
                          Text(
                            "Date",
                            style: isColor == null
                                ? Styles.headLineStyle4
                                    .copyWith(color: Colors.white)
                                : Styles.headLineStyle4
                                    .copyWith(color: Colors.black),
                          )
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "${ticket['depature-time']}",
                            style: isColor == null
                                ? Styles.headLineStyle3
                                    .copyWith(color: Colors.white)
                                : Styles.headLineStyle3,
                          ),
                          Text(
                            "Departure Time",
                            style: isColor == null
                                ? Styles.headLineStyle4
                                    .copyWith(color: Colors.white)
                                : Styles.headLineStyle4
                                    .copyWith(color: Colors.black),
                          )
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            "${ticket['number']}",
                            style: isColor == null
                                ? Styles.headLineStyle3
                                    .copyWith(color: Colors.white)
                                : Styles.headLineStyle3,
                          ),
                          Text(
                            "Number",
                            style: isColor == null
                                ? Styles.headLineStyle4
                                    .copyWith(color: Colors.white)
                                : Styles.headLineStyle4
                                    .copyWith(color: Colors.black),
                          )
                        ],
                      ),
                    ]),
                const Gap(3),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
