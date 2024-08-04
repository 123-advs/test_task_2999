import 'package:flutter/material.dart';

class BestForYouWidget extends StatelessWidget {
  const BestForYouWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const ListTile(
          title: Text(
            "Best for you",
            style: TextStyle(
              color: Colors.black,
              fontFamily: "Raleway",
              fontWeight: FontWeight.w500,
              fontSize: 16,
            ),
          ),
          trailing: Text(
            "See More",
            style: TextStyle(
              color: Color(0xff858585),
              fontFamily: "Raleway",
              fontWeight: FontWeight.w400,
              fontSize: 12,
            ),
          ),
        ),
        SizedBox(
          height: 220,
          child: ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 2,
            itemBuilder: (context, index) {
              String imagePath = index == 0 
                ? "assets/images/BestForYou_01.jpg"
                : "assets/images/BestForYou_02.jpg";
              
              String houseName = index == 0 
                ? "Orchad House" 
                : "The Hollies House";
              
              String price = index == 0 
                ? "Rp. 2.500.000.000 / Year" 
                : "Rp. 2.000.000.000 / Year";
              
              String bedroom = index == 0 
                ? "6 Bedroom" 
                : "5 Bedroom";
              
              String bathroom = index == 0 
                ? "4 Bathroom" 
                : "2 Bathroom";

              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 90,
                      width: 94,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: AssetImage(imagePath),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(width: 20),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            houseName,
                            style: const TextStyle(
                              fontFamily: "Raleway",
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: Colors.black,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            price,
                            style: const TextStyle(
                              color: Color(0xff0A8ED9),
                              fontFamily: "Raleway",
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Row(
                            children: [
                              Expanded(
                                child: Row(
                                  children: [
                                    const Image(
                                      image: AssetImage(
                                        "assets/icons/IC_Bed.png",
                                      ),
                                    ),
                                    const SizedBox(width: 10,),
                                    Expanded(
                                      child: Text(
                                        bedroom,
                                        textAlign: TextAlign.start,
                                        style: const TextStyle(
                                          color: Color(0xff858585),
                                          fontFamily: "Raleway",
                                          fontWeight: FontWeight.w400,
                                          fontSize: 12,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Row(
                                  children: [
                                    const Image(
                                      image: AssetImage(
                                        "assets/icons/Group.png",
                                      ),
                                    ),
                                    const SizedBox(width: 10,),
                                    Expanded(
                                      child: Text(
                                        bathroom,
                                        textAlign: TextAlign.start,
                                        style: const TextStyle(
                                          color: Color(0xff858585),
                                          fontFamily: "Raleway",
                                          fontWeight: FontWeight.w400,
                                          fontSize: 12,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
