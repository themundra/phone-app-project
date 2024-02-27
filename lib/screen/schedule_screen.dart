import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:phone_app_design/widgets/shedule_routine_icons.dart';
import 'package:phone_app_design/widgets/task_date_button.dart';

class TasksScreen extends StatefulWidget {
  const TasksScreen({Key? key}) : super(key: key);

  @override
  State<TasksScreen> createState() => _TasksScreenState();
}

class _TasksScreenState extends State<TasksScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.keyboard_arrow_left_rounded),
          color: Theme.of(context).colorScheme.secondary,
        ),
        title: Text(
          "Tasks",
          style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                fontSize: 25,
                color: Theme.of(context).colorScheme.primary,
              ),
        ),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.only(
          top: 65,
          left: 35,
          right: 35,
        ),
        child: SingleChildScrollView(
          child: Align(
            alignment: Alignment.topLeft,
            child: Column(
              children: [
                Column(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Today",
                        style: GoogleFonts.poppins(
                          fontSize: 18,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Saturday 20, Jan",
                        style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      TaskDateButton(
                        date: "20",
                        day: "Sat",
                        isSelected: true,
                        onTap: () {},
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      TaskDateButton(
                        date: "21",
                        day: "Sun",
                        isSelected: false,
                        onTap: () {},
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      TaskDateButton(
                        date: "22",
                        day: "Mon",
                        isSelected: false,
                        onTap: () {},
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      TaskDateButton(
                        date: "23",
                        day: "Tue",
                        isSelected: false,
                        onTap: () {},
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      TaskDateButton(
                        date: "24",
                        day: "Wed",
                        isSelected: false,
                        onTap: () {},
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Schedule",
                      style: GoogleFonts.poppins(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: const Color(
                          0xFF4B635A,
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        showModalBottomSheet(
                          context: context,
                          builder: (BuildContext context) {
                            return Container(
                              height: double.infinity,
                              child: Center(
                                child: Column(
                                  children: [
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    Text(
                                      "New Schedule",
                                      style: GoogleFonts.poppins(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 30,
                                    ),
                                    const SizedBox(
                                      width: 15,
                                    ),
                                    SizedBox(
                                      width: 300,
                                      child: TextField(
                                        decoration: InputDecoration(
                                            prefixIcon: Icon(
                                              Icons.menu_book_rounded,
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .secondary,
                                            ),
                                            hintText: "Course Name",
                                            hintStyle: GoogleFonts.poppins(),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: const BorderSide(
                                                  color: Color(0xff4B635A)),
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                            ),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: const BorderSide(
                                                  color: Colors.grey),
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                            ),
                                            contentPadding:
                                                const EdgeInsets.all(7)),
                                      ),
                                    ),
                                    const SizedBox(height: 25),
                                    SizedBox(
                                      width: 300,
                                      child: TextField(
                                        decoration: InputDecoration(
                                            prefixIcon: Icon(
                                              Icons.person,
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .secondary,
                                            ),
                                            hintText: "Tutor",
                                            hintStyle: GoogleFonts.poppins(),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: const BorderSide(
                                                  color: Color(0xff4B635A)),
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                            ),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: const BorderSide(
                                                  color: Colors.grey),
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                            ),
                                            contentPadding:
                                                const EdgeInsets.all(7)),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 30,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Text(
                                          "Starts",
                                          style: GoogleFonts.poppins(
                                              fontWeight: FontWeight.w500,
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .primary),
                                        ),
                                        Text("Day"),
                                        Text("Time"),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 30,
                                    ),
                                    ElevatedButton(
                                      onPressed: () {},
                                      child: Text("Add"),
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Theme.of(context)
                                            .colorScheme
                                            .primary,
                                        foregroundColor: Theme.of(context)
                                            .colorScheme
                                            .onPrimary,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        );
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor:
                              Theme.of(context).colorScheme.primary,
                          foregroundColor:
                              Theme.of(context).colorScheme.onPrimary),
                      child: const Row(
                        children: [
                          Icon(
                            Icons.add,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "Add New",
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                const ScheduleRoutineIcons(
                  scheduleTime: "6:00",
                  primaryText: "Classes Resume",
                  secondaryText: "Class Preparation Starts",
                ),
                const SizedBox(
                  height: 30,
                ),
                const ScheduleRoutineIcons(
                  scheduleTime: "7:00",
                  primaryText: "Physics Class",
                  secondaryText: "Rajiv Sir",
                ),
                const SizedBox(
                  height: 50,
                ),
                const ScheduleRoutineIcons(
                  scheduleTime: "9:00",
                  primaryText: "Break",
                  secondaryText: "Breakfast Time",
                ),
                const SizedBox(
                  height: 30,
                ),
                const ScheduleRoutineIcons(
                  scheduleTime: "10:00",
                  primaryText: "English Class",
                  secondaryText: "Nisha Ma'am",
                ),
                const SizedBox(
                  height: 50,
                ),
                const ScheduleRoutineIcons(
                  scheduleTime: "12:00",
                  primaryText: "Web Development",
                  secondaryText: "Deep Sir",
                ),
                const SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
