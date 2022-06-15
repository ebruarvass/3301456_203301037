import 'package:flutter/material.dart';
import 'package:untitled4/Tatl%C4%B1lar/revani.dart';
import 'package:untitled4/Tatl%C4%B1lar/tiramisu.dart';
import '../Tatlılar/gelinPastasi.dart';
import '../Tatlılar/kibrisTatlisi.dart';
import '../Tatlılar/mozaikPasta.dart';
import '../Tatlılar/sutlac.dart';

class Tatlilar extends StatelessWidget {
  const Tatlilar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.brown[100],
      appBar: AppBar(
        backgroundColor: Colors.green[600],
        title: Text("Tatlılar"),
      ),
        body : Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10),
              TextButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => kibrisTatlisi()));
                },
                child: const Text(
                  "Kıbrıs Tatlısı",
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
                      builder: (context) => sutlac()));
                },
                child: const Text(
                  "Sütlaç",
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
                      builder: (context) => gelinPastasi()));
                },
                child: const Text(
                  "Gelin Pastası",
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
                    builder: (context) => revani()));
              },
              child: const Text(
                "Revani",
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
                      builder: (context) => mozaikPasta()));
                },
                child: const Text(
                  "Mozaik Pasta",
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
                      builder: (context) => tiramisu()));
                },
                child: const Text(
                  "Tiramisu",
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