import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:phone_app_design/screen/main_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5FBF6),
      body: Form(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.only(
              left: 35,
              right: 35,
              top: 65,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Login",
                  style: GoogleFonts.poppins(
                    fontSize: 34,
                    color: const Color(
                      0xFF136B55,
                    ),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 35),
                TextField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.person,
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                      hintText: "E-mail or username",
                      hintStyle: GoogleFonts.poppins(),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Color(0xff4B635A)),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      contentPadding: const EdgeInsets.all(7)),
                ),
                const SizedBox(height: 25),
                TextField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.lock,
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                      hintText: "Password",
                      hintStyle: GoogleFonts.poppins(),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Color(0xff4B635A)),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      suffixIcon: IconButton(
                        icon: Icon(
                          Icons.remove_red_eye_outlined,
                          color: Theme.of(context).colorScheme.secondary,
                        ),
                        onPressed: () {},
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      contentPadding: const EdgeInsets.all(7)),
                ),
                const SizedBox(height: 15),
                Row(
                  children: [
                    Checkbox(
                      value: false,
                      onChanged: (newvalue) {},
                      hoverColor: Theme.of(context).colorScheme.secondary,
                    ),
                    Expanded(
                      child: Text(
                        "Remember me",
                        style: GoogleFonts.poppins(
                          color: const Color(0xff4B635A),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 25),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const MainScreen(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xff136B55),
                      foregroundColor: const Color(0xffffffff)),
                  child: Text(
                    "Login",
                    style: GoogleFonts.poppins(),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    foregroundColor: const Color(0xff136B55),
                  ),
                  child: Text(
                    "Forgot Password?",
                    style: GoogleFonts.poppins(
                      fontSize: 15,
                    ),
                  ),
                ),
                const SizedBox(height: 3),
                Text(
                  "OR",
                  style: GoogleFonts.poppins(
                    color: Colors.grey,
                    fontSize: 18,
                  ),
                ),
                const SizedBox(height: 3),
                ElevatedButton.icon(
                  icon: const Icon(Icons.account_circle_sharp),
                  onPressed: () {},
                  label: Text(
                    "Continue With Google",
                    style: GoogleFonts.poppins(),
                  ),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xff136B55),
                      foregroundColor: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
