import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:phone_app_design/screen/profile_screen.dart';
import 'package:phone_app_design/screen/qna_page.dart';
import 'package:phone_app_design/screen/schedule_screen.dart';
import 'package:phone_app_design/widgets/home_cards.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Hello, ",
                      style: GoogleFonts.poppins(
                        color: const Color(
                          0xFF4B635A,
                        ),
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      "Samundra",
                      style: GoogleFonts.poppins(
                        color: const Color(
                          0xFF136B55,
                        ),
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      width: 100,
                    ),
                    SizedBox(
                      height: 50,
                      width: 50,
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => const ProfileScreen(),
                            ),
                          );
                        },
                        child: CircleAvatar(
                          radius: 25,
                          backgroundImage:
                              AssetImage("assets/images/profile.jpg"),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                TextField(
                  decoration: InputDecoration(
                      hintText: "Search Falano College",
                      hintStyle: GoogleFonts.poppins(
                          fontSize: 15, fontWeight: FontWeight.normal),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Color(0xff4B635A)),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      prefixIcon: const Icon(
                        Icons.menu,
                        color: Color(0xff3F4945),
                      ),
                      suffixIcon: const Icon(
                        Icons.search,
                        color: Color(0xff3F4945),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      contentPadding: const EdgeInsets.all(10)),
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    HomeCards(
                      buttonIcon: Icon(
                        Icons.message_rounded,
                        size: 30,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      cardText: "QnA",
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const QnaPage())),
                    ),
                    HomeCards(
                      buttonIcon: Icon(
                        Icons.task_rounded,
                        size: 30,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      cardText: "Tasks",
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const TasksScreen(),
                        ),
                      ),
                    ),
                    HomeCards(
                        buttonIcon: Icon(
                          Icons.developer_board,
                          size: 30,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                        cardText: "Class",
                        onTap: () {}),
                    HomeCards(
                        buttonIcon: Icon(
                          Icons.menu_rounded,
                          size: 30,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                        cardText: "Details",
                        onTap: () {})
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Your Course",
                      style: GoogleFonts.poppins(
                        fontSize: 20,
                        color: const Color(
                          0xFF4B635A,
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "See All",
                      ),
                      style: Theme.of(context).textButtonTheme.style,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  padding: EdgeInsets.all(35),
                  height: 275,
                  width: 370,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(28),
                    color: const Color(0xff136B55),
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Icon(
                            Icons.science,
                            color: Colors.white,
                            size: 50,
                          ),
                          Text(
                            "SCIENCE XII",
                            style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              Text(
                                "Chemistry",
                                style: GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontSize: 15,
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Text(
                                "2/24 done",
                                style: GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                "Physics",
                                style: GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontSize: 15,
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Text(
                                "3/29 done",
                                style: GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Icon(
                            Icons.warning_amber_outlined,
                            color: Colors.white,
                            size: 24,
                          ),
                          const SizedBox(
                            width: 2,
                          ),
                          Text(
                            "Complete Your Task",
                            style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Mentor",
                        style: GoogleFonts.poppins(
                          fontSize: 15,
                          color: const Color(
                            0xFF4B635A,
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "Sujan Dhakal",
                        ),
                        style: TextButton.styleFrom(
                          foregroundColor: Color(0xff136B55),
                          textStyle: GoogleFonts.poppins(),
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                        width: 40,
                        child: CircleAvatar(
                          radius: 25,
                          backgroundImage:
                              AssetImage("assets/images/profile.jpg"),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
