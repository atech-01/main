import 'package:flutter/material.dart';
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
          Text(
            "What are\n you looking for?",
            style: AppStyles.headLineStyle1.copyWith(fontSize: 30),
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
          const SizedBox(height: 25),
          Row(
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 12, horizontal: 12),
                width: size.width * .42,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(50),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.green.shade200,
                      blurRadius: 1,
                      spreadRadius: 1,
                    ),
                  ],
                ),
                child: Text("A Long Text"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
