import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class mercimekCorbasi extends StatefulWidget {
  const mercimekCorbasi({Key? key}) : super(key: key);

  @override
  State<mercimekCorbasi> createState() => _mercimekCorbasiState();
}

class _mercimekCorbasiState extends State<mercimekCorbasi> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.green[100],
      appBar: AppBar(
        backgroundColor: Colors.green[900],
        title: Text("Mercimek Çorbası"),
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
                      image: DecorationImage(
                        image: AssetImage(
                            "images/WhatsApp Image 2022-04-06 at 18.35.59.jpeg"),
                        fit: BoxFit.cover,
                      ),
                      border: Border.all(
                        color: Colors.green,
                        width: 5,
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.green.shade200,
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          color: Colors.green,
                          width: 5,
                        )),
                    padding: EdgeInsets.all(10),
                    width: screenSize.width * 0.9,
                    height: screenSize.height * 0.27,
                    margin: EdgeInsets.only(top: 10),
                    child: RichText(
                      text: TextSpan(children: [
                        TextSpan(
                            text: 'MALZEMELER',
                            style:
                            TextStyle(fontSize: 20, color: Colors.white)),
                        TextSpan(
                            text:
                            '\n\n3 adet domatesYarım su bardağı arpa şehriye\n1 paket tavuk bulyon\n4 su bardağı sıcak su\n2 yemek kaşığı tereyağı\n1 yemek kaşığı domates salçası\n1 su bardağına yakın haşlanmış nohut\nTuz\n\n',
                            style:
                            TextStyle(fontSize: 15, color: Colors.white)),
                      ]),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.green[200],
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
                            text: 'YAPILIŞI',
                            style:
                            TextStyle(fontSize: 20, color: Colors.white)),
                        TextSpan(
                            text:
                            '\n\n1-Tereyağı (veya sıvı yağ da olur) tencereye alınarak rendelenmiş veya rondodan geçirilmiş domatesler ilave edilir.\n2-1 yemek kaşığı domates salçası da eklenerek karıştırılır. Şehriyeler ve nohutlar eklenerek birkaç dakika kavrulur.\n3-Diğer yandan kaynar suya bulyon ilave edilir.\n4-Daha sonra kaynar su şehriyelerin üzerine eklenir.\n5-Şehriyeler yumuşayıncaya kadar kaynatıldıktan sonra ocaktan alınarak servis edilebilir.\n6-Çorbanın kıvamına göre su ilavesi yapılabilir. Yanında limonla servis edebilirsiniz, afiyet olsun.',
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
