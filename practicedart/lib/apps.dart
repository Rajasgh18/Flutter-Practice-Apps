import 'package:flutter/material.dart';

class Apps extends StatelessWidget {
  static const String id = 'apps';
  const Apps({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Apps")),
    );
  }
}
