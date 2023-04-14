import 'package:flutter/material.dart';

class AraYemekler extends StatefulWidget {
  const AraYemekler({Key? key}) : super(key: key);

  @override
  State<AraYemekler> createState() => _AraYemeklerState();
}

class _AraYemeklerState extends State<AraYemekler> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.green[900],
        title: Text("Ara Yemekler"),
      ),
    );
  }
}
