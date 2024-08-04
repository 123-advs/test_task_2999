import 'package:flutter/material.dart';
import 'package:test_task_2999/Data/Data.dart';

class TypeOptionWidget extends StatefulWidget {
  const TypeOptionWidget({super.key});

  @override
  _TypeOptionWidgetState createState() => _TypeOptionWidgetState();
}

class _TypeOptionWidgetState extends State<TypeOptionWidget> {
  int selectedIndex = Data.types.indexOf("House");

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 64,
      child: ListView.builder(
        itemCount: Data.types.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          bool isSelected = selectedIndex == index;
          return GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: isSelected ? null : const Color(0xffF7F7F7),
                    gradient: isSelected
                        ? const LinearGradient(
                            colors: [
                              Color(0xFFA0DAFB),
                              Color(0xFF0A8ED9),
                            ],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                          )
                        : null,
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0xFF363B64).withOpacity(0.08),
                        blurRadius: 24,
                        spreadRadius: 2,
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 16),
                    child: Text(
                      Data.types[index],
                      style: TextStyle(
                        color:
                            isSelected ? Colors.white : const Color(0xff858585),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
