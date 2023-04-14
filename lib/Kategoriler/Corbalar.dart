import 'package:flutter/material.dart';
import 'package:yemektarifleri/Yemekler/Corbalar/brokoli.dart';
import 'package:yemektarifleri/Yemekler/Corbalar/domates.dart';
import 'package:yemektarifleri/Yemekler/Corbalar/mercimek.dart';
import 'package:yemektarifleri/Yemekler/Corbalar/sehriye.dart';
import 'package:yemektarifleri/Yemekler/Corbalar/tavuk.dart';
import 'package:yemektarifleri/Yemekler/Corbalar/yayla.dart';

class Corbalar extends StatelessWidget {
  final List<String> soupTypes = [
    'Brokoli Çorbası',
    'Domates Çorbası',
    'Mercimek Çorbası',
    'Tavuk Çorbası',
    'Şehriye Çorbası',
    'Yayla Çorbası',
  ];

  final List<String> soupImages = [
    'images/brokoli.jpg',
    'images/domates.jpg',
    'images/mercimek.jpg',
    'images/tavuk.jpg',
    'images/sehriye.jpg',
    'images/yayla.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Çorbalar'),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 16.0,
          crossAxisSpacing: 16.0,
          childAspectRatio: 0.75,
        ),
        itemCount: soupTypes.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () => {
              if (soupTypes[index] == 'Brokoli Çorbası')
                {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => brokoli()),
                  )
                }
              else if (soupTypes[index] == 'Domates Çorbası')
                {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => domates()),
                  )
                }
              else if (soupTypes[index] == 'Mercimek Çorbası')
                {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => mercimek()),
                  )
                }
              else if (soupTypes[index] == 'Tavuk Çorbası')
                {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => tavuk()),
                  )
                }
              else if (soupTypes[index] == 'Yayla Çorbası')
                {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => yayla()),
                  )
                }
              else if (soupTypes[index] == 'Şehriye Çorbası')
                {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => sehriye()),
                  )
                }
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.0),
                image: DecorationImage(
                  image: AssetImage(soupImages[index]),
                  fit: BoxFit.cover,
                ),
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.0),
                  gradient: LinearGradient(
                    begin: Alignment.bottomRight,
                    stops: [0.1, 0.9],
                    colors: [
                      Colors.black.withOpacity(0.8),
                      Colors.white.withOpacity(0.1),
                    ],
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      soupTypes[index],
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
