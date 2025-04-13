import 'package:flutter/material.dart';
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
                        (singleTicket) => Container(
                          margin: EdgeInsets.only(bottom: 20),
                          child: TicketsView(
                            ticket: singleTicket,
                            wholeScreen: true,
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
