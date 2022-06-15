import 'package:flutter/material.dart';

class mantarCorbasi extends StatefulWidget {
  const mantarCorbasi({Key? key}) : super(key: key);

  @override
  State<mantarCorbasi> createState() => _mantarCorbasiState();
}

class _mantarCorbasiState extends State<mantarCorbasi> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.green[100],
      appBar: AppBar(
        backgroundColor:Colors.green[900] ,
        title: Text("Kremalı Mantar Çorbası"),
          actions:[
            IconButton(
              tooltip: "Favorilere ekle",
              splashColor: Colors.white70,
              onPressed: () {},
              icon: Icon(Icons.favorite_outlined, size: 30),
              padding: EdgeInsets.only(right: 15.0),
              color: Colors.white,
            ),
          ]
      ),

      body: Container(
        width: screenSize.width,
        color: Colors.brown[200],
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 20),
                width: screenSize.width * 0.9,
                height: screenSize.height * 0.4,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: const DecorationImage(
                    image: AssetImage(
                        "images/kremalımantar.jpeg"),
                    fit: BoxFit.cover,
                  ),
                  border: Border.all(
                    color: Colors.green.shade600,
                    width: 5,
                  ),
                ),
              ),

              Container(
                decoration: BoxDecoration(
                    color: Colors.green.shade200,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: Colors.green.shade600,
                      width: 5,
                    )),
                padding: EdgeInsets.all(10),
                width: screenSize.width * 0.9,
                height: screenSize.height * 0.4,
                margin: EdgeInsets.only(top: 10),
                child: RichText(
                  text: TextSpan(children: [
                    TextSpan(
                        text: 'MALZEMELER',
                        style: TextStyle(fontSize: 20, color: Colors.white)),
                    TextSpan(
                        text:
                        '\n\n400 gram mantar\n1 adet orta boy kuru soğan\n1-2 yemek kaşığı un\n1,5 su bardağı süt veya 200 ml sıvı krema\n3 yemek kaşığı sıvı yağ\n1 yemek kaşığı tereyağı\nTuz\nKarabiber\n1 tutam taze maydanoz\n3,5 su bardağı oda sıcaklığında su',
                        style: TextStyle(fontSize: 15, color: Colors.white)),
                  ]),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.green.shade200,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: Colors.green.shade600,
                      width: 5,
                    )),
                padding: EdgeInsets.all(10),
                width: screenSize.width * 0.9,
                height: screenSize.height * 0.5,
                margin: EdgeInsets.only(top: 10),
                child: RichText(
                  text: TextSpan(children: [
                    TextSpan(
                        text: 'YAPILIŞI',
                        style: TextStyle(fontSize: 20, color: Colors.white)),
                    TextSpan(
                        text:
                        '\n\n1-Mantarları güzelce yıkayalım ve saplarını çıkarıp küp küp doğrayalım.Sıvı yağ ve tereyağı tencereye koyup ince ince doğradığımız soğanı ekleyelim ve biraz pembeleşince, doğradığımız mantarları da ilave edelim ve suyunu salıp çekene kadar kavuralım.\n2-Daha sonra, unu ekleyip 1 dakika daha kavurduktan sonra, 1,5 su bardağı sütü (arzu eden paket krema da kullanabilir ama ben sütle yapıyorum gayet güzel oluyor) suyunu da ekleyip orta hararetli ateşte kaynamaya başlayana kadar karıştırarak pişirin.\n3-Altını kısıp 10 dakika kadar kaynatın.\n4-Ateşten almadan tuz ve karabiberini ve ince ince doğradığımız maydanozları da ekleyip bir taşım daha kaynatın çorbamız hazırdır. Afiyet olsun\n\n',
                        style: TextStyle(fontSize: 15, color: Colors.white)),
                  ]),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

