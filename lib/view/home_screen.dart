import 'package:flutter/material.dart';
import 'package:privo_assignment/view/widgets/bottom_widget.dart';
import 'package:privo_assignment/view/widgets/top_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TopWidget(size: size),
            BottomWidget(size: size),
          ],
        ),
      ),
    );
  }
}
