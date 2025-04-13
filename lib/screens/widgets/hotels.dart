import 'package:flutter/material.dart';
import 'package:ticket_apps/base/res/styles/app_styles.dart';
import 'package:ticket_apps/base/res/media.dart';

class Hotels extends StatelessWidget {
  const Hotels({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.4,
      height: 350,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: AppStyles.ticketColor,
      ),
      child: Column(
        children: [
          Container(
            height: 180,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(AppImage.logo)),
            ),
          ),
        ],
      ),
    );
  }
}
