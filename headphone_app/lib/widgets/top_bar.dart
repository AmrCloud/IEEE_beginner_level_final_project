import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TopBar extends StatelessWidget {
  const TopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _iconButton("assets/svgs/arrow-back.svg"),
        _iconButton("assets/svgs/heart.svg"),
      ],
    );
  }

  Widget _iconButton(String assetPath) {
    return Container(
      width: 35,
      height: 35,
      padding: const EdgeInsets.all(2),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
        border: Border.all(color: Colors.grey),
      ),
      child: SvgPicture.asset(assetPath),
    );
  }
} 
