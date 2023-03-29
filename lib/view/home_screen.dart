import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0xff1D478D),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xff1D478D),
        leading: const Icon(
          Icons.sort,
          size: 40,
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 10.0),
            child: Icon(
              Icons.notifications_none,
              size: 40,
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Container(
            height: 60,
            width: size.width * 0.8,
            color: Colors.red,
          ),
        ],
      ),
    );
  }
}
