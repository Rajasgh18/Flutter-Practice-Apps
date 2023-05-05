import 'package:flutter/material.dart';
import 'package:practicedart/home.dart';
import 'package:practicedart/apps.dart';
import 'package:practicedart/create.dart';
import 'package:practicedart/favorites.dart';

class DrawerContents extends StatelessWidget {
  const DrawerContents({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                bottomRight: Radius.circular(30),
              ),
              color: Colors.deepPurple[400],
            ),
            currentAccountPicture: const CircleAvatar(
              backgroundImage: AssetImage('images/profilepic.webp'),
            ),
            accountName: const Text("Raja Singh"),
            accountEmail: const Text("rajasgh18@gmail.com"),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, Home.id);
            },
            child: Container(
              alignment: Alignment.centerLeft,
              margin: const EdgeInsets.all(4),
              padding: const EdgeInsets.only(left: 15),
              height: 50,
              child: Row(
                children: [
                  const Icon(
                    Icons.home_filled,
                    size: 30,
                    color: Colors.blue,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text("Home",
                      style:
                          TextStyle(fontSize: 18, color: Colors.grey.shade800)),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, Apps.id);
            },
            child: Container(
              alignment: Alignment.centerLeft,
              margin: const EdgeInsets.all(4),
              padding: const EdgeInsets.only(left: 15),
              height: 50,
              child: Row(
                children: [
                  const Icon(
                    Icons.dashboard_customize_rounded,
                    size: 30,
                    color: Colors.green,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text("Apps",
                      style:
                          TextStyle(fontSize: 18, color: Colors.grey.shade800)),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, Create.id);
            },
            child: Container(
              alignment: Alignment.centerLeft,
              margin: const EdgeInsets.all(4),
              padding: const EdgeInsets.only(left: 15),
              height: 50,
              child: Row(
                children: [
                  const Icon(
                    Icons.create,
                    size: 30,
                    color: Colors.blue,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text("Create",
                      style:
                          TextStyle(fontSize: 18, color: Colors.grey.shade800)),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, Favorites.id);
            },
            child: Container(
              alignment: Alignment.centerLeft,
              margin: const EdgeInsets.all(4),
              padding: const EdgeInsets.only(left: 15),
              height: 50,
              child: Row(
                children: [
                  const Icon(
                    Icons.favorite_rounded,
                    size: 30,
                    color: Colors.red,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text("Favorites",
                      style:
                          TextStyle(fontSize: 18, color: Colors.grey.shade800)),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
