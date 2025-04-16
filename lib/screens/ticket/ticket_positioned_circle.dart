import 'package:flutter/material.dart';
import 'package:ticket_apps/base/res/styles/app_styles.dart';

class TicketPositionedCircle extends StatelessWidget {
  const TicketPositionedCircle({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: const [
        Positioned(left: 18, top: 250, child: _Circle()),
        Positioned(right: 18, top: 250, child: _Circle()),
      ],
    );
  }
}

class _Circle extends StatelessWidget {
  const _Circle();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(3),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(width: 3, color: AppStyles.textColor),
      ),
      child: CircleAvatar(maxRadius: 4, backgroundColor: AppStyles.textColor),
    );
  }
}
