import 'package:flutter/material.dart';
import 'package:test_task_2999/Widgets/Home/Input.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 5,
          child: InputWidget(
            hintText: "Search address, or near you ",
            hintStyle: const TextStyle(
              fontFamily: 'Raleway',
              fontSize: 12,
              fontWeight: FontWeight.w400, 
              height: 14.09 / 12,
              color: Color(0xFF838383),
            ),
            prefixIcon: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                color: Color(0xFF838383),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                gradient: const LinearGradient(
                  colors: [
                    Color(0xFFA0DAFB),
                    Color(0xFF0A8ED9),
                  ],
                  tileMode: TileMode.decal,
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              child: const Padding(
                padding: EdgeInsets.all(15.0),
                child: Icon(
                  Icons.tune,
                  color: Colors.white,
                  size: 30,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
