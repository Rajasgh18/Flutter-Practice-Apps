import 'package:flutter/material.dart';
import 'dart:math';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Random random = Random();
  int randomNum = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Welcome to Our Lottery!",
              style: GoogleFonts.ubuntu(fontSize: 20)),
          backgroundColor: Colors.deepPurple,
        ),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Text("Lottery Winning Number is 4",
                    style: GoogleFonts.ubuntu(
                        fontSize: 28, color: Colors.deepPurple)),
              ),
              const SizedBox(height: 30),
              Container(
                width: 270,
                height: 200,
                decoration: BoxDecoration(
                  color: Colors.deepPurple.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: randomNum == 4
                    ? Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Icon(Icons.done_all_rounded,
                              color: Colors.green, size: 40),
                          const SizedBox(height: 5),
                          Text("You Won!",
                              style: GoogleFonts.ubuntu(
                                  fontSize: 28, color: Colors.green)),
                          const SizedBox(height: 10),
                          Text(
                            "Your number is $randomNum",
                            style: GoogleFonts.ubuntu(
                                fontSize: 20, color: Colors.grey[600]),
                          )
                        ],
                      )
                    : Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                            const Icon(Icons.error,
                                color: Colors.red, size: 40),
                            const SizedBox(height: 10),
                            Text("Better Luck Next Time!",
                                style: GoogleFonts.ubuntu(
                                    fontSize: 24, color: Colors.red)),
                            const SizedBox(height: 10),
                            Text("Your number is $randomNum",
                                style: GoogleFonts.ubuntu(
                                    fontSize: 20, color: Colors.grey[700])),
                            const SizedBox(height: 10),
                            Text("Try Again!",
                                style: GoogleFonts.ubuntu(
                                    fontSize: 22, color: Colors.grey[800])),
                          ]),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.deepPurple,
          onPressed: () {
            randomNum = Random().nextInt(10);
            setState(() {});
          },
          child: const Icon(
            Icons.refresh,
          ),
        ),
      ),
    );
  }
}
