import 'package:flutter/material.dart';

class kiymaliLavasBoregi extends StatefulWidget {
  const kiymaliLavasBoregi({Key? key}) : super(key: key);

  @override
  State<kiymaliLavasBoregi> createState() => _kiymaliLavasBoregiState();
}

class _kiymaliLavasBoregiState extends State<kiymaliLavasBoregi> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.green[100],
      appBar: AppBar(
        backgroundColor: Colors.green[900],
        title: Text("Kıymalı Lavaş Böreği"),
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
                height: screenSize.height * 0.35,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: const DecorationImage(
                    image: AssetImage("images/maxresdefault.jpg"),
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
                height: screenSize.height * 0.46,
                margin: EdgeInsets.only(top: 10),
                child: RichText(
                  text: TextSpan(children: [
                    TextSpan(
                        text: 'MALZEMELER',
                        style: TextStyle(fontSize: 20, color: Colors.white)),
                    TextSpan(
                        text:
                            '\n\n4 tane lavaş\n 200 gr kıyma\n 1 çay bardağı sıvı yağ\n 2 tane yeşil biber\n 1 ufak domates\n 1 ufak soğan\n 6-7 dal maydanoz\n 1 yumurtanın sarısı\n Karabiber\n Toz kırmızı biber\n Tuz\n\nLavaşın yumuşaması için;\n\nYarım çay bardağı sıvı yağ\n3 kaşık yoğurt\n\n',
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
                height: screenSize.height * 0.59,
                margin: EdgeInsets.only(top: 10),
                child: RichText(
                  text: TextSpan(children: [
                    TextSpan(
                        text: 'YAPILIŞI',
                        style: TextStyle(fontSize: 20, color: Colors.white)),
                    TextSpan(
                        text:
                            '\n\nEvde artan lavaşlar için şahane bir tarif uydurdum oldu :) Ölçüyü kisi sayınıza göre azaltıp arttırabilirsiniz. \n Soğanları biberleri domatesleri ve maydanozları incecik kıyıp kavuruyoruz. \n En son icerisine kıymamızı ilave ediyoruz. Hepsini kavurdurduktan sonra birer çay kaşığı karabiber ve toz kırmızı biber, 2 çay kaşığı tuz ilave ediyoruz. \n 2 tane lavaşı birleştirip 1 çorba kaşığı yoğurtlu yağılı karışım ile ıslatıyoruz, karışımı içerisine kaşık yardımıyla iyice yediriyoruz. kıymalı harcımızdan lavaşın tam ortasına gelecek ve kare olacak şekilde 2 yemek kaşığı koyup içerisinde yayıyoruz. Önce iki kısa kenarı içe doğru katlıyoruz. Sonra uzun kenarları katlıyoruz açıkta bir yer kalmayacak zarf gibi olacak. \n Fırın kağıdı koyduğumuz tepsiye hepsini diziyoruz. \n Üzerine yumurta sarısını sürüp 160 derece fırında üstü kızarana kadar pişiriyoruz.\n\n',
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
