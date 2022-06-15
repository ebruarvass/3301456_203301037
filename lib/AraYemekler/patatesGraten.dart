import 'package:flutter/material.dart';

class patatesGraten extends StatefulWidget {
  const patatesGraten({Key? key}) : super(key: key);

  @override
  State<patatesGraten> createState() => _patatesGratenState();
}

class _patatesGratenState extends State<patatesGraten> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.green[100],
      appBar: AppBar(
        backgroundColor:Colors.green[900] ,
        title: Text("Patates Graten"),
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
                        "images/5e68aea7c9de3d1a0880f435.webp"),
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
                height: screenSize.height * 0.51,
                margin: EdgeInsets.only(top: 10),
                child: RichText(
                  text: TextSpan(children: [
                    TextSpan(
                        text: 'MALZEMELER',
                        style: TextStyle(fontSize: 20, color: Colors.white)),
                    TextSpan(
                        text:
                        '\n\n5-6 adet patates\nTuz\nÇay kaşığı ucu ile kara biber\n1 çay kaşığı pul biber\n1 kase kaşar peyniri rendesi\nBeşamel sos için; \n3 su bardağı süt\n2 buçuk yemek kaşığı un\n1 avuç kaşar rendesi\nÇay kaşığının ucu ile kara biber\n1 çay kaşığı tuz\n Kıymalı harç için; \n2-3 yemek kaşığı sıvı yağ\n200 gram kadar kıyma\n1 tane orta boy soğan\nTuz, karabiber, pul biber\n1 yemek kaşığı salça\nİsteğe bağlı bir tutam maydanoz\n\n',
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
                height: screenSize.height * 0.7,
                margin: EdgeInsets.only(top: 10),
                child: RichText(
                  text: TextSpan(children: [
                    TextSpan(
                        text: 'YAPILIŞI',
                        style: TextStyle(fontSize: 20, color: Colors.white)),
                    TextSpan(
                        text:
                        '\n\n1-Beşamel sos için kaşar dışında malzemeler karıştırarak pişirilir.\n2-Muhallebi kıvamına gelince tuzu, karabiberi ve bir avuç kaşar rendesi eklenip karıştırılır. Sosumuz da hazır.\n3-Kıymalı harç için tavaya biraz yağ eklenir ve kıyma kavrulur.\n4-Üzerine soğan incecik doğranır ve baharatları eklenip biraz daha kavrulur.\n5-Son olarak salça da eklenip biraz daha kavrulur.\n6-Patateslerimiz ince ince yuvarlak dilimler halinde doğranır. İnce olmasına özen gösterelim.\n7-Yıkandıktan sonra tuzu ve baharatı eklenip karıştırılır.\n8-Yukarıda da belirttiğim gibi patatesleri biraz soteleyip yapabilirsiniz.\n9-Patateslerin yarısı borcama dökülür ve üzerine kıymalı harcımız yayılır.\n10-Kalan patateslerde üzerine eklendikten sonra beşamel sosumuz da üzerine yayılır.\n11-180 200 derece fırında pişirilir.\n12-Ara ara çatalla patateslerin pişip pişmediğini kontrol etmeliyiz. Pişme süresi bir saati bulabilir.\n13-Son olarak da üzerine rendelenmiş kaşar serpip kızardıktan sonra servis yapabilirsiniz.\n\n',
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
