import 'package:flutter/material.dart';

class AnaYemekler extends StatefulWidget {
  const AnaYemekler({Key? key}) : super(key: key);

  @override
  State<AnaYemekler> createState() => _AnaYemeklerState();
}

class _AnaYemeklerState extends State<AnaYemekler> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.green[900],
        title: Text("Ana Yemekler"),
      ),
    );
  }
}
