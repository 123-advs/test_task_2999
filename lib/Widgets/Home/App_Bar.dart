import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      centerTitle: false,
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Text(
            "Location",
            style: TextStyle(
              color: Color(0xff838383),
              fontSize: 12,
              fontFamily: "Raleway",
              fontWeight: FontWeight.w400,
            ),
          ),
          PopupMenuButton(
            onSelected: (_) {
              Scaffold.of(context).openDrawer();
            },
            itemBuilder: (context) {
              return [];
            },
            child: const SizedBox(
              width: 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Expanded(
                    child: Text(
                      "Jakarta",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                        fontFamily: "Raleway",
                        fontSize: 20,
                      ),
                    ),
                  ),
                  Icon(
                    Icons.arrow_drop_down_outlined,
                    color: Color(0xff838383),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      actions: const [
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Stack(
            alignment: Alignment.topRight,
            children: [
              Icon(
                Icons.notifications_none,
                color: Colors.black,
                size: 25,
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 5,
                  right: 5,
                ),
                child: CircleAvatar(
                  backgroundColor: Color(0xffFA0E0E),
                  radius: 3,
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}