
import 'package:flutter/material.dart';

class karniyarik extends StatefulWidget {
  const karniyarik({Key? key}) : super(key: key);

  @override
  State<karniyarik> createState() => _karniyarikState();
}

class _karniyarikState extends State<karniyarik> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.green[100],
      appBar: AppBar(
        backgroundColor:Colors.green[900] ,
        title: Text("Karnıyarık"),
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
                        "images/f16fb1fb63cda9656e7df6a8c66b10ce.jpg"),
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
                height: screenSize.height * 0.45,
                margin: EdgeInsets.only(top: 10),
                child: RichText(
                  text: TextSpan(children: [
                    TextSpan(
                        text: 'MALZEMELER',
                        style: TextStyle(fontSize: 20, color: Colors.white)),
                    TextSpan(
                        text:
                        '\n\n6 adet küçük boy patlıcan (büyük ise ikiye bölebilirsiniz)\n3 adet sivri biber\nKıymalı Harç İçin;\n2 adet orta boy soğan\n2 adet domates\n2 adet sivri biber\n2 diş sarımsak\nSıvı yağ, tuz, karabiber, kırmızıbiber\n200 gr kıyma\n1 çay bardağı sıcak su\nSosu İçin;\n1 yemek kaşığı salça\n1 su bardağı sıcak su\n\n',
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
                height: screenSize.height * 0.8,
                margin: EdgeInsets.only(top: 10),
                child: RichText(
                  text: TextSpan(children: [
                    TextSpan(
                        text: 'YAPILIŞI',
                        style: TextStyle(fontSize: 20, color: Colors.white)),
                    TextSpan(
                        text:
                        '\n\n1-Patlıcanları çizgili soyup, yarım saat yağ çekmemesi için tuzlu suda bekletin.\n2-İyice yıkadıktan sonra suyunu havlu ile çektirin ve az yağda kızartın. 3 adet biberi de yağda kızartın.\n3-Daha sonra aynı tavada doğranmış soğanları kavurun, kıymayı ekleyerek bir müddet daha kavurun ve biberleri, sarımsağı ekleyerek 2 dakika daha kavurun.\n4-Küp küp doğramış olduğunuz 2 adet domatesi, tuzu, baharatları ekleyerek karıştırın.\n5-Üzerine bir çay bardağı su ekleyerek 5 dk kaynatın.\n6-Tepsiye patlıcanların ortalarını keserek yerleştirin ve bu kesiklerden patlıcanın içine bastırarak iç malzemesine yer açın ve malzeme ile patlıcanları doldurun.\n7-Doldurduğunuz patlıcanların üzerine ortadan ikiye kestiğiniz çeri domatesi ya da 1 adet domatesi eşit büyüklükte olacak şekilde paylaştırın ve kızarttığımız biberlerden birer tane koyun.\n8-Ayrı bir yerde 1 kaşık salçayı, 1 su bardağı sıcak suda ezerek patlıcanların aralarına dökün. Kıymalar çıkmasın diye üzerine dökmeyin.\n9-Daha sonra 170 derece de ısıttığınız fırına sürerek 20-25 dk pişirin. Dilerseniz bu işlemi pilav tenceresi gibi bir tencerede ocakta yapabilirsiniz. Aynı sürede tencerede de  pişecektir.\n\n',
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



