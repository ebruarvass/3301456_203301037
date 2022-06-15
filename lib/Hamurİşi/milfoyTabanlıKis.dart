import 'package:flutter/material.dart';

class milfoyTabanliKis extends StatefulWidget {
  const milfoyTabanliKis({Key? key}) : super(key: key);

  @override
  State<milfoyTabanliKis> createState() => _milfoyTabanliKisState();
}

class _milfoyTabanliKisState extends State<milfoyTabanliKis> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.green[100],
      appBar: AppBar(
        backgroundColor:Colors.green[900] ,
        title: Text("Milfoy Tabanlı Kiş"),
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
                        "images/milfoy-tabanli-kis-one-cikan.webp"),
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
                height: screenSize.height * 0.38,
                margin: EdgeInsets.only(top: 10),
                child: RichText(
                  text: TextSpan(children: [
                    TextSpan(
                        text: 'MALZEMELER',
                        style: TextStyle(fontSize: 20, color: Colors.white)),
                    TextSpan(
                        text:
                        '\n\n3 tane dikdörtgen milföy\n2 tane yumurta\n1 kutu ( 1 su bardağı) krema\nTuz, karabiber\n1 su bardağı kaşar rendesi( ilave olarak biraz da kahvaltılık peynir koyabilirsiniz. ben peynir topları kullandım)\n5 tane çeri domates\n1 tane soğan\n2 yemek kaşığı zeytinyağı\n6-7 yaprak ıspanak\n10 dilim sucuk\n\n',
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
                height: screenSize.height * 0.6,
                margin: EdgeInsets.only(top: 10),
                child: RichText(
                  text: TextSpan(children: [
                    TextSpan(
                        text: 'YAPILIŞI',
                        style: TextStyle(fontSize: 20, color: Colors.white)),
                    TextSpan(
                        text:
                        '\n\n1 tane soğan söğüşlük doğranıp zeytinyağında sotelenir.\n1-10 dilim sucuk ikiye bölünerek, ıspanaklar iri iri doğranarak ilave edilir.\n2-3 -5 tur çevrilerek pişirilir.\n3-Milföyler buzluktan çıkarılıp unlanmış tezgaha hafif üst üste gelecek şekilde koyulur.\n4-Birbirlerini tutmaları yeterli.\n5-Biraz çözününce üstlerine un serpiştirilip merdaneyle tart kalıbı büyüklüğünde açılır.\n6-Yağlanmış tart kalıbına alınıp sarkan fazlalıklar merdaneyle kalıbın üstünden bastırarak geçilerek kesilir.\n7-Çatalla dibine ve kenarlarına delikler açılır.\n8-Yumurtalar çırpılır krema, tuz, karabiber, peynirler ve ıspanaklı harç( ıspanaklı kısımdan biraz ayıralım. sonra üstüne koymak için) eklenip kalıba dökülür.\n9-Üstüne ayırdığımız ıspanaklar ve ikiye böldüğümüz çeri domatesler gelişi güzel yerleştirilip 200 derece fırında yarım saat pişirilir.|n10-Biraz ılıyınca servis yapılır.\n\n',
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
