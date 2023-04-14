import 'package:flutter/material.dart';

class Tatlilar extends StatefulWidget {
  const Tatlilar({Key? key}) : super(key: key);

  @override
  State<Tatlilar> createState() => _TatlilarState();
}

class _TatlilarState extends State<Tatlilar> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.green[900],
        title: Text("Tatlılar"),
      ),
    );
  }
}
