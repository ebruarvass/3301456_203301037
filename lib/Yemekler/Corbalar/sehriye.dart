import 'package:flutter/material.dart';

class sehriye extends StatefulWidget {
  @override
  _sehriyeState createState() => _sehriyeState();
}

class _sehriyeState extends State<sehriye> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Şehriye Çorbası Tarifi'),
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
              'images/sehriye.jpg',
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
                  Text('1 su bardağı şehriye\n'
                      '1 adet havuç\n'
                      '1 adet kereviz\n'
                      '1 adet soğan\n'
                      '3 yemek kaşığı tereyağı veya margarin\n'
                      '1 yemek kaşığı un\n'
                      '6 su bardağı tavuk veya et suyu\n'
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
                  Text(
                      '1. Soğanı küçük küpler halinde doğrayın. Havuç ve kerevizi de küp şeklinde doğrayın.\n'
                      '2. Tencereye tereyağını veya margarini ekleyin ve eritin.\n'
                      '3. Soğanı tencereye ekleyin ve kavurun. Ardından havuç ve kerevizi de ekleyin ve birkaç dakika daha kavurun.\n'
                      '4. Unu tencereye ekleyin ve birkaç dakika kavurun.\n'
                      '5. Tavuk veya et suyunu tencereye ekleyin ve karıştırın.\n'
                      '6. Şehriyeleri de tencereye ekleyin ve çorbayı orta ateşte yaklaşık 15 dakika pişirin.\n'
                      '7. Çorbayı tuz ve karabiberle tatlandırın.\n'
                      '8. Çorbayı sıcak servis yapın. Afiyet olsun!\n'),
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
