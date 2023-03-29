import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: size.height * 0.6,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0xff151A47),
                    Color(0xff1D478D),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: [0.0, 1.0],
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 15,
                      vertical: 15,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Icon(
                          Icons.sort,
                          size: 40,
                          color: Colors.white,
                        ),
                        Icon(
                          Icons.notifications_none,
                          size: 40,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: size.width,
                    child: Stack(
                      children: [
                        Container(
                          height: 100,
                          width: size.width * 0.7,
                          color: const Color(0xff16173F),
                        ),
                        Positioned(
                          left: size.width * 0.59,
                          child: const CircleAvatar(
                            radius: 50,
                            backgroundColor: Color(0xff16173F),
                          ),
                        ),
                        Positioned(
                          top: size.height * 0.035,
                          left: size.height * 0.025,
                          child: Row(
                            children: const [
                              Icon(
                                Icons.verified,
                                color: Colors.white,
                                size: 30,
                              ),
                              SizedBox(width: 20),
                              Text(
                                '0% processing fee',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 25),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
