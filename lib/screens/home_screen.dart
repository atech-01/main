import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            children: [
              Row(
                children: [
                  Column(children: [Text("Text 1"), Text("Text 2")]),
                  Container(),
                ],
              ),
              Row(children: [
                  
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
