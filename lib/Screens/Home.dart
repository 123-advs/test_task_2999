import 'package:flutter/material.dart';
import 'package:test_task_2999/Widgets/Home/App_Bar.dart';
import 'package:test_task_2999/Widgets/Home/Best_For_You.dart';
import 'package:test_task_2999/Widgets/Home/Near_From_You.dart';
import 'package:test_task_2999/Widgets/Home/Search.dart';
import 'package:test_task_2999/Widgets/Home/Type_Option.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Stack(
      children: [
        Material(
          color: Colors.white,
          child: SafeArea(
            child: Padding(
              padding: EdgeInsets.only(
                top: 10,
                left: 10,
              ),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    // App bar
                    AppBarWidget(
                    ),
        
                    // Search
                    SearchWidget(),
        
                    // Type House
                    TypeOptionWidget(),
        
                    // Near from you
                    NearFromYouWidget(),
        
                    // Best for you
                    BestForYouWidget(),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}