import 'package:flutter/material.dart';

class tavuk extends StatefulWidget {
  @override
  _tavukState createState() => _tavukState();
}

class _tavukState extends State<tavuk> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tavuk Çorbası Tarifi'),
        actions: [
          IconButton(
            icon: Icon(
              isFavorite ? Icons.favorite : Icons.favorite_border,
              color: Colors.white,
            ),
            onPressed: () {
              setState(() {
                isFavorite = !isFavorite;
              });
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'images/tavuk.jpg',
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 16.0),
                  Text(
                    'Malzemeler:',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                  SizedBox(height: 8.0),
                  Text('2 adet tavuk göğsü\n'
                      '1 adet havuç\n'
                      '2 diş sarımsak\n'
                      '1 adet soğan\n'
                      '1 adet patates\n'
                      '1 çay bardağı pirinç\n'
                      '1 yemek kaşığı tereyağı\n'
                      '8 su bardağı su\n'
                      'Tuz, karabiber\n'),
                  SizedBox(height: 16.0),
                  Text(
                    'Yapılışı:',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                  SizedBox(height: 8.0),
                  Text('1. Tavuk göğsünü küp küp doğrayın.\n'
                      '2. Soğanı ve sarımsağı küçük parçalar halinde doğrayın.\n'
                      '3. Havuç ve patatesi küçük küpler halinde doğrayın.\n'
                      '4. Tereyağını bir tencereye koyun ve eritin.\n'
                      '5. Soğan ve sarımsağı tencereye ekleyin ve pembeleşinceye kadar kavurun.\n'
                      '6. Tavuk göğsünü tencereye ekleyin ve 5-6 dakika boyunca pişirin.\n'
                      '7. Havuç ve patatesi tencereye ekleyin ve 2-3 dakika boyunca pişirin.\n'
                      '8. Pirinci ekleyin ve 1-2 dakika boyunca karıştırarak pişirin.\n'
                      '9. 8 su bardağı suyu tencereye ekleyin ve kaynatın.\n'
                      '10. Tuz ve karabiber ekleyin ve çorbanın kıvamını ayarlayın.\n'
                      '11. Çorba kaynamaya başladıktan sonra altını kısın ve 20-25 dakika boyunca pişirin.\n'
                      '12. Sıcak servis yapın ve dilediğiniz gibi süsleyin. Afiyet olsun!\n'),
                  SizedBox(height: 16.0),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
