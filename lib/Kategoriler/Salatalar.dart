import 'package:flutter/material.dart';

class Salatalar extends StatefulWidget {
  const Salatalar({Key? key}) : super(key: key);

  @override
  State<Salatalar> createState() => _SalatalarState();
}

class _SalatalarState extends State<Salatalar> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.green[900],
        title: Text("Salatalar"),
      ),
    );
  }
}
