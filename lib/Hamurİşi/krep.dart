import 'package:flutter/material.dart';

class krep extends StatefulWidget {
  const krep({Key? key}) : super(key: key);

  @override
  State<krep> createState() => _krepState();
}

class _krepState extends State<krep> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.green[100],
      appBar: AppBar(
        backgroundColor:Colors.green[900] ,
        title: Text("Krep"),
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
                        "images/,.webp"),
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
                height: screenSize.height * 0.25,
                margin: EdgeInsets.only(top: 10),
                child: RichText(
                  text: TextSpan(children: [
                    TextSpan(
                        text: 'MALZEMELER',
                        style: TextStyle(fontSize: 20, color: Colors.white)),
                    TextSpan(
                        text:
                        '\n\n2 adet yumurta\n2 su bardağından biraz az un\n2 su bardağı süt (dilerseniz yarı yarıya süt ve su karışık kullanılabilir)\n1 çay kaşığı tuz\npişirmek için tereyağı veya sıvı yağ\n\n',
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
                height: screenSize.height * 0.35,
                margin: EdgeInsets.only(top: 10),
                child: RichText(
                  text: TextSpan(children: [
                    TextSpan(
                        text: 'YAPILIŞI',
                        style: TextStyle(fontSize: 20, color: Colors.white)),
                    TextSpan(
                        text:
                        '\n\n1-Krep tarifi hazırlamak için un, süt ve su ile hiç topak kalmayana kadar iyice çırpın.\n2-Yumurtaları ekleyin biraz daha çırpın. Kek hamurundan daha akıcı bir kıvamda hamur edin.\n3-Teflon tavaya 1 çay kaşığı kadar tereyağı veya sıvı yağ koyup fırça ile yayın.\n4-Kızgın tavaya 1 kepçe krep hamuru dökün, sağa sola eğerek yayın.\n5-Her iki tarafını çevirerek hafif kızarana kadar orta ateşte pişirin. Tüm harcınız bitene kadar bu işleme devam edin.\n\n',
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
