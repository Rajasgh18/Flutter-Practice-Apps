import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutterapis/models/user_model2.dart';
import 'package:http/http.dart' as http;

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<UsersModel> users = [];
  Future<List<UsersModel>> getUsers() async {
    final response =
        await http.get(Uri.parse("https://jsonplaceholder.typicode.com/users"));
    final data = jsonDecode(response.body);
    if (response.statusCode == 200) {
      users.clear();
      for (int i = 0; i < data.length; i++) {
        users.add(UsersModel.fromJson(data[i]));
      }
      return users;
    } else {
      return users;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("API")),
      body: Column(
        children: [
          Expanded(
            child: FutureBuilder(
              future: getUsers(),
              builder: (context, AsyncSnapshot<List<UsersModel>> snapshot) {
                if (!snapshot.hasData) {
                  return const Text("Loading...");
                } else {
                  return ListView.builder(
                    itemCount: snapshot.data!.length,
                    itemBuilder: (context, index) {
                      return Card(
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Name : ${snapshot.data![index].name}"),
                                const SizedBox(
                                  height: 8,
                                ),
                                Text(
                                    "Username : ${snapshot.data![index].username}@gmail.com"),
                                const SizedBox(
                                  height: 8,
                                ),
                                Text("Email : ${snapshot.data![index].email}"),
                                const SizedBox(
                                  height: 8,
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text("Address : "),
                                    const SizedBox(width: 8),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                            "City - ${snapshot.data![index].address!.city}"),
                                        const SizedBox(
                                          height: 4,
                                        ),
                                        Text(
                                            "Street - ${snapshot.data![index].address!.street}"),
                                        const SizedBox(
                                          height: 4,
                                        ),
                                        Text(
                                            "Suite - ${snapshot.data![index].address!.suite}"),
                                        const SizedBox(
                                          height: 4,
                                        ),
                                        Text(
                                            "Zipcode - ${snapshot.data![index].address!.zipcode}"),
                                      ],
                                    ),
                                  ],
                                )
                              ]),
                        ),
                      );
                    },
                  );
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
