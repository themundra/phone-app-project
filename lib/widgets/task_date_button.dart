import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TaskDateButton extends StatelessWidget {
  TaskDateButton({
    super.key,
    required this.date,
    required this.day,
    required this.isSelected,
    required this.onTap,
  });

  final String day;
  final String date;
  bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    if (isSelected == true) {
      return Container(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Color(0xff87D6BB),
            foregroundColor: Colors.white,
          ),
          onPressed: onTap,
          child: Column(
            children: [
              Text(day),
              Text(date),
            ],
          ),
        ),
      );
    }

    return Container(
      child: TextButton(
        style: TextButton.styleFrom(
          foregroundColor: Theme.of(context).colorScheme.secondary,
        ),
        onPressed: onTap,
        child: Column(
          children: [
            Text(day),
            Text(date),
          ],
        ),
      ),
    );
  }
}
