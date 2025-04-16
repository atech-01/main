// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:ticket_apps/base/res/styles/app_styles.dart';
import 'package:ticket_apps/screens/home/all_json.dart';

class HotelDetail extends StatefulWidget {
  const HotelDetail({super.key});

  @override
  State<HotelDetail> createState() => _HotelDetailState();
}

class _HotelDetailState extends State<HotelDetail> {
  late int hotelIndex = 0;
  dynamic currentImage;
  late String currentText;

  @override
  void didChangeDependencies() {
    if (ModalRoute.of(context)!.settings.arguments != null) {
      var args = ModalRoute.of(context)!.settings.arguments as Map;
      hotelIndex = args['index'];
      currentImage = hotelList[hotelIndex]['image'];
      currentText = hotelList[hotelIndex]['place'];
      // debugPrint("The place is $hotelIndex");
    }
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 300.0,
            pinned: true,
            floating: false,
            leading: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                decoration: BoxDecoration(
                  color: AppStyles.ticketColor,
                  shape: BoxShape.circle,
                ),
                child: Icon(Icons.arrow_back, color: Colors.white),
              ),
            ),

            flexibleSpace: FlexibleSpaceBar(
              // title: Text(hotelList[hotelIndex]['place']),
              background: Stack(
                children: [
                  Positioned.fill(
                    child: Image.asset(
                      "assets/image/$currentImage",
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    bottom: 32,
                    right: 20,
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 4, horizontal: 4),
                      color: Colors.black.withAlpha(128),

                      child: Text(
                        currentText,
                        style: TextStyle(color: Colors.white, fontSize: 24),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              Padding(
                padding: EdgeInsets.all(8),
                child: Text(
                  "In this article, we explore SliverChildListDelegate, a Flutter class used to manage a fixed list of widgets within sliver-based scrollable views. It is commonly used with SliverList or SliverFixedExtentList inside a CustomScrollView to create flexible and highly customizable layouts. Unlike lazy loading delegates, SliverChildListDelegate renders all children eagerly, making it suitable for small, static lists. Developers often prefer it when the number of items is known and limited, ensuring simple implementation and predictable performance. For larger or dynamic content, SliverChildBuilderDelegate is recommended instead. Overall, it's a useful tool for building structured, scrollable UIs.",
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8),
                child: Text(
                  "More Image",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                ),
              ),
              Container(
                height: 200,
                child: ListView.builder(
                  itemCount: hotelList.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    final imagePath = hotelList[index]['image'];
                    final textPath = hotelList[index]['place'];
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          currentImage = imagePath;
                          currentText = textPath;
                        });
                      },
                      child: Container(
                        margin: EdgeInsets.all(16),
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          image: DecorationImage(
                            image: AssetImage("assets/image/$imagePath"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
