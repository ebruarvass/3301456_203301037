import 'package:flutter/material.dart';
import 'package:untitled4/AnaYemekler/karn%C4%B1yar%C4%B1k.dart';
import 'package:untitled4/AnaYemekler/kuruFasulye.dart';
import 'package:untitled4/AnaYemekler/izmirK%C3%B6fte.dart';
import 'package:untitled4/AnaYemekler/f%C4%B1r%C4%B1ndaSisTavuk.dart';

import 'package:flutter/cupertino.dart';

import '../AnaYemekler/pizza.dart';

class AnaYemekler extends StatelessWidget {
  const AnaYemekler({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.brown[100],
        appBar: AppBar(
          backgroundColor: Colors.green[600],
          title: Text("Ana Yemekler"),

        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(Icons.keyboard_arrow_right,color: Colors.brown),
              SizedBox(height: 10),
              TextButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => karniyarik()));
                },
                child: const Text(
                  "Karnıyarık",
                  style: TextStyle(fontSize: 18, color: Colors.brown),

                ),
              ),
              Divider(height: 0.1, color: Colors.brown, thickness: 1),
              SizedBox(height: 10),
              TextButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => kuruFasulye()));
                },
                child: const Text(
                  "Kuru Fasulye",
                  style: TextStyle(fontSize: 18, color: Colors.brown),
                ),
              ),
              Divider(height: 0.1, color: Colors.brown, thickness: 1),
              SizedBox(height: 10),
              TextButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => izmirKofte()));
                },
                child: const Text(
                  "İzmir Köfte",
                  style: TextStyle(fontSize: 18, color: Colors.brown),
                ),
              ),
              Divider(height: 0.1, color: Colors.brown, thickness: 1),
              SizedBox(height: 10),
              TextButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => pizza()));
                },
                child: const Text(
                  "Pizza",
                  style: TextStyle(fontSize: 18, color: Colors.brown),
                ),
              ),
              Divider(height: 0.1, color: Colors.brown, thickness: 1),
              SizedBox(height: 10),
              TextButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => firindaSisTavuk()));
                },
                child: const Text(
                  "Fırında Şiş Tavuk",
                  style: TextStyle(fontSize: 18, color: Colors.brown),
                ),
              ),
              Divider(height: 0.1, color: Colors.brown, thickness: 1),
            ],
          ),
        ));
  }
}
