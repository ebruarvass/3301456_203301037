import 'package:flutter/material.dart';

class brokoli extends StatefulWidget {
  @override
  _brokoliState createState() => _brokoliState();
}

class _brokoliState extends State<brokoli> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Brokoli Çorbası Tarifi'),
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
              'images/brokoli.jpg',
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
                  Text('1 adet brokoli\n'
                      '1 adet havuç\n'
                      '1 adet soğan\n'
                      '2 diş sarımsak\n'
                      '2 yemek kaşığı tereyağı\n'
                      '2 yemek kaşığı un\n'
                      '4 su bardağı tavuk suyu\n'
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
                      '1. Brokoliyi küçük parçalara ayırın, havucu da küçük küpler halinde doğrayın. Soğanı da ince ince doğrayın.\n'
                      '2. Tencereye tereyağını ekleyin ve eritin. Soğanı ekleyip kavurun.\n'
                      '3. Sarımsakları ekleyin ve kokusu çıkana kadar kavurmaya devam edin.\n'
                      '4. Unu ekleyip kavurmaya devam edin. Ardından tavuk suyunu yavaş yavaş ekleyin ve karıştırmaya devam edin.\n'
                      '5. Havuçları ekleyin ve 10-15 dakika pişirin.\n'
                      '6. Brokoliyi de ekleyin ve 5-10 dakika daha pişirin.\n'
                      '7. Çorbanın içine sütü ekleyin, tuz ve karabiberle tatlandırın.\n'
                      '8. Blender yardımıyla çorbayı pürüzsüz bir kıvama getirin.\n'
                      '9. Sıcak servis yapın. Afiyet olsun!\n'),
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
