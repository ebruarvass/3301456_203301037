import 'package:flutter/material.dart';

class yaylaCorbasi extends StatefulWidget {
  const yaylaCorbasi({Key? key}) : super(key: key);

  @override
  State<yaylaCorbasi> createState() => _yaylaCorbasiState();
}

class _yaylaCorbasiState extends State<yaylaCorbasi> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.green[200],
      appBar: AppBar(
        backgroundColor: Colors.green[900],
        title: Text("Yayla Çorbası"),
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
                            "images/WhatsApp Image 2022-04-06 at 21.20.25.jpeg"),
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
                            '\n\n1 çay bardağı pirinç\n3 su bardağı su\n3 su bardağı sıcak su (tavuk veya kemik suyu)\nTuz\n\nTerbiyesi için:\n1 adet yumurta sarısı\n1,5 su bardağı yoğurt\n1 yemek kaşığı un\n\nSosu için:\n2 yemek kaşığı tereyağı\n1 yemek kaşığı kuru nane\n\n',
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
                    height: screenSize.height * 0.45,
                    margin: EdgeInsets.only(top: 10),
                    child: RichText(
                      text: TextSpan(children: [
                        TextSpan(
                            text: 'YAPILIŞI',
                            style:
                            TextStyle(fontSize: 20, color: Colors.white)),
                        TextSpan(
                            text:
                            '\n\n1-Yayla çorbası için ilk olarak pirinçler yıkanarak suda yumuşayıncaya kadar haşlanır.\n2-Yayla çorbamızın terbiyesi için diğer taraftan yumurta sarısı, yoğurt, un bir kasede iyice çırpılır.\n3-Pişen pirinçlere varsa et ya da kemik suyu yoksa 3 su bardağı sıcak su ilave edilir.\n4-Çorbanın suyundan 1-2 kepçe alınarak yavaş yavaş alınıp terbiyeye ilave edilir.\n5-Hafifçe sulanan bu karışım ılınmış olan çorbaya ilave edilir ve 1-2 taşım kaynatılır.\n6-En son tuzu ilave edilir, bir kaç dakika daha kaynatılarak ocak kapatılır.\n7-Üzerine sos için kuru nane eritilmiş tereyağında kızdırılarak gezdirilir. Yayla çorbamız servise hazır. Afiyet olsun.',
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
