import 'package:flutter/material.dart';
import 'package:phone_app_design/screen/edit_profile.dart';
import 'package:phone_app_design/widgets/profile_icons.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Profile",
          style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                fontSize: 25,
                color: Theme.of(context).colorScheme.primary,
              ),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.keyboard_arrow_left_rounded),
          color: Theme.of(context).colorScheme.secondary,
        ),
      ),
      body: SingleChildScrollView(
          child: Container(
        padding: const EdgeInsets.only(top: 65, right: 35, left: 35),
        child: Column(
          children: [
            const SizedBox(
              height: 120,
              width: 120,
              child: CircleAvatar(
                radius: 25,
                backgroundImage: AssetImage("assets/images/profile.jpg"),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "Samundra Mahesh",
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            Text(
              "mahesamun@gmail.com",
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    fontSize: 16,
                    fontWeight: FontWeight.w300,
                  ),
            ),
            Text(
              "+977-9843897396",
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    fontSize: 16,
                    fontWeight: FontWeight.w300,
                  ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 200,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const EditProfilePage(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Theme.of(context).colorScheme.primary,
                  foregroundColor: Colors.white,
                ),
                child: Text("Edit Profile"),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Divider(
              color: Theme.of(context).colorScheme.background,
            ),
            const SizedBox(
              height: 10,
            ),
            ProfileIcons(
              profileIconMenuIcon: Icon(
                Icons.monetization_on_rounded,
                color: Theme.of(context).colorScheme.primary,
                size: 30,
              ),
              profileIconMenuText: "Premium Courses",
              onTap: () {},
            ),
            const SizedBox(
              height: 10,
            ),
            ProfileIcons(
              profileIconMenuIcon: Icon(
                Icons.library_books_rounded,
                color: Theme.of(context).colorScheme.primary,
                size: 30,
              ),
              profileIconMenuText: "Privacy Policy",
              onTap: () {},
            ),
            const SizedBox(
              height: 10,
            ),
            ProfileIcons(
                profileIconMenuIcon: Icon(
                  Icons.favorite_rounded,
                  color: Theme.of(context).colorScheme.error,
                  size: 30,
                ),
                profileIconMenuText: "Rate Us",
                onTap: () {}),
            const SizedBox(
              height: 10,
            ),
            ProfileIcons(
              profileIconMenuIcon: Icon(
                Icons.message_rounded,
                color: Theme.of(context).colorScheme.primary,
                size: 30,
              ),
              profileIconMenuText: "Send Feedback",
              onTap: () {},
            )
          ],
        ),
      )),
    );
  }
}
