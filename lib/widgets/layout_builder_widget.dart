import 'package:flutter/material.dart';
import 'package:ticket_booking_application/utils/app_layout.dart';

class LayoutBuilderWidget extends StatelessWidget {
  final bool? isColor;
  final double width;
  final int sections;
  const LayoutBuilderWidget(
      {super.key, this.isColor, required this.sections, this.width = 3});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      return Flex(
        direction: Axis.horizontal,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        children: List.generate(
            (constraints.constrainWidth() / sections).floor(),
            (index) => SizedBox(
                  width: width,
                  height: AppLayout.getHeight(1, context),
                  child: DecoratedBox(
                      decoration: BoxDecoration(
                          color: isColor == null
                              ? Colors.white
                              : Colors.grey.shade500)),
                )),
      );
    });
  }
}
