import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:untitled4/Corbalar/ezogelinCorbasi.dart';
import 'package:untitled4/Corbalar/sehriyeCorbasi.dart';

import 'package:untitled4/Corbalar/tavukCorbasi.dart';

import '../Corbalar/mantarCorbasi.dart';
import '../Corbalar/mercimekCorbasi.dart';
import '../Corbalar/yaylaCorbasi.dart';

class Corbalar extends StatelessWidget {
  const Corbalar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.brown[100],
        appBar: AppBar(
          backgroundColor: Colors.green[600],
          title: Text("Çorbalar"),
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10, width: 50),
              TextButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => mercimekCorbasi()));
                },
                child: const Text(
                  "Mercimek Çorbası",
                  style: TextStyle(fontSize: 18, color: Colors.brown),
                ),
              ),
              Divider(height: 0.1, color: Colors.brown, thickness: 1),
              SizedBox(height: 10),
              TextButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => yaylaCorbasi()));
                },
                child: const Text(
                  "Yayla Çorbası",
                  style: TextStyle(fontSize: 18, color: Colors.brown),
                ),
              ),
              Divider(height: 0.1, color: Colors.brown, thickness: 1),
              SizedBox(height: 10),
              TextButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => ezogelinCorbasi()));
                },
                child: const Text(
                  "Ezogelin Çorbası",
                  style: TextStyle(fontSize: 18, color: Colors.brown),
                ),
              ),
              Divider(height: 0.1, color: Colors.brown, thickness: 1),
              SizedBox(height: 10),
              TextButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => sehriyeCorbasi()));
                },
                child: const Text(
                  "Şehriye Çorbası",
                  style: TextStyle(fontSize: 18, color: Colors.brown),
                ),
              ),
              Divider(height: 0.1, color: Colors.brown, thickness: 1),
              SizedBox(
                height: 10,
                width: 100,
              ),
              TextButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => mantarCorbasi()));
                },
                child: const Text(
                  "Kremalı Mantar Çorbası",
                  style: TextStyle(fontSize: 18, color: Colors.brown),
                ),
              ),
              Divider(height: 0.1, color: Colors.brown, thickness: 1),
              SizedBox(height: 10),
              TextButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => tavukCorbasi()));
                },
                child: const Text(
                  "Tavuk Çorbası",
                  style: TextStyle(fontSize: 18, color: Colors.brown),
                ),
              ),
              Divider(height: 0.1, color: Colors.brown, thickness: 1),
            ],
          ),
        ));
  }
}
