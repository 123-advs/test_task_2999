import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          height: 319,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: const DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage("assets/images/detail.jpg"),
            ),
          ),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(
                colors: [
                  const Color(0x00000000),
                  const Color(0x00000000).withOpacity(0.6),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                        backgroundColor: const Color(0xff000000).withOpacity(0.24),
                        child: IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: const Icon(Icons.arrow_back_ios),
                          color: Colors.white,
                          alignment: Alignment.center,
                        ),
                      ),
                      CircleAvatar(
                        backgroundColor: const Color(0xff000000).withOpacity(0.24),
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.bookmark_border),
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Dreamsville House",
                            style: TextStyle(
                              fontFamily: "Raleway",
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                          Text(
                            "Jl. Sultan Iskandar Muda, Jakarta selatan",
                            style: TextStyle(
                              fontFamily: "Raleway",
                              fontWeight: FontWeight.w400,
                              color: Color(0xffD4D4D4),
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: const Color(0xff000000).withOpacity(0.2),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            padding: const EdgeInsets.all(4.0),
                            child: const Image(
                              image: AssetImage("assets/icons/IC_Bed.png"),
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(width: 8),
                          const Text(
                            "6 Bedroom",
                            style: TextStyle(
                              color: Color(0xffD4D4D4),
                              fontFamily: "Raleway",
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(width: 30),
                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: const Color(0xff000000).withOpacity(0.2),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            padding: const EdgeInsets.all(8.0),
                            child: const Image(
                              image: AssetImage("assets/icons/Group.png"),
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(width: 8),
                          const Text(
                            "4 Bathroom",
                            style: TextStyle(
                              color: Color(0xffD4D4D4),
                              fontFamily: "Raleway",
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
