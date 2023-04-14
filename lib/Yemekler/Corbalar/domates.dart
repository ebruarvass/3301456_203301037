import 'package:flutter/material.dart';

class domates extends StatefulWidget {
  @override
  _domatesState createState() => _domatesState();
}

class _domatesState extends State<domates> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Domates Çorbası Tarifi'),
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
              'images/domates.jpg',
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
                  Text('5 adet domates\n'
                      '1 adet soğan\n'
                      '2 diş sarımsak\n'
                      '1 yemek kaşığı domates salçası\n'
                      '2 yemek kaşığı tereyağı\n'
                      '3 su bardağı su\n'
                      'Tuz, karabiber, kırmızı biber\n'),
                  SizedBox(height: 16.0),
                  Text(
                    'Yapılışı:',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                  SizedBox(height: 8.0),
                  Text('1. Soğan ve sarımsağı ince ince doğrayın.\n'
                      '2. Tereyağı ile birlikte tavada kavurun.\n'
                      '3. Domatesleri rendeleyin ve tavaya ekleyin.\n'
                      '4. Domates salçasını ekleyin ve karıştırın.\n'
                      '5. Suyu ve sütü ekleyin.\n'
                      '6. Baharatları ekleyin ve karıştırın.\n'
                      '7. Kaynamaya bırakın ve kıvam alana kadar pişirin. Afiyet olsun!.\n'),
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
