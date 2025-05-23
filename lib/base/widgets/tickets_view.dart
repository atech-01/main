import 'package:flutter/material.dart';
import 'package:ticket_apps/base/widgets/text_style_fourth.dart';
import 'package:ticket_apps/base/widgets/app_column_text_layout.dart';
import 'package:ticket_apps/base/widgets/app_layoutbuilder_widget.dart';
import 'package:ticket_apps/base/widgets/big_circle.dart';
import 'package:ticket_apps/base/widgets/big_dot.dart';
import 'package:ticket_apps/base/res/styles/app_styles.dart';
import 'package:ticket_apps/base/widgets/text_style_third.dart';

class TicketsView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  final bool wholeScreen;
  final bool? isColor;
  const TicketsView({
    super.key,
    required this.ticket,
    this.isColor,
    this.wholeScreen = false,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width * 0.85,
      // On system
      height: 182,
      // On mobile
      // height: 189,
      child: Container(
        margin: EdgeInsets.only(right: wholeScreen == true ? 0 : 16),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: isColor == null ? AppStyles.ticketColor : Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(21),
                  topRight: Radius.circular(21),
                ),
              ),
              child: Column(
                children: [
                  // show departure and destination with icon first line
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextStyleThird(
                        text: ticket['from']['code'],
                        isColor: isColor,
                      ),
                      Expanded(child: Container()),
                      BigDot(isColor: isColor),
                      Expanded(
                        child: Stack(
                          children: [
                            SizedBox(
                              height: 24,
                              child: AppLayoutbuilderWidget(randomDivider: 6),
                            ),
                            Center(
                              child: Transform.rotate(
                                angle: 1.5,
                                child: Icon(
                                  Icons.local_airport_rounded,
                                  color:
                                      isColor == null
                                          ? Colors.white
                                          : Color(0xFFBACCF7),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      BigDot(isColor: isColor),
                      Expanded(child: Container()),
                      TextStyleFourth(
                        text: ticket['to']['code'],
                        isColor: isColor,
                      ),
                    ],
                  ),
                  const SizedBox(height: 5),

                  // show departure and destination name with time
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 100,
                        child: TextStyleFourth(
                          text: ticket['from']['name'],
                          isColor: isColor,
                        ),
                      ),
                      Expanded(child: Container()),
                      SizedBox(
                        width: 100,
                        child: TextStyleFourth(
                          text: ticket['flying_time'],
                          isColor: isColor,
                        ),
                        // Text(
                        //   "8H 30M",
                        //   style: AppStyles.headLineStyle4.copyWith(
                        //     color: Colors.white,
                        //   ),
                      ),

                      Expanded(child: Container()),
                      TextStyleFourth(
                        text: ticket['to']['name'],
                        isColor: isColor,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              // height: 20,
              color: isColor == null ? Colors.deepOrangeAccent : Colors.white,
              child: Row(
                children: [
                  BigCircle(isRight: false, isColor: isColor),
                  Expanded(
                    child: AppLayoutbuilderWidget(
                      randomDivider: 16,
                      width: 6,
                      isColor: isColor,
                    ),
                  ),
                  BigCircle(isRight: true, isColor: isColor),
                ],
              ),
            ),
            Container(
              // margin: EdgeInsets.only(right: 16),
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: isColor == null ? Colors.deepOrangeAccent : Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(isColor == null ? 21 : 0),
                  bottomRight: Radius.circular(isColor == null ? 21 : 0),
                ),
              ),
              child: Column(
                children: [
                  // show departure and destination with icon first line
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppColumnTextLayout(
                        topText: ticket['date'],
                        bottomText: "DATE",
                        alignment: CrossAxisAlignment.start,
                        isColor: isColor,
                      ),

                      AppColumnTextLayout(
                        topText: ticket['departure_time'],
                        bottomText: "Departure time",
                        alignment: CrossAxisAlignment.center,
                        isColor: isColor,
                      ),

                      AppColumnTextLayout(
                        topText: ticket['number'].toString(),
                        bottomText: "Number",
                        alignment: CrossAxisAlignment.end,
                        isColor: isColor,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
