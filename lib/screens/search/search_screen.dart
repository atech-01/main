import 'package:flutter/material.dart';
import 'package:ticket_apps/base/res/media.dart';
import 'package:ticket_apps/base/res/styles/app_styles.dart';
import 'package:ticket_apps/base/widgets/app_double_text.dart';
import 'package:ticket_apps/screens/search/widgets/app_text_icons.dart';
import 'package:ticket_apps/screens/search/widgets/app_ticket_tabs.dart';
import 'package:ticket_apps/screens/search/widgets/find_ticket.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppStyles.bgcolor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: [
          SizedBox(height: 50),
          Text(
            "What are\n you looking for?",
            style: AppStyles.headLineStyle1.copyWith(fontSize: 20),
          ),
          const SizedBox(height: 20),
          AppTicketTabs(),
          const SizedBox(height: 20),
          AppTextIcons(icon: Icons.flight_takeoff_rounded, text: "Departure"),
          const SizedBox(height: 15),
          AppTextIcons(icon: Icons.flight_land_rounded, text: "Arrival"),
          const SizedBox(height: 25),
          FindTicket(),
          const SizedBox(height: 25),
          AppDoubleText(
            bigText: "Upcoming Flights",
            smallText: "View all",
            func: () => Navigator.pushNamed(context, "all_tickets"),
          ),
          const SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 7, horizontal: 7),
                width: size.width * 0.40,
                height: 435,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.green.shade200,
                      blurRadius: 1,
                      spreadRadius: 1,
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 12,
                      ),
                      height: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(AppImage.hotelRoom),
                        ),
                      ),
                    ),
                    const SizedBox(height: 15),
                    Text(
                      "20% discount for the early booking for this flight, Don't miss",
                      style: AppStyles.headLineStyle2,
                    ),
                  ],
                ),
              ),

              Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(
                          vertical: 15,
                          horizontal: 15,
                        ),
                        height: 210,
                        width: size.width * 0.44,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Color(0xFF3AB8B8),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Discount\nfor Survey",
                              style: AppStyles.headLineStyle3.copyWith(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              "Take Survey of our service and get discount",
                              style: AppStyles.headLineStyle3.copyWith(
                                fontWeight: FontWeight.w500,
                                fontSize: 18,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        top: -45,
                        right: -40,
                        child: Container(
                          padding: EdgeInsets.all(30),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              width: 20,
                              color: AppStyles.positionColor,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),
                  Container(
                    width: size.width * .44,
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    height: 210,
                    decoration: BoxDecoration(
                      color: Color(0xFFEC6545),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      children: [
                        Text(
                          "Take Love\n🥰🥰\n🥰🥰",
                          style: AppStyles.headLineStyle2.copyWith(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
