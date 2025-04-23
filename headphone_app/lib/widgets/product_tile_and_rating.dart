import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProductTitleAndRating extends StatelessWidget {
  const ProductTitleAndRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Expanded(
          child: Text(
            "JBL Tune 520BT Wireless On-Ear \nHeadphones",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
            overflow: TextOverflow.ellipsis,
          ),
        ),
        Container(
          height: 25,
          width: 65,
          padding: const EdgeInsets.all(3),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Colors.white,
            border: Border.all(color: Colors.grey),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SvgPicture.asset("assets/svgs/star.svg"),
              const Text(
                "4.9",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
