import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileIcons extends StatelessWidget {
  const ProfileIcons({
    super.key,
    required this.profileIconMenuIcon,
    required this.profileIconMenuText,
    required this.onTap,
  });

  final String profileIconMenuText;
  final Icon profileIconMenuIcon;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: SizedBox(
            width: 40,
            height: 40,
            child: profileIconMenuIcon,
          ),
          title: Text(
            profileIconMenuText,
            style: GoogleFonts.poppins(
              color: Theme.of(context).colorScheme.secondary,
              fontSize: 19,
            ),
          ),
          trailing: SizedBox(
            width: 40,
            height: 40,
            child: IconButton(
              onPressed: onTap,
              icon: Icon(Icons.keyboard_arrow_right_rounded),
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
        ),
        const Divider(
          color: Colors.grey,
        ),
      ],
    );
  }
}
