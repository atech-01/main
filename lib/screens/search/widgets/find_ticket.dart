import 'package:flutter/material.dart';
import 'package:ticket_apps/base/res/styles/app_styles.dart';

class FindTicket extends StatelessWidget {
  const FindTicket({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 12, horizontal: 12),
      decoration: BoxDecoration(
        color: AppStyles.findTicketColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: Text(
          "Find Ticket",
          style: AppStyles.textStyle.copyWith(color: Colors.white),
        ),
      ),
    );
  }
}
