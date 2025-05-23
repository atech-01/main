import 'package:flutter/material.dart';
import 'package:ticket_apps/base/res/styles/app_styles.dart';

class AppTextIcons extends StatelessWidget {
  final IconData icon;
  final String text;
  const AppTextIcons({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 12, horizontal: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),

      child: Row(
        children: [
          Icon(icon, color: AppStyles.planColor),
          const SizedBox(width: 10),
          Text(text),
        ],
      ),
    );
  }
}
