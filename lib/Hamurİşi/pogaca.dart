import 'package:flutter/material.dart';

class pogaca extends StatefulWidget {
  const pogaca({Key? key}) : super(key: key);

  @override
  State<pogaca> createState() => _pogacaState();
}

class _pogacaState extends State<pogaca> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.green[100],
      appBar: AppBar(
        backgroundColor:Colors.green[900] ,
        title: Text("Poğaça"),
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
                        "images/618931cd4e3fe10a2ca487f9.webp"),
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
                height: screenSize.height * 0.26,
                margin: EdgeInsets.only(top: 10),
                child: RichText(
                  text: TextSpan(children: [
                    TextSpan(
                        text: 'MALZEMELER',
                        style: TextStyle(fontSize: 20, color: Colors.white)),
                    TextSpan(
                        text:
                        '\n\n2,5 su bardağı ılık süt (500 ml) \nYarım su bardağı sıvı yağ (100 ml) \n1 adet yumurta akı\n3 yemek kaşığı toz şeker\n1 yemek kaşığı tuz\n1 paket instant maya\n6,5 – 7 su bardağı un\n\n',
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
                height: screenSize.height * 0.8,
                margin: EdgeInsets.only(top: 10),
                child: RichText(
                  text: TextSpan(children: [
                    TextSpan(
                        text: 'YAPILIŞI',
                        style: TextStyle(fontSize: 20, color: Colors.white)),
                    TextSpan(
                        text:
                        '\n\nPamuk poğaça için yoğurma kabına, süt, şeker, tuz, sıvı yağ ve yumurta akını alarak şeker eriyene kadar karıştıralım.\nArdından unun bir kısmını ve instant mayayı ekleyerek karıştırmaya devam edelim.\nHamurumuz koyulaştıktan sonra spatulayı bir kenara bırakalım ve elimizle hamuru yoğurmaya başlayalım. \nGüzelce toparlanan hamurumuz hazır. Hamurun üzerini streç filmle kapatalım.\nÜzerine temiz bir örtü örterek yaklaşık 1 saat mayalanmaya bırakalım.\nSürenin sonunda streç filmi çıkaralım ve hamurun havasını aldıktan sonra hamuru tezgaha alarak şöyle bir tekrardan toparlayalım.\nBir bıçakla ya hamur kesici yardımıyla hamuru önce iki eşit parçaya ardından yine her parçayı eşit olmasına dikkat ederek 16 parçaya bölelim.\nElde ettiğimiz her bir hamur parçasını hafif unlanmış zeminde içe doğru toparlayalım.\nArdından yuvarlayarak beze haline getirelim.\nHamurlarımızı yuvarlayarak beze haline getirdikten sonra fırın tepsisine yerleştirelim.\nÜzerlerine ayırdığımız yumurta sarısını çırparak bir fırça yardımıyla sürelim.\nSon olarak poğaçalarımızın üzerine susam serpelim. Poğaçalarımızı 180 derece fırında altı üstü güzelce kızarıncaya kadar fansız ayarda 20 dakika boyunca pişmeye bırakalım.\nAltı üstü güzelce kızaran poğaçalarımız servise hazır. Afiyet olsun.\n\n',
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


