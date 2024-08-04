import 'package:flutter/material.dart';

class SellerWidget extends StatelessWidget {
  const SellerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CircleAvatar(
          backgroundImage: AssetImage("assets/images/person.png"),
        ),
        const SizedBox(width: 15),
        const Expanded(
          flex: 2,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Garry Allen",
                style: TextStyle(
                  fontFamily: "Raleway",
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: Colors.black,
                ),
              ),
              Text(
                "Owner",
                style: TextStyle(
                  color: Color(0xff858585),
                  fontFamily: "Raleway",
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ),
        Row(
          children: [
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              elevation: 0,
              color: const Color(0xff0A8ED9).withOpacity(0.50),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.call, color: Colors.white),
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              elevation: 0,
              color: const Color(0xff0A8ED9).withOpacity(0.50),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.message, color: Colors.white),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
