import 'package:flutter/material.dart';
import 'package:ticket_apps/base/widgets/app_router.dart';
import 'package:ticket_apps/screens/home/all_tickets.dart';
import 'package:ticket_apps/base/bottom_nav_bar.dart';
import 'package:ticket_apps/screens/home/widgets/all_hotels.dart';
import 'package:ticket_apps/screens/home/widgets/hotel_detail.dart';
import 'package:ticket_apps/screens/profile_screen.dart';
import 'package:ticket_apps/screens/ticket/ticket_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        AppRoutes.homePage: (context) => BottomNavBar(),
        AppRoutes.allTicket: (context) => AllTickets(),
        AppRoutes.ticketScreen: (context) => TicketScreen(),
        AppRoutes.allHotels: (context) => AllHotels(),
        AppRoutes.hotelDetail: (context) => HotelDetail(),
        AppRoutes.profileScreen: (context) => ProfileScreen(),
      },
    );
  }
}
