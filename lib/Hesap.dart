import 'package:flutter/material.dart';
class Hesap extends StatefulWidget {
  const Hesap({Key? key}) : super(key: key);

  @override
  State<Hesap> createState() => _HesapState();
}

class _HesapState extends State<Hesap> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[100],
      appBar: AppBar(
        backgroundColor: Colors.green[600],
        title: Text("Hesabımr"),
      ),
    );
  }
}