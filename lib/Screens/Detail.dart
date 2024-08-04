import 'package:flutter/material.dart';
import 'package:test_task_2999/Data/Data.dart';
import 'package:test_task_2999/Widgets/Detail/Description.dart';
import 'package:test_task_2999/Widgets/Detail/Gallery.dart';
import 'package:test_task_2999/Widgets/Detail/Header.dart';
import 'package:test_task_2999/Widgets/Detail/Map_And_Price.dart';
import 'package:test_task_2999/Widgets/Detail/Seller.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final data = Data();

    return Material(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header
          const HeaderWidget(),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Description
                  DescriptionWidget(data: data),

                  // Seller
                  const SizedBox(height: 10),
                  const SellerWidget(),

                  // Gallery
                  const SizedBox(height: 20),
                  const GalleryWidget(),

                  // Map and price
                  const SizedBox(height: 10),
                  const MapAndPriceWidget(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
