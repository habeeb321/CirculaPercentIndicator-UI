import 'package:flutter/material.dart';
import 'package:privo_assignment/core/constants.dart';
import 'package:percent_indicator/percent_indicator.dart';

class TopWidget extends StatelessWidget {
  const TopWidget({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.6,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            kColor1,
            kColor2,
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
                  color: kWhiteColor,
                ),
                Icon(
                  Icons.notifications_none,
                  size: 40,
                  color: kWhiteColor,
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
                  color: kColor3,
                ),
                Positioned(
                  left: size.width * 0.59,
                  child: const CircleAvatar(
                    radius: 50,
                    backgroundColor: kColor3,
                  ),
                ),
                Positioned(
                  top: size.height * 0.035,
                  left: size.height * 0.025,
                  child: Row(
                    children: const [
                      Icon(
                        Icons.verified,
                        color: kWhiteColor,
                        size: 30,
                      ),
                      SizedBox(width: 20),
                      Text(
                        '0% processing fee',
                        style: TextStyle(color: kWhiteColor, fontSize: 25),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          kHeight20,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CircularPercentIndicator(
                backgroundColor: kWhiteColor,
                radius: 95,
                backgroundWidth: 18,
                lineWidth: 13.0,
                animation: true,
                percent: 0.25,
                center: const Text(
                  "25 % utilised",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                      color: kWhiteColor),
                ),
                circularStrokeCap: CircularStrokeCap.round,
                progressColor: const Color(0xff45B455),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Total limit',
                    style: TextStyle(color: kWhiteColor, fontSize: 20),
                  ),
                  Text(
                    '₹ 2,00,000',
                    style: TextStyle(
                        color: kWhiteColor,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  kHeight30,
                  Text(
                    'Utilised limit',
                    style: TextStyle(color: kWhiteColor, fontSize: 20),
                  ),
                  Text(
                    '₹ 50,000',
                    style: TextStyle(color: kWhiteColor, fontSize: 20),
                  ),
                  kHeight30,
                  Text(
                    'Available limit',
                    style: TextStyle(color: kWhiteColor, fontSize: 20),
                  ),
                  Text(
                    '₹ 1,50,000',
                    style: TextStyle(color: kWhiteColor, fontSize: 20),
                  ),
                ],
              ),
            ],
          ),
          kHeight40,
          InkWell(
            onTap: () {},
            child: Center(
              child: Container(
                width: size.width * 0.6,
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  gradient: const LinearGradient(
                    colors: [
                      Color(0xff89CDE9),
                      Color(0xff30A0D2),
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.topRight,
                    stops: [0.0, 1.0],
                  ),
                ),
                child: const Center(
                  child: Text(
                    'Withdraw more',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
