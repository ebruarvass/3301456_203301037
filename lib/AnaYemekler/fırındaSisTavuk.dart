import 'package:flutter/material.dart';

class firindaSisTavuk extends StatefulWidget {
  const firindaSisTavuk({Key? key}) : super(key: key);

  @override
  State<firindaSisTavuk> createState() => _firindaSisTavukState();
}

class _firindaSisTavukState extends State<firindaSisTavuk> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.green[100],
      appBar: AppBar(
        backgroundColor:Colors.green[900] ,
        title: Text("Fırında Şiş Tavuk"),
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
                        "images/tavuk-sis-tarifi1574215186148d08ce677c.jpg"),
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
                height: screenSize.height * 0.35,
                margin: EdgeInsets.only(top: 10),
                child: RichText(
                  text: TextSpan(children: [
                    TextSpan(
                        text: 'MALZEMELER',
                        style: TextStyle(fontSize: 20, color: Colors.white)),
                    TextSpan(
                        text:
                        '\n\n2 adet tavuk göğsü\nÇeri domates\nKırmızı biber\nYeşil biber\nMarine etmek için;\n2 yemek kaşığı yoğurt\nYarım çay bardağı sıvı yağ\n1 yemek kaşığı domates salçasıTuz\nKekik\nPul biber',
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
                        '\n\n1-Tavuk etlerini marine etmek için yoğurdu, salçayı ve baharatları uygun bir kapta karıştıralım.\n2-Küp küp doğradığımız etlerini de bu sosa ilave ederek güzelce karıştıralım. Zamanınız varsa tavukların üzerini streçleyerek 2-3 saat kadar buzdolabında bekletelim.\n3-Çöp şişlere sıra ile domates, tavuk, kırmızı biber ve yeşil biberden dizelim.\n4-İçi pişirme kağıdı dışı alüminyum folyo olan sar pişirden yerleştirdiğimiz tepsimize hazırladığımız çöp şişlerimizi koyalım.\n5-Üzerini de yine sar pişir kağıdı ile kapatalım ve 200°C fırında yaklaşık 25-30 dakika pişirelim.\n6-Pişen tavuklarımızın üzerini açalım ve üzeri kızarıncaya kadar fırına verelim. Üzeri kızaran tavuk şişlerimiz servise hazır.\n\n',
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
