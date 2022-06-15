import 'package:flutter/material.dart';

class kasarliMantar extends StatefulWidget {
  const kasarliMantar({Key? key}) : super(key: key);

  @override
  State<kasarliMantar> createState() => _kasarliMantarState();
}

class _kasarliMantarState extends State<kasarliMantar> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.green[100],
      appBar: AppBar(
        backgroundColor:Colors.green[900] ,
        title: Text("Kasarlı Mantar"),
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
                        "images/tavada-kasarli-mantar-resimli-yemek-tarifi(9).jpg"),
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
                height: screenSize.height * 0.3,
                margin: EdgeInsets.only(top: 10),
                child: RichText(
                  text: TextSpan(children: [
                    TextSpan(
                        text: 'MALZEMELER',
                        style: TextStyle(fontSize: 20, color: Colors.white)),
                    TextSpan(
                        text:
                        '\n\n1 paket mantar\n1-2 tatlı kaşığı tereyağ\n1 çay bardağı kaşar peyniri rendesi\nTuz ( sizde )\nKarabiber ( 1 tutam)\nKekik ( 1 tutam)\nKırmızı pul biber ( 1 tutam ama şart da değil)\n\n',
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
                height: screenSize.height * 0.54,
                margin: EdgeInsets.only(top: 10),
                child: RichText(
                  text: TextSpan(children: [
                    TextSpan(
                        text: 'YAPILIŞI',
                        style: TextStyle(fontSize: 20, color: Colors.white)),
                    TextSpan(
                        text:
                        '\n\n1-Mantarları yıkayın soyun ve iri iri yarım ay şeklinde doğrayın.\n2-Kaşarı rendeleyin.\n3-Yağı tavada eritin erimiş yağa mantarları ekleyin.\n4-Mantarları orta ateşte ateşi çok da kısmadan dikkatli şekilde kavurun.\n5-Mantarların rengi değişti kavruldu şimdi tavaya baharatları ekleyin ( baharat miktarları tamamen sizde) mantarları karıştırmak suretiyle bir dakika kadar da baharatlarla kavurun.\n6-Şimdi tavadaki mantarların üstüne  rendelediğiniz kaşarı serpiştirip tavanın altındaki ateşi kısın tavanın üstünü de bir kapakla kapatarak kaşarların erimesini sağlayın.\n7-Ocağın altını kapatın tavanın kapağını da kaldırın…tavada ki kaşarlı mantarı  1-2 dakika kadar dinlendirip,demlendirip  kaşarlı mantarınızı sıcak sıcak afiyetle tüketin\n\n',
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

