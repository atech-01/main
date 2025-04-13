import 'package:flutter/material.dart';
import 'package:ticket_apps/base/res/styles/app_styles.dart';
// import 'package:ticket_apps/base/res/media.dart';

class Hotels extends StatelessWidget {
  final Map<String, dynamic> hotel;
  const Hotels({super.key, required this.hotel});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(right: 20),
      padding: EdgeInsets.all(8.8),
      width: size.width * 0.4,
      height: 350,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: AppStyles.ticketColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 180,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/image/${hotel['image']}"),
              ),
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: EdgeInsets.only(left: 15),
            child: Text(
              hotel['place'],
              style: AppStyles.headLineStyle2.copyWith(
                color: AppStyles.kakiColor,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 15),
            child: Text(
              hotel['destination'],
              style: AppStyles.headLineStyle3.copyWith(color: Colors.white),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 15),
            child: Text(
              "\$${hotel['price']}/night",
              style: AppStyles.headLineStyle2.copyWith(
                color: AppStyles.kakiColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
