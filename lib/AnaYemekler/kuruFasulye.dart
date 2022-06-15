import 'package:flutter/material.dart';

class kuruFasulye extends StatefulWidget {
  const kuruFasulye({Key? key}) : super(key: key);

  @override
  State<kuruFasulye> createState() => _kuruFasulyeState();
}

class _kuruFasulyeState extends State<kuruFasulye> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.green[100],
      appBar: AppBar(
        backgroundColor:Colors.green[900] ,
        title: Text("Kuru Fasulye"),
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
                        "images/887b4b904de689b6e6c8023591e1d49e.jpg"),
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
                        '\n\n1,5 su bardağı kuru fasulye\n1 adet kuru soğan\n1 yemek kaşığı domates salçası\n1 yemek kaşığı biber salçası\n300 g kuşbaşı dana et\nSıvı Yağ\nTuz\nPul biber\n\n',
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
                        '\n\n1-Kuru fasulyeler bir gece önceden sıcak suya koyulur.\n2-Soğan yemeklik doğranır, sıvı yağ koyduğunuz düdüklü tencerede soğanlar kavrulur.\n3-Kuşbaşı doğranmış etler ilave edilerek hafifçe kavrulur.\n4-Salça ve baharatlar ilave edildikten sonra suyunu süzmüş olduğunu kuru fasulye eklenir.\n5-Üzerini geçecek kadar sıcak su ilave edilip düdüklü tencerenin kapağı kapatılır.\n6-Kaynadıktan sonra kısık ateşe alınarak 40dk pişirilir. Afiyet olsun.\nNot: Fasulyenizin türüne göre eğer yemeğinizin suyu kıvamlı değil ise bir silme yemek kaşığı kadar un, bir çay bardağı su ile sulandırılıp, karıştırılarak pişmiş olan yemeğe eklenir. Birkaç dakika kaynattıktan sonra ocaktan alabilirsiniz. Böylelikle yemeğinizin suyu daha koyu olacaktır.\n\n',
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

