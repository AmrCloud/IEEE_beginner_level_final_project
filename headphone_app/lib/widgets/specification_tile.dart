import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SpecificationTile extends StatelessWidget {
  const SpecificationTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 35,
          width: 35,
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: const Color.fromARGB(255, 234, 175, 199),
          ),
          child: SvgPicture.asset("assets/svgs/document.svg"),
        ),
        const SizedBox(width: 12),
        const Expanded(
          child: Text(
            "Product Specifications",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        const Icon(Icons.arrow_forward_ios, color: Colors.black),
      ],
    );
  }
}
