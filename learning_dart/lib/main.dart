import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          child: SafeArea(
            child: Column(children: [
              const SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Image(
                    width: 70,
                    height: 70,
                    image: AssetImage("images/logo.png"),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text("Mechanical",
                            style: TextStyle(
                                fontFamily: "Rubik",
                                fontWeight: FontWeight.w500,
                                fontSize: 34)),
                        Text("Box",
                            style: TextStyle(
                                fontFamily: "Rubik",
                                color: Color(0xffF9703B),
                                fontWeight: FontWeight.w500,
                                fontSize: 34))
                      ]),
                ],
              ),
              const SizedBox(height: 50),
              const Text("Log In",
                  style: TextStyle(
                      fontFamily: "Rubik",
                      fontSize: 24,
                      fontWeight: FontWeight.w500)),
              const SizedBox(height: 10),
              const Text(
                  "Lorem ipsum dolor sit amet, \nconsectetur adipscing elit",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: "Rubik",
                    fontSize: 16,
                  )),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextFormField(
                  decoration: InputDecoration(
                      hintText: "Email",
                      fillColor: const Color(0xffF8F9FA),
                      filled: true,
                      prefixIcon: const Icon(Icons.email_outlined,
                          color: Color(0xff323F4B)),
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Color(0xffE4E7EB)),
                          borderRadius: BorderRadius.circular(8)),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Color(0xffE4E7EB)),
                        borderRadius: BorderRadius.circular(8),
                      )),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextFormField(
                  decoration: InputDecoration(
                      hintText: "Password",
                      fillColor: const Color(0xffF8F9FA),
                      filled: true,
                      prefixIcon: const Icon(Icons.lock_outline,
                          color: Color(0xff323F4B)),
                      suffixIcon: const Icon(
                        Icons.remove_red_eye_outlined,
                        color: Color(0xff323F4B),
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Color(0xffE4E7EB)),
                          borderRadius: BorderRadius.circular(8)),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Color(0xffE4E7EB)),
                        borderRadius: BorderRadius.circular(8),
                      )),
                ),
              ),
              const SizedBox(
                height: 60,
              ),
              Container(
                decoration: BoxDecoration(
                    color: const Color(0xffF9703B),
                    borderRadius: BorderRadius.circular(10)),
                width: 250,
                height: 50,
                child: const Center(
                  child: Text(
                    "Log In",
                    style: TextStyle(
                        fontFamily: "Rubik", fontSize: 20, color: Colors.white),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    "Don't have an account? ",
                    style: TextStyle(fontFamily: "Rubik", fontSize: 16),
                  ),
                  Text(
                    "Sign Up",
                    style: TextStyle(
                        fontFamily: "Rubik",
                        fontSize: 16,
                        color: Color(0xffF9703B),
                        fontWeight: FontWeight.w500),
                  )
                ],
              )
            ]),
          ),
        ),
      ),
    );
  }
}
