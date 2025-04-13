import 'package:flutter/material.dart';

class AppTicketTabs extends StatelessWidget {
  const AppTicketTabs({super.key});

  @override
  Widget build(BuildContext context) {
    // final size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: Color(0xFFF4F6FD),
      ),
      child: Row(
        children: [
          AppTab(tabText: "All Tickets"),
          AppTab(tabText: "Hotels", tabColor: true, tabBorder: true),
        ],
      ),
    );
  }
}

class AppTab extends StatelessWidget {
  final bool tabBorder;
  final String tabText;
  final bool tabColor;
  const AppTab({
    super.key,
    required this.tabText,
    this.tabColor = false,
    this.tabBorder = false,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.symmetric(vertical: 7),
      width: size.width * 0.44,
      decoration: BoxDecoration(
        borderRadius:
            tabBorder == false
                ? BorderRadius.horizontal(left: Radius.circular(50))
                : BorderRadius.horizontal(right: Radius.circular(50)),
        color: tabColor == false ? Colors.white : Colors.transparent,
      ),
      child: Center(child: Text(tabText)),
    );
  }
}
