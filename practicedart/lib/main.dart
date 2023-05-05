import 'package:flutter/material.dart';
import 'package:practicedart/home.dart';
import 'package:practicedart/apps.dart';
import 'package:practicedart/create.dart';
import 'package:practicedart/favorites.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Home.id, 
      routes: {
        Home.id: (context) => Home(),
        Apps.id: (context) => const Apps(),
        Create.id: (context) => const Create(),
        Favorites.id: (context) => const Favorites()
      },
    );
  }
}


//--Circle Avatar--
// CircleAvatar(
//   radius: 100,
//   backgroundColor: Colors.blue[50],
//   backgroundImage: const NetworkImage("https://images.pexels.com/photos/1043471/pexels-photo-1043471.jpeg?cs=srgb&dl=businessman-fashion-man-1043471.jpg&fm=jpg"),
// ),

//--Stack--
// Stack(
//   alignment: Alignment.center,
//   children: [
//     Container(
//       color: Colors.blue,
//       width: 140,
//       height: 140,
//     ),
//     Container(
//       color: Colors.green,
//       width: 120,
//       height: 120,
//     ),
//     Container(
//       color: Colors.orange,
//       width: 100,
//       height: 100,
//     ),
//   ],
// )

//--TextFormField
// Padding(
//   padding: const EdgeInsets.all(15.0),
//   child: TextFormField(
//     style: const TextStyle(fontSize: 24),
//     // enabled: false,
//     keyboardType: TextInputType.emailAddress,
//     decoration: InputDecoration(
//       prefixIcon: const Icon(Icons.email_outlined, size: 30,color: Colors.deepPurple,),
//       hintText: "Email",
//       hintStyle: const TextStyle(color: Color.fromARGB(255, 169, 130, 238)),
//       fillColor: const Color.fromARGB(255, 247, 245, 254),
//       filled: true,
//       enabledBorder: OutlineInputBorder(
//         borderRadius: BorderRadius.circular(10),
//         borderSide: BorderSide(color: Colors.grey.shade400),
//       ),
//       focusedBorder: OutlineInputBorder(
//         borderSide: BorderSide(color: Colors.grey.shade400),
//         borderRadius: BorderRadius.circular(10),
//       ),
//     ),
//     onChanged: (value){
//       print(value);
//     },
//   ),
// ),

//--ListTile--
// child: ListTile(
//   tileColor: Colors.deepPurpleAccent.withOpacity(0.1),
//   leading: const CircleAvatar(
//     backgroundImage: NetworkImage(
//         "https://images.pexels.com/photos/1043471/pexels-photo-1043471.jpeg?cs=srgb&dl=businessman-fashion-man-1043471.jpg&fm=jpg"),
//   ),
//   title: const Text("Unknown"),
//   subtitle: const Text("Hey you there?"),
//   trailing: const Text("4:19 PM"),
// ),