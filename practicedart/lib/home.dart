import 'package:flutter/material.dart';
import 'package:practicedart/drawercontents.dart';

class Home extends StatelessWidget {
  static const String id = 'home';
  Home({super.key});

  final users = [
    {
      "img":
          "https://images.pexels.com/photos/3307862/pexels-photo-3307862.jpeg?auto=compress&cs=tinysrgb&w=600",
      "name": "Raja Singh",
      "text": "Hey, Whatsap!",
      "time": "5:00",
    },
    {
      "img":
          "https://media.istockphoto.com/id/1413766112/photo/successful-mature-businessman-looking-at-camera-with-confidence.jpg?b=1&s=612x612&w=0&k=20&c=jaWI_uWYImztzKunKeYmvbWbfLuMmtrSN1n2uo0sMjI=",
      "name": "Mayank Deshlahara",
      "text": "Kaisa h bhai",
      "time": "3:00",
    },
    {
      "img":
          "https://images.pexels.com/photos/5060973/pexels-photo-5060973.jpeg?auto=compress&cs=tinysrgb&w=600",
      "name": "Rishabh Chaodhari",
      "text": "aur coding kaisa chal rha h",
      "time": "1:00",
    },
    {
      "img":
          "https://images.pexels.com/photos/3752128/pexels-photo-3752128.jpeg?auto=compress&cs=tinysrgb&w=600",
      "name": "Rahul Singh",
      "text": "Branch Topper!",
      "time": "12:00",
    },
    {
      "img":
          "https://images.pexels.com/photos/4342098/pexels-photo-4342098.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=699.825&fit=crop&h=1133.05",
      "name": "Shubham Singh",
      "text": "kab aa rha h",
      "time": "6:00",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(
        backgroundColor: Colors.white,
        child: DrawerContents(),
      ),
      appBar: AppBar(
        title: const Text("Social App"),
        backgroundColor: Colors.deepPurple,
      ),
      body: SafeArea(
          child: ListView.builder(
        itemCount: users.length,
        itemBuilder: (context, item) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 2),
            child: ListTile(
              tileColor: Colors.deepPurple.withOpacity(0.05),
              leading: CircleAvatar(
                backgroundImage: NetworkImage(users[item]['img'].toString()),
              ),
              title: Text(users[item]['name'].toString()),
              subtitle: Text(users[item]['text'].toString()),
              trailing: Text(users[item]['time'].toString() + " PM"),
            ),
          );
        },
      )),
    );
  }
}
