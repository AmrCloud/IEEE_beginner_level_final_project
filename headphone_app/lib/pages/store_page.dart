import 'package:flutter/material.dart';
import 'package:headphone_app/widgets/color_tile.dart';
import 'package:headphone_app/widgets/price_and_button.dart';
import 'package:headphone_app/widgets/product_images.dart';
import 'package:headphone_app/widgets/product_tile_and_rating.dart';
import 'package:headphone_app/widgets/specification_tile.dart';
import 'package:headphone_app/widgets/top_bar.dart';


class StorePage extends StatelessWidget {
  const StorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: const [
              TopBar(),
              SizedBox(height: 8),
              ProductImages(),
              SizedBox(height: 20),
              ProductTitleAndRating(),
              SizedBox(height: 8),
              Text(
                "Pure Bass Sound, 57H Battery with Speed Charge, Hands-Free Call Voice Aware, Multi-Point Connection, Lightweight and Foldable - Black | 1 year local warranty",
              ),
              SizedBox(height: 8),
              SpecificationTile(),
              Divider(),
              ColorsTile(),
              SizedBox(height: 20),
              PriceAndButton(),
            ],
          ),
        ),
      ),
    );
  }
}
