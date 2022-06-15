import 'package:flutter/material.dart';

class tavukCorbasi extends StatefulWidget {
  const tavukCorbasi({Key? key}) : super(key: key);

  @override
  State<tavukCorbasi> createState() => _tavukCorbasiState();
}

class _tavukCorbasiState extends State<tavukCorbasi> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.green[100],
      appBar: AppBar(
        backgroundColor: Colors.green[900],
        title: Text("Tavuk Çorbası"),
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
      body: Center(
        child: SingleChildScrollView(
          child: Container(
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
                            "images/WhatsApp Image 2022-04-06 at 21.32.177.jpeg"),
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
                            style:
                            TextStyle(fontSize: 20, color: Colors.white)),
                        TextSpan(
                            text:
                            '\n\n1 parça tavuk göğsü (kemikli olursa çok daha lezzetli olur)\nHaşladığımız tavuğun suyu (yaklaşık 6-7 su bardağı)\n1 çay bardağı tel şehriye\n2 yemek kaşığı un\n1 tatlı kaşığı tuz\nKarabiber\nTerbiyesi için;\n2 yemek kaşığı yoğurt\n1 yumurtanın sarısı\nÇeyrek limon suyu\n2 yemek kaşığı un\n\n',
                            style:
                            TextStyle(fontSize: 15, color: Colors.white)),
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
                    height: screenSize.height * 0.55,
                    margin: EdgeInsets.only(top: 10),
                    child: RichText(
                      text: TextSpan(children: [
                        TextSpan(
                            text: 'YAPILIŞI',
                            style:
                            TextStyle(fontSize: 20, color: Colors.white)),
                        TextSpan(
                            text:
                            '\n\n1-Öncelikle tavuğumuzu 1 litre suda haşlayalım.\n2-Yumuşayan tavuklarımızın suyunu ayırıp tavukları ufak ufak bölelim.\n3-Tencereye az yağ alıp tel şehriyelerimizi kavuralım.\n4-İçerisine unu ilave edip kokusu çıkana kadar kavurmaya devam edelim.\n5-Ayırdığımız tavuk suyunu ekleyelim. Kaynamaya bırakalım.\n6-Terbiyesi için derin bi kaseye malzemeleri alıp karıştıralım.\n7-Kaynayan çorbadan 1 kepçe ekleyip terbiyemizi ılıştıralım.\n8-Tencereye ekleyip karıştıralım çorbamızı.\n9-En son böldüğümüz tavukları ve baharatları ilave edip yaklaşık 10 dakika çorbamızı kaynatalım. (yoğunluğuna göre sıcak su ilave edebilirsiniz. ).\n10-Üzerine nane ve toz biber yakıp güzelce karıştıralım. Afiyet olsun.\n\n',
                            style:
                            TextStyle(fontSize: 15, color: Colors.white)),
                      ]),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
