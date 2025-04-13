import 'package:flutter/material.dart';
import 'package:ticket_apps/base/res/media.dart';
import 'package:ticket_apps/base/res/styles/app_styles.dart';
import 'package:ticket_apps/base/widgets/app_double_text.dart';
import 'package:ticket_apps/base/widgets/tickets_view.dart';
import 'package:ticket_apps/screens/home/all_json.dart';
import 'package:ticket_apps/screens/home/widgets/hotels.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // final TextEditingController _controller = TextEditingController();

  String greeting() {
    var hour = DateTime.now().hour;
    if (hour < 12) {
      return "Good Morning";
    } else if (hour < 17) {
      return "Good Afternoon";
    } else {
      return "Good Evening";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgcolor,
      body: ListView(
        children: [
          SizedBox(height: 50),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(greeting(), style: AppStyles.headLineStyle3),
                        SizedBox(height: 5),
                        Text("Book Tickets", style: AppStyles.headLineStyle1),
                      ],
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        // color: Colors.red,
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: AssetImage(AppImage.logo),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 25),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 12,
                  ),
                  decoration: BoxDecoration(
                    color: const Color(0xFFF4F6FD),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    // <mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.search, color: Color(0xFFBFC205)),
                      Text("Search"),
                    ],
                  ),
                ),
                const SizedBox(height: 40),
                AppDoubleText(
                  bigText: "Upcoming Flights",
                  smallText: "View all",
                  func: () => Navigator.pushNamed(context, "all_tickets"),
                ),
                const SizedBox(height: 20),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children:
                        ticketList
                            .map(
                              (singleTicket) =>
                                  TicketsView(ticket: singleTicket),
                            )
                            .toList(),
                  ),
                ),
                AppDoubleText(
                  bigText: "Hotels",
                  smallText: "View all",
                  func: () => debugPrint("Hello World"),
                ),
                const SizedBox(height: 20),
                // Hotels(),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children:
                        hotelList
                            .map((singleHotel) => Hotels(hotel: singleHotel))
                            .toList(),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
