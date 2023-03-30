import 'package:flutter/material.dart';
import 'package:privo_assignment/core/constants.dart';

class BottomWidget extends StatelessWidget {
  const BottomWidget({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.only(top: size.height * 0.04, left: size.width * 0.04),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'All withdrawals',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Color(0xff004097)),
          ),
          kHeight10,
          Row(
            children: [
              Stack(
                children: [
                  Container(
                    height: 80,
                    width: size.width * 0.435,
                    decoration: BoxDecoration(
                        color: const Color(0xff2C62A4),
                        borderRadius: BorderRadius.circular(15)),
                    child: const Padding(
                      padding: EdgeInsets.only(top: 10, left: 10),
                      child: Text(
                        'Ongoing',
                        style: TextStyle(color: Colors.white60),
                      ),
                    ),
                  ),
                  const Positioned(
                    left: 130,
                    top: 15,
                    child: Text(
                      '1',
                      style: TextStyle(
                          color: kWhiteColor,
                          fontSize: 50,
                          fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
              kWidth20,
              Stack(
                children: [
                  Container(
                    height: 80,
                    width: size.width * 0.435,
                    decoration: BoxDecoration(
                        color: const Color(0xff888888),
                        borderRadius: BorderRadius.circular(15)),
                    child: const Padding(
                      padding: EdgeInsets.only(top: 10, left: 10),
                      child: Text(
                        'Past',
                        style: TextStyle(color: Colors.white60),
                      ),
                    ),
                  ),
                  const Positioned(
                    left: 130,
                    top: 15,
                    child: Text(
                      '2',
                      style: TextStyle(
                          color: kWhiteColor,
                          fontSize: 50,
                          fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
            ],
          ),
          kHeight30,
          const Text(
            'Downloads documents',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Color(0xff004097)),
          ),
          kHeight10,
          Row(
            children: [
              SizedBox(
                height: 45,
                width: size.width * 0.45,
                child: OutlinedButton.icon(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.download,
                    color: Color(0xff1D478E),
                  ),
                  label: const Text(
                    'Sanction letter',
                    style: TextStyle(color: Color(0xff1D478E)),
                  ),
                  style: OutlinedButton.styleFrom(
                    side: const BorderSide(width: 1, color: Color(0xff1D478D)),
                    shape: const StadiumBorder(),
                  ),
                ),
              ),
              kWidth10,
              SizedBox(
                height: 45,
                width: size.width * 0.45,
                child: OutlinedButton.icon(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.download,
                    color: Color(0xff1D478E),
                  ),
                  label: const Text(
                    'Agreement letter',
                    style: TextStyle(color: Color(0xff1D478E)),
                  ),
                  style: OutlinedButton.styleFrom(
                    side: const BorderSide(width: 1, color: Color(0xff1D478D)),
                    shape: const StadiumBorder(),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
