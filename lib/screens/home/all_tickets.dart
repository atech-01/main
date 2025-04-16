import 'package:flutter/material.dart';
import 'package:ticket_apps/base/widgets/app_router.dart';
import 'package:ticket_apps/base/widgets/tickets_view.dart';
import 'package:ticket_apps/screens/home/all_json.dart';

class AllTickets extends StatelessWidget {
  const AllTickets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SizedBox(child: Center(child: Text("All Tickets"))),
      ),
      body: ListView(
        children: [
          SingleChildScrollView(
            child: Column(
              children:
                  ticketList
                      .map(
                        (singleTicket) => GestureDetector(
                          onTap: () {
                            var index = ticketList.indexOf(singleTicket);
                            Navigator.pushNamed(
                              context,
                              AppRoutes.ticketScreen,
                              arguments: {"index": index},
                            );
                            // debugPrint("I am tapped on ${index}");
                          },
                          child: Container(
                            margin: EdgeInsets.only(bottom: 20),
                            child: TicketsView(
                              ticket: singleTicket,
                              wholeScreen: true,
                            ),
                          ),
                        ),
                      )
                      .toList(),
            ),
          ),
        ],
      ),
    );
  }
}
