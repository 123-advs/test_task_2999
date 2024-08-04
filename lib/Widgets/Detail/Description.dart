import 'package:flutter/material.dart';
import 'package:test_task_2999/Data/Data.dart';

class DescriptionWidget extends StatelessWidget {
  const DescriptionWidget({super.key, required this.data});

  final Data data;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Description",
          style: TextStyle(
            fontFamily: "Raleway",
            fontWeight: FontWeight.w500,
            fontSize: 16,
            color: Colors.black,
          ),
        ),
        const SizedBox(height: 10),
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: data.description.split('Show More')[0],
                style: const TextStyle(
                  fontFamily: "Raleway",
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                  color: Color(0xff858585),
                  height: 1.5,
                ),
              ),
              const TextSpan(
                text: 'Show More ',
                style: TextStyle(
                  fontFamily: "Raleway",
                  fontWeight: FontWeight.w500,
                  fontSize: 12,
                  color: Colors.lightBlue,
                  height: 1.5,
                ),
              ),
              TextSpan(
                text: data.description.split('Show More').length > 1
                    ? data.description.split('Show More')[1]
                    : '',
                style: const TextStyle(
                  fontFamily: "Raleway",
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                  color: Color(0xff858585),
                  height: 1.5,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
