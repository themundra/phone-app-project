import 'package:flutter/material.dart';

class HomeCards extends StatelessWidget {
  const HomeCards({
    super.key,
    required this.buttonIcon,
    required this.cardText,
    required this.onTap,
  });

  final VoidCallback onTap;
  final Icon buttonIcon;
  final String cardText;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
              color: const Color(0xffCEE9DD),
              borderRadius: BorderRadius.circular(100)),
          width: 60,
          height: 60,
          child: InkWell(
            onTap: onTap,
            child: buttonIcon,
          ),
        ),
        const SizedBox(
          height: 3,
        ),
        Text(cardText),
      ],
    );
  }
}
