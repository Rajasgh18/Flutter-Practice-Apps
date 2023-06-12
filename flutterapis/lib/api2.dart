import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Photos> photoList = [];
  Future<List<Photos>> getPhotos() async {
    final response = await http
        .get(Uri.parse("https://jsonplaceholder.typicode.com/photos"));
    var data = jsonDecode(response.body);
    if (response.statusCode == 200) {
      photoList.clear();
      for (Map i in data) {
        Photos photo = Photos(title: i["title"], url: i["url"], id: i["id"]);
        photoList.add(photo);
      }
      return photoList;
    } else {
      return photoList;
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
                future: getPhotos(),
                builder: (context, AsyncSnapshot<List<Photos>> snapshot) {
                  if (!snapshot.hasData) {
                    return const Text("Loading...");
                  } else {
                    return ListView.builder(
                      itemCount: snapshot.data!.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5),
                          child: ListTile(
                            leading: CircleAvatar(
                                radius: 30,
                                backgroundImage: NetworkImage(
                                    snapshot.data![index].url.toString())),
                            title: const Text("Title :"),
                            subtitle:
                                Text(snapshot.data![index].title.toString()),
                            trailing: Text(snapshot.data![index].id.toString()),
                          ),
                        );
                      },
                    );
                  }
                },
              ),
            )
          ],
        ));
  }
}

class Photos {
  String title, url;
  int id;
  Photos({required this.title, required this.url, required this.id});
}
