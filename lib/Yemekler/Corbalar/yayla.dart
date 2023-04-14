import 'package:flutter/material.dart';

class yayla extends StatefulWidget {
  @override
  _yaylaState createState() => _yaylaState();
}

class _yaylaState extends State<yayla> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Yayla Çorbası Tarifi'),
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
              'images/yayla.jpg',
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
                  Text('1 su bardağı pirinç\n'
                      '1 litre tavuk suyu\n'
                      '2 su bardağı yoğurt\n'
                      '2 yemek kaşığı un\n'
                      '2 adet yumurta sarısı\n'
                      '1/2 demet taze nane\n'
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
                  Text('1. Pirinci yıkayın ve süzgece koyun.\n'
                      '2. Tavuk suyunu bir tencereye koyup kaynatın. Kaynayan suya pirinci ekleyin ve kısık ateşte pirinçler pişene kadar yaklaşık 15-20 dakika kaynatın.\n'
                      '3. Yoğurdu, unu ve yumurta sarılarını bir kasede çırpın.\n'
                      '4. Kaynayan pirinç suyundan bir kepçe yoğurt karışımına ekleyin ve hızlıca karıştırın. Yoğurtlu karışımı tencereye ekleyin ve karıştırarak pişirin.\n'
                      '5. Taze naneyi ince ince kıyın ve çorbaya ekleyin.\n'
                      '6. Tuz ve karabiberle tatlandırın. İsteğe göre üzerine kızdırılmış tereyağı ve pul biber ekleyerek servis yapabilirsiniz. Afiyet olsun!\n'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
