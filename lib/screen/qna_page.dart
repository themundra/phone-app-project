import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QnaPage extends StatefulWidget {
  const QnaPage({super.key});

  @override
  State<QnaPage> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<QnaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "QnA",
          style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                fontSize: 25,
                color: Theme.of(context).colorScheme.primary,
              ),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.keyboard_arrow_left_rounded),
          color: Theme.of(context).colorScheme.secondary,
        ),
      ),
      body: SingleChildScrollView(
          child: Container(
        padding: EdgeInsets.only(top: 65, right: 35, left: 35),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const SizedBox(
                  height: 50,
                  width: 50,
                  child: CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage("assets/images/profile.jpg"),
                  ),
                ),
                const SizedBox(
                  width: 30,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Samundra Mahesh"),
                    Text("24 Aug, 2022"),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              "What is Gravity?",
              style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    color: Theme.of(context).colorScheme.secondary,
                  ),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "Gravity is a fundamental force of nature that causes every object with mass to attract every other object with mass.",
              style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    fontSize: 14,
                    color: Theme.of(context).colorScheme.secondary,
                  ),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(
              height: 30,
            ),
            const Divider(
              color: Colors.grey,
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Discussion"),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Latest",
                    style: GoogleFonts.poppins(),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                const SizedBox(
                  height: 50,
                  width: 50,
                  child: CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage("assets/images/profile.jpg"),
                  ),
                ),
                const SizedBox(
                  width: 30,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Deep Darshan"),
                    Text("25 Aug, 2022"),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              "Gravity is responsible for many phenomena in the universe, such as the orbits of planets, the tides on Earth, and the formation of stars and galaxies.",
              style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    fontSize: 14,
                    color: Theme.of(context).colorScheme.secondary,
                  ),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.thumb_up_off_alt_rounded,
                    color: Theme.of(context).colorScheme.primary,
                    size: 30,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text("Reply"),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            const Divider(
              color: Colors.grey,
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              children: [
                const SizedBox(
                  height: 50,
                  width: 50,
                  child: CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage("assets/images/profile.jpg"),
                  ),
                ),
                const SizedBox(
                  width: 30,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Deep Darshan"),
                    Text("25 Aug, 2022"),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              "Gravity is responsible for many phenomena in the universe, such as the orbits of planets, the tides on Earth, and the formation of stars and galaxies.",
              style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    fontSize: 14,
                    color: Theme.of(context).colorScheme.secondary,
                  ),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.thumb_up_off_alt_rounded,
                    color: Theme.of(context).colorScheme.primary,
                    size: 30,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text("Reply"),
                ),
              ],
            ),
          ],
        ),
      )),
    );
  }
}
