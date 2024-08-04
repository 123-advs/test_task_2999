import 'package:flutter/material.dart';

class DrawerItemWidget extends StatelessWidget {
  const DrawerItemWidget({
    super.key,
    required this.icon,
    required this.title,
    this.isRed = false,
    this.isHighlighted = false,
  });

  final IconData icon;
  final String title;
  final bool isRed;
  final bool isHighlighted;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      child: Material(
        color: isHighlighted ? Colors.white : Colors.transparent,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
        ),
        child: InkWell(
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: ListTile(
              title: Text(
                title,
                style: TextStyle(
                  color: isHighlighted ? const Color(0xff0A8ED9) : Colors.white,
                  fontSize: 16,
                  fontFamily: "Raleway",
                  fontWeight: FontWeight.w400,
                ),
              ),
              leading: Stack(
                alignment: Alignment.topRight,
                children: [
                  Icon(
                    icon,
                    color: isHighlighted ? const Color(0xff0A8ED9) : Colors.white,
                    size: 20,
                  ),
                  isRed
                      ? const CircleAvatar(
                          backgroundColor: Color(0xffFA0E0E),
                          radius: 3,
                        )
                      : const SizedBox(),
                ],
              ),
              contentPadding: EdgeInsets.zero,
              minLeadingWidth: 0,
            ),
          ),
        ),
      ),
    );
  }
}
