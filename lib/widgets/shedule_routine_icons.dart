import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ScheduleRoutineIcons extends StatelessWidget {
  const ScheduleRoutineIcons({
    super.key,
    required this.scheduleTime,
    required this.primaryText,
    required this.secondaryText,
  });

  final String scheduleTime;
  final String primaryText;
  final String secondaryText;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Row(
            children: [
              Text(
                scheduleTime,
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Container(
                width: 18,
                height: 18,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Theme.of(context).colorScheme.primary,
                    width: 2.3,
                  ),
                ),
              ),
              const SizedBox(
                width: 25,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    primaryText,
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    secondaryText,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
