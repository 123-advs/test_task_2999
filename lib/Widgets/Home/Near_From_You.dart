import 'package:flutter/material.dart';
import 'package:test_task_2999/Screens/Detail.dart';

class NearFromYouWidget extends StatelessWidget {
  const NearFromYouWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const ListTile(
          title: Text(
            "Near from you",
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
          height: 272,
          child: ListView.builder(
            itemCount: 2, // Two items
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              String imagePath = index == 0 
                ? "assets/images/NearFromYou_01.jpg"
                : "assets/images/NearFromYou_02.jpg";
              String title = index == 0 
                ? "Dreamsville House"
                : "Ascot House";
              String subtitle = index == 0 
                ? "Jl. Sultan Iskandar Muda"
                : "Jl. Cilandak Tengah";

              return InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const DetailScreen(),
                    ),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 290,
                    width: 240,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(imagePath),
                      ),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient: LinearGradient(
                          colors: [
                            const Color(0xff0D0D0D).withOpacity(0),
                            Colors.black.withOpacity(0.8),
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 4),
                              decoration: BoxDecoration(
                                color:
                                    const Color(0xff000000).withOpacity(0.24),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: const Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Icon(
                                    Icons.place_outlined,
                                    color: Colors.white,
                                  ),
                                  SizedBox(width: 5),
                                  Text(
                                    "1.8 km",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: "Raleway",
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Align(
                                alignment: Alignment.topLeft,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      title,
                                      style: const TextStyle(
                                        fontFamily: "Raleway",
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white,
                                        fontSize: 16,
                                      ),
                                    ),
                                    Text(
                                      subtitle,
                                      style: const TextStyle(
                                        fontFamily: "Raleway",
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xffD7D7D7),
                                        fontSize: 12,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
