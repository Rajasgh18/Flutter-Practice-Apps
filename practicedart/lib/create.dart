import 'package:flutter/material.dart';

class Create extends StatelessWidget{
  static const String id = 'create';
  const Create({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: const Text("Create")),
    );
  }
}