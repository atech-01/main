import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import 'package:ticket_apps/base/res/media.dart';
import 'package:ticket_apps/base/res/styles/app_styles.dart';
import 'package:ticket_apps/base/widgets/app_column_text_layout.dart';
import 'package:ticket_apps/base/widgets/app_layoutbuilder_widget.dart';
import 'package:ticket_apps/base/widgets/tickets_view.dart';
import 'package:ticket_apps/screens/home/all_json.dart';
import 'package:ticket_apps/screens/search/widgets/app_ticket_tabs.dart';
import 'package:ticket_apps/screens/ticket/ticket_positioned_circle.dart';

class TicketScreen extends StatefulWidget {
  const TicketScreen({super.key});

  @override
  State<TicketScreen> createState() => _TicketScreenState();
}

class _TicketScreenState extends State<TicketScreen> {
  late int ticketIndex = 0;
  @override
  void didChangeDependencies() {
    if (ModalRoute.of(context)!.settings.arguments != null) {
      var args = ModalRoute.of(context)!.settings.arguments as Map;
      ticketIndex = args['index'];
    }
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgcolor,
      appBar: AppBar(
        title: Center(child: Text("Tickets")),
        backgroundColor: AppStyles.bgcolor,
      ),
      body: Stack(
        children: [
          ListView(
            padding: EdgeInsets.symmetric(vertical: 0, horizontal: 12),
            children: [
              // SizedBox(height: 12),
              // Text("Tickets", style: AppStyles.headLineStyle2),
              SizedBox(height: 12),
              AppTicketTabs(firstTab: "Upcomings", secondTab: "Previous"),
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.only(left: 10),
                child: TicketsView(
                  ticket: ticketList[ticketIndex],
                  isColor: true,
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 15),
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                color: Colors.white,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppColumnTextLayout(
                          topText: "Flutter DB",
                          bottomText: "Passenger",
                          alignment: CrossAxisAlignment.start,
                          isColor: true,
                        ),
                        AppColumnTextLayout(
                          topText: "5221 36869",
                          bottomText: "password",
                          alignment: CrossAxisAlignment.end,
                          isColor: true,
                        ),
                      ],
                    ),
                    const SizedBox(height: 2),
                    AppLayoutbuilderWidget(
                      randomDivider: 15,
                      width: 5,
                      isColor: false,
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppColumnTextLayout(
                          topText: "0906806341408010990",
                          bottomText: "E-book Tickets",
                          alignment: CrossAxisAlignment.start,
                          isColor: true,
                        ),
                        AppColumnTextLayout(
                          topText: "5221",
                          bottomText: "booking Code",
                          alignment: CrossAxisAlignment.end,
                          isColor: true,
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    AppLayoutbuilderWidget(
                      randomDivider: 15,
                      width: 5,
                      isColor: false,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Image.asset(AppImage.visaImage, scale: 5),
                                Text(
                                  "  *** 2462",
                                  style: AppStyles.headLineStyle3,
                                ),
                              ],
                            ),
                            Text(
                              "Payment method",
                              style: AppStyles.headLineStyle4,
                            ),
                          ],
                        ),

                        AppColumnTextLayout(
                          topText: "\$249.99",
                          bottomText: "Price",
                          alignment: CrossAxisAlignment.end,
                          isColor: true,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 15),
                padding: EdgeInsets.symmetric(vertical: 15),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(21),
                    bottomRight: Radius.circular(21),
                  ),
                ),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  height: 70,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: BarcodeWidget(
                      data: "https://gotopup.com.ng",
                      drawText: false,
                      barcode: Barcode.code128(),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.only(left: 10),
                child: TicketsView(
                  ticket: ticketList[ticketIndex],
                  isColor: null,
                ),
              ),
            ],
          ),
          TicketPositionedCircle(),
        ],
      ),
    );
  }
}
