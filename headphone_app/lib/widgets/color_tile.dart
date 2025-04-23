import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ColorsTile extends StatelessWidget {
  const ColorsTile({super.key});

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
          child: SvgPicture.asset("assets/svgs/colors.svg"),
        ),
        const SizedBox(width: 12),
        const Expanded(
          child: Text(
            "Colors",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        Row(
          children: [
            _colorCircle(Colors.black, true),
            const SizedBox(width: 5),
            _colorCircle(Colors.blue, false),
            const SizedBox(width: 5),
            _colorCircle(Colors.purple, false),
          ],
        ),
      ],
    );
  }

  Widget _colorCircle(Color color, bool isSelected) {
    return Container(
      height: 25,
      width: 25,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: isSelected ? Colors.red : Colors.grey),
        color: color,
      ),
    );
  }
}
