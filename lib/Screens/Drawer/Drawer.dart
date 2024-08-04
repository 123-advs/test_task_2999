import 'package:flutter/material.dart';
import 'package:test_task_2999/Widgets/Drawer/Custom_Driver.dart';
import 'package:test_task_2999/Widgets/Drawer/Drawer_Item.dart';

class DrawerScreen extends StatelessWidget {
  const DrawerScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Material(
      color: Color(0xff0A8ED9),
      child: Align(
        alignment: Alignment.centerLeft,
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                DrawerItemWidget(
                  icon: Icons.home_rounded,
                  title: "Home",
                  isHighlighted: true,
                ),
                DrawerItemWidget(
                  icon: Icons.person_outline_sharp,
                  title: "Profile",
                ),
                DrawerItemWidget(
                  icon: Icons.place_outlined,
                  title: "Nearby",
                ),
                CustomDivider(),
                DrawerItemWidget(
                  icon: Icons.bookmark_outline,
                  title: "Bookmark",
                ),
                DrawerItemWidget(
                  icon: Icons.notifications_none,
                  title: "Notifications",
                  isRed: true,
                ),
                DrawerItemWidget(
                  icon: Icons.message_outlined,
                  title: "Message",
                  isRed: true,
                ),
                CustomDivider(),
                DrawerItemWidget(
                  icon: Icons.settings,
                  title: "Settings",
                ),
                DrawerItemWidget(
                  icon: Icons.help_outline,
                  title: "Help",
                ),
                DrawerItemWidget(
                  icon: Icons.logout_outlined,
                  title: "Logout",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
