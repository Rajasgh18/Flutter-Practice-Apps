import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutterapis/models/comments_model.dart';
import 'package:http/http.dart' as http;

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<CommentsModels> comments = [];
  Future<List<CommentsModels>> getCommentApi() async {
    var url = Uri.parse('https://jsonplaceholder.typicode.com/comments');
    var response = await http.get(url);
    dynamic data = jsonDecode(response.body);
    if (response.statusCode == 200) {
      comments.clear();
      for (int i = 0; i < data.length; i++) {
        comments.add(CommentsModels.fromJson(data[0]));
      }
      return comments;
    } else {
      return comments;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("API")),
      body: Column(children: [
        Expanded(
          child: FutureBuilder(
            future: getCommentApi(),
            builder: (context, snapshot) {
              if (!snapshot.hasData) {
                return const Text("Loading...");
              } else {
                return ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListTile(
                        title: Text(comments[index].name.toString()),
                        subtitle: Text(comments[index].body.toString(),
                            style: const TextStyle(fontSize: 10)),
                        trailing: Text(comments[index].email.toString()),
                      ),
                    );
                  },
                );
              }
            },
          ),
        ),
      ]),
    );
  }
}
