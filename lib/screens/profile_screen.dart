// import 'dart:math';

import 'package:flutter/material.dart';
import 'package:ticket_apps/base/res/styles/app_styles.dart';
import 'package:ticket_apps/base/widgets/app_column_text_layout.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgcolor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: [
          SizedBox(height: 50),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 86,
                width: 86,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  image: DecorationImage(
                    image: AssetImage("assets/image/logo.png"),
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Book Tickets", style: AppStyles.headLineStyle2),
                  Text(
                    "Nigeria",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey.shade500,
                    ),
                  ),
                  const SizedBox(height: 7),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: Color(0xFFFEF4F3),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(3),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xFF526799),
                          ),
                          child: Icon(
                            Icons.shield,
                            color: Colors.white,
                            size: 15,
                          ),
                        ),
                        const SizedBox(width: 6),
                        Text(
                          "Premium Status",
                          style: TextStyle(
                            color: Color(0xFF526799),
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const Spacer(),
              Column(
                children: [
                  InkWell(
                    onTap: () {
                      debugPrint("I am tapped");
                    },
                    child: Text(
                      "Edit",
                      style: AppStyles.textStyle.copyWith(
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Divider(color: Colors.grey.shade200),
          SizedBox(height: 10),
          Stack(
            children: [
              Container(
                height: 90,
                // padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: AppStyles.primaryColor,
                ),
              ),
              Positioned(
                right: -45,
                top: -40,

                child: Container(
                  padding: EdgeInsets.all(25),
                  decoration: BoxDecoration(
                    border: Border.all(width: 18, color: Color(0xFF264CD2)),
                    shape: BoxShape.circle,
                    color: Colors.transparent,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                child: Row(
                  children: [
                    CircleAvatar(
                      maxRadius: 25,
                      backgroundColor: Colors.white,
                      child: Icon(
                        Icons.lightbulb_circle_sharp,
                        color: AppStyles.primaryColor,
                        size: 27,
                      ),
                    ),
                    SizedBox(width: 12),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "You've got new award",
                          style: AppStyles.headLineStyle2.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "You've 95 flights in a year",
                          style: AppStyles.headLineStyle2.copyWith(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            color: Colors.white.withAlpha(230),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 18),
          Text('Accumulated miles', style: AppStyles.headLineStyle2),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 12),
            decoration: BoxDecoration(
              color: AppStyles.bgcolor,
              borderRadius: BorderRadius.circular(18),
              boxShadow: [
                BoxShadow(
                  spreadRadius: 1,
                  blurRadius: 1,
                  color: Colors.grey.shade200,
                ),
              ],
            ),
            child: Column(
              children: [
                Text(
                  "192802",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: AppStyles.textColor,
                    fontSize: 45,
                  ),
                ),
                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Miles accrued",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: AppStyles.textColor,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      "23 June 2025",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: AppStyles.textColor,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppColumnTextLayout(
                      topText: '23 042',
                      bottomText: 'Miles',
                      alignment: CrossAxisAlignment.start,
                      isColor: false,
                    ),
                    AppColumnTextLayout(
                      topText: 'Airline CO',
                      bottomText: 'Received From',
                      alignment: CrossAxisAlignment.end,
                      isColor: false,
                    ),
                  ],
                ),
                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppColumnTextLayout(
                      topText: '24',
                      bottomText: 'Miles',
                      alignment: CrossAxisAlignment.start,
                      isColor: false,
                    ),
                    AppColumnTextLayout(
                      topText: "MC Donald's",
                      bottomText: 'Received From',
                      alignment: CrossAxisAlignment.end,
                      isColor: false,
                    ),
                  ],
                ),
                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppColumnTextLayout(
                      topText: '52 340',
                      bottomText: 'Miles',
                      alignment: CrossAxisAlignment.start,
                      isColor: false,
                    ),
                    AppColumnTextLayout(
                      topText: 'Exuma',
                      bottomText: 'Received From',
                      alignment: CrossAxisAlignment.end,
                      isColor: false,
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 25),
          InkWell(
            onTap: () {
              debugPrint("I am tapped");
            },
            child: Center(
              child: Text(
                "How to get more mile",
                style: AppStyles.textStyle.copyWith(
                  fontWeight: FontWeight.w300,
                  color: AppStyles.primaryColor,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
