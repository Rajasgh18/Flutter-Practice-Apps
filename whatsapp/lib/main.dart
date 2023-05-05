import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Whatsapp',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text("Whatsapp",
                style: GoogleFonts.firaSans(fontWeight: FontWeight.w400)),
            // backgroundColor: Colors.teal,
            actions: [
              const Tab(
                child: Icon(Icons.camera_alt_outlined),
              ),
              const SizedBox(width: 20),
              const Tab(
                child: Icon(Icons.search_rounded),
              ),
              PopupMenuButton(
                  icon: const Icon(Icons.more_vert_rounded),
                  itemBuilder: (context) => [
                        PopupMenuItem(
                            child: Text("New Group",
                                style: GoogleFonts.firaSans())),
                        PopupMenuItem(
                            child: Text("New Broadcast",
                                style: GoogleFonts.firaSans())),
                        PopupMenuItem(
                            child: Text("Linked Devices",
                                style: GoogleFonts.firaSans())),
                        PopupMenuItem(
                            child: Text("Starred Messages",
                                style: GoogleFonts.firaSans())),
                        PopupMenuItem(
                            child: Text("Payments",
                                style: GoogleFonts.firaSans())),
                        PopupMenuItem(
                            child: Text("Settings",
                                style: GoogleFonts.firaSans())),
                      ])
            ],
            bottom: TabBar(
              tabs: [
                // const Tab(icon: Icon(Icons.groups_rounded)),
                Tab(child: Text("Chats", style: GoogleFonts.firaSans())),
                Tab(child: Text("Status", style: GoogleFonts.firaSans())),
                Tab(child: Text("Calls", style: GoogleFonts.firaSans())),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              ListView.builder(
                itemCount: 30,
                itemBuilder: (context, index) {
                  return const ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://images.pexels.com/photos/10080749/pexels-photo-10080749.jpeg?auto=compress&cs=tinysrgb&w=1600'),
                    ),
                    title: Text("Raja Singh"),
                    subtitle: Text("Kya kar rha h!"),
                    trailing: Text("3:20 PM"),
                  );
                },
              ),
              ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return index == 0
                        ? Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              ListTile(
                                contentPadding:
                                    EdgeInsets.only(top: 10, left: 15),
                                leading: CircleAvatar(
                                  radius: 30,
                                  backgroundImage: NetworkImage(
                                      'https://images.pexels.com/photos/10080749/pexels-photo-10080749.jpeg?auto=compress&cs=tinysrgb&w=1600'),
                                ),
                                title: Text("My Status"),
                                subtitle: Text("Tap to add status update"),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 15),
                                child: Text("Recent Updates"),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                            ],
                          )
                        : const ListTile(
                            leading: CircleAvatar(
                              radius: 30,
                              backgroundImage: NetworkImage(
                                  'https://images.pexels.com/photos/10080749/pexels-photo-10080749.jpeg?auto=compress&cs=tinysrgb&w=1600'),
                            ),
                            title: Text("Rahul Singh"),
                            subtitle: Text("Today, 4:50 PM"),
                          );
                  }),
              ListView.builder(
                padding: const EdgeInsets.only(top: 15),
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: const CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage(
                          'https://images.pexels.com/photos/10080749/pexels-photo-10080749.jpeg?auto=compress&cs=tinysrgb&w=1600'),
                    ),
                    title: const Text("Shubham Singh"),
                    subtitle: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        Icon(
                          Icons.arrow_outward_rounded,
                          size: 20,
                          color: Colors.green,
                        ),
                        Text("April 30, 7:11 PM"),
                      ],
                    ),
                    trailing: const Icon(Icons.phone_callback_rounded),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
