import 'package:flutter/material.dart';

class HamurIsi extends StatefulWidget {
  const HamurIsi({Key? key}) : super(key: key);

  @override
  State<HamurIsi> createState() => _HamurIsiState();
}

class _HamurIsiState extends State<HamurIsi> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.green[900],
        title: Text("Hamur İşi"),
      ),
    );
  }
}
