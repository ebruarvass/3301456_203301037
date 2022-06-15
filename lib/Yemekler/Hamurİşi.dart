import 'package:flutter/material.dart';
import 'package:untitled4/Hamur%C4%B0%C5%9Fi/pankek.dart';
import 'package:untitled4/Hamur%C4%B0%C5%9Fi/pogaca.dart';
import '../Hamurİşi/kiymaliLavasBoregi.dart';
import '../Hamurİşi/krep.dart';
import '../Hamurİşi/milfoyTabanlıKis.dart';
import '../Hamurİşi/suBoregi.dart';

class HamurIsi extends StatelessWidget {
  const HamurIsi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[100],
      appBar: AppBar(
        backgroundColor: Colors.green[600],
        title: Text("Hamur İşi"),
      ),

        body : Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10),
              TextButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => pogaca()));
                },
                child: const Text(
                  "Poğaça",
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
                      builder: (context) => suBoregi()));
                },
                child: const Text(
                  "Su Böreği",
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
                      builder: (context) => pankek()));
                },
                child: const Text(
                  "Pankek",
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
                      builder: (context) => kiymaliLavasBoregi()));
                },
                child: const Text(
                  "Kıymalı Lavaş Böreği",
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
                      builder: (context) => krep()));
                },
                child: const Text(
                  "Krep",
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
                      builder: (context) => milfoyTabanliKis()));
                },
                child: const Text(
                  "Milföy Tabanlı Kiş",
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