import 'package:flutter/material.dart';

class PriceAndButton extends StatelessWidget {
  const PriceAndButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text.rich(
          TextSpan(
            text: '\$349.',
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
            children: <TextSpan>[
              TextSpan(
                text: '99',
                style: const TextStyle(color: Colors.black, fontSize: 14),
              ),
            ],
          ),
        ),
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromARGB(255, 218, 56, 94),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
            elevation: 0,
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: const [
              Text(
                'Add To Card',
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
              SizedBox(width: 8),
              Icon(
                Icons.arrow_forward_ios,
                size: 16,
                color: Colors.white,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
