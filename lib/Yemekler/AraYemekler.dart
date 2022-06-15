import 'package:flutter/material.dart';
import 'package:untitled4/AraYemekler/kasarliMantar.dart';
import 'package:untitled4/AraYemekler/pastirmaliHumus.dart';

import '../AraYemekler/patatesGraten.dart';

class AraYemekler extends StatelessWidget {
  const AraYemekler({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.brown[100],
        appBar: AppBar(
          backgroundColor: Colors.green[600],
          title: Text("Ara Yemekler"),
        ),
        body: Center(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
              SizedBox(height: 10),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => patatesGraten()));
                    },
                    child: const Text(
                      "Patates Graten",
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.brown),
                    ),
                  ),
                  Divider(height: 0.1,color: Colors.brown,thickness: 1),

                  SizedBox(height: 10),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => kasarliMantar()));
                    },
                    child: const Text(
                      "Tavada Kaşarlı Mantar",
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.brown),
                    ),
                  ),
                  Divider(height: 0.1,color: Colors.brown,thickness: 1),
                  SizedBox(height: 10),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => pastirmaliHumus()));
                    },
                    child: const Text(
                      "Pastırmalı Humus",
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.brown),
                    ),
                  ),
                  Divider(height: 0.1,color: Colors.brown,thickness: 1),
            ])));
  }
}
