import 'package:flutter/material.dart';

class mercimek extends StatefulWidget {
  @override
  _mercimekState createState() => _mercimekState();
}

class _mercimekState extends State<mercimek> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mercimek Çorbası Tarifi'),
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
              'images/mercimek.jpg',
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
                  Text('1 su bardağı kırmızı mercimek\n'
                      '1 adet kuru soğan\n'
                      '2 yemek kaşığı un\n'
                      '2 diş sarımsak\n'
                      '2 yemek kaşığı tereyağı\n'
                      '1 yemek kaşığı domates salçası\n'
                      '1 tatlı kaşığı pul biber\n'
                      '1 tatlı kaşığı kırmızı toz biber\n'
                      '1 tatlı kaşığı tuz\n'
                      '6 su bardağı su veya tavuk suyu\n'),
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
                      '1. Mercimek yıkanıp süzülür ve bir tencereye konulur. Üzerine su ilave edilip kaynamaya bırakılır.\n'
                      '2. Kaynayan mercimeklerin üzerinde biriken köpükler alınır ve suyu süzülür.\n'
                      '3. Soğan ve sarımsak küçük küçük doğranır ve tereyağı ile birlikte tencereye eklenir. Kısık ateşte pembeleşinceye kadar kavrulur.\n'
                      '4. Salça, pul biber ve kırmızı toz biber eklenir ve birkaç dakika daha kavrulur.\n'
                      '5. Tencereye su veya tavuk suyu ilave edilir ve kaynamaya bırakılır.\n'
                      '6. Kaynamaya başlayınca mercimekler eklenir ve tuz ilave edilir. Kısık ateşte mercimekler tamamen pişene kadar yaklaşık 30 dakika kadar pişirilir.\n'
                      '7. Mercimekler piştikten sonra blender ile pürüzsüz bir kıvam alana kadar karıştırılır.\n'
                      '8. Servis yapılırken üzerine kırmızı pul biber ve tereyağı gezdirilebilir. Afiyet olsun!\n'),
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
