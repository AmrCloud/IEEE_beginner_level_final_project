import 'package:flutter/material.dart';

class ProductImages extends StatelessWidget {
  const ProductImages({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: List.generate(4, (index) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 30),
              child: Container(
                width: 60,
                height: 60,
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.white,
                  border: Border.all(
                    color: index == 0 ? Colors.red : Colors.grey,
                  ),
                ),
                child: Image.asset("assets/images/black_${index + 1}.jpg"),
              ),
            );
          }),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
            ),
            child: Image.asset("assets/images/black_1.jpg"),
          ),
        ),
      ],
    );
  }
}
