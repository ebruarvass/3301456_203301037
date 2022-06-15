import 'package:flutter/material.dart';
import 'package:untitled4/Salatalar/patatesSalatasi.dart';
import 'package:untitled4/Salatalar/rusSalatas%C4%B1.dart';

import '../Salatalar/borulceSalatasi.dart';
import '../Salatalar/gavurdagiSalatasi.dart';
import '../Salatalar/havucluKereviz.dart';
import '../Salatalar/makarnaSalatasi.dart';


class Salatalar extends StatelessWidget {
  const Salatalar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.brown[100],
      appBar: AppBar(
        backgroundColor: Colors.green[600],
        title: Text("Salatalar"),
      ),

        body : Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10),
              TextButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => gavurdagiSalatasi()));
                },
                child: const Text(
                  "Gavurdağı Salatası",
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
                      builder: (context) => makarnaSalatasi()));
                },
                child: const Text(
                  "Makarna Salatası",
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
                      builder: (context) => rusSalatasi()));
                },
                child: const Text(
                  "Rus Salatası",
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
                      builder: (context) => borulceSalatasi()));
                },
                child: const Text(
                  "Börülce Salatası",
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
                      builder: (context) => havucluKereviz()));
                },
                child: const Text(
                  "Havuçlu Kereviz Salatası",
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
                      builder: (context) => patatesSalatasi()));
                },
                child: const Text(
                  "Patates Salatası",
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.brown),
                ),
              ),
              Divider(height: 0.1,color: Colors.brown,thickness: 1),

            ],
          ),
        )
    );
  }
}