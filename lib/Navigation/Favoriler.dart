import 'package:flutter/material.dart';

class Favoriler extends StatefulWidget {
  const Favoriler({Key? key}) : super(key: key);

  @override
  State<Favoriler> createState() => _FavorilerState();
}

class _FavorilerState extends State<Favoriler> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.green[900],
        title: Text("Favoriler"),
      ),
    );
  }
}
