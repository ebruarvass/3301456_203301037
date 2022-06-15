import 'package:flutter/material.dart';

class suBoregi extends StatefulWidget {
  const suBoregi({Key? key}) : super(key: key);

  @override
  State<suBoregi> createState() => _suBoregiState();
}

class _suBoregiState extends State<suBoregi> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.green[100],
      appBar: AppBar(
        backgroundColor:Colors.green[900] ,
        title: Text("Su Böreği"),
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
                        "images/indir.jpg"),
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
                        '\n\n5 adet yufka\nSosu için;\n1 şişe maden suyu\n3 adet yumurta\n1 çay bardağı sıvı yağ\n1 su bardağı süt\n1 paket\n\n',
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
                height: screenSize.height * 0.51,
                margin: EdgeInsets.only(top: 10),
                child: RichText(
                  text: TextSpan(children: [
                    TextSpan(
                        text: 'YAPILIŞI',
                        style: TextStyle(fontSize: 20, color: Colors.white)),
                    TextSpan(
                        text:
                        '\n\nBöreğin sosu için verilen malzemeleri bir kapta karıştırıyoruz. Fırın tepsisini hafif yağlayıp, yufkanın ilkini serip, kenarlarından biraz taşırıyoruz.\nSostan her yerine gelecek şekilde sürüp kat kat yufka koyuyoruz. Her kata bolca sostan sürmeyi unutmuyoruz. Yufkaların ara katına iç harcından koyup yayıyoruz.\nDiğer yufkaları da aralarına sos sürerek yerleştiriyoruz. En son kalan yufkayı da yerleştirdikten sonra kenar kısımlarından taşan yufkaları üzerine doğru kapatıyoruz.\nKalan sosu da böreğin üzerine döküp çatalla delikler açıyoruz. Vaktiniz varsa bu şekilde buzdolabında bir saat kadar bekletebilirsiniz.\nVaktiniz yoksa hemende pişirebilirsiniz. Böreği önceden ısıtılmış 200 derecelik fırında üzeri iyice kızarana kadar pişiriyoruz\n\n',
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


