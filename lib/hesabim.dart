import 'package:flutter/material.dart';
class hesabim extends StatefulWidget {
  const hesabim({Key? key}) : super(key: key);

  @override
  State<hesabim> createState() => _hesabimState();
}

class _hesabimState extends State<hesabim> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.brown[200],
        appBar: AppBar(
        backgroundColor:Colors.green[900] ,
        title: Text("Hesabım"),
    ),
    );
  }
}