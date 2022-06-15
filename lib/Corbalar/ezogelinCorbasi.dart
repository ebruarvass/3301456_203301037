
import 'package:flutter/material.dart';

class ezogelinCorbasi extends StatefulWidget {
  const ezogelinCorbasi({Key? key}) : super(key: key);

  @override
  State<ezogelinCorbasi> createState() => _ezogelinCorbasiState();
}

class _ezogelinCorbasiState extends State<ezogelinCorbasi> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.green[200],
      appBar: AppBar(
        backgroundColor: Colors.green[900],
        title: Text("Ezogelin Çorbası"),
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
                            "images/WhatsApp Image 2022-04-06 at 21.32.17 (1).jpeg"),
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
                            style:
                            TextStyle(fontSize: 20, color: Colors.white)),
                        TextSpan(
                            text:
                            '\n\n1 su bardağı kırmızı mercimek\n1 tatlı kaşığı pirinç\n1 tatlı kaşığı bulgur\n2 çay kaşığı pul biber\n1 yemek kaşığı nane\n2 diş sarımsak\n1 orta boy soğan\n1 yemek kaşığı biber salçası\n1 yemek kaşığı tereyağı\n2 litreye yakın sıcak su\nTuz\n\n',
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
                    height: screenSize.height * 0.5,
                    margin: EdgeInsets.only(top: 10),
                    child: RichText(
                      text: TextSpan(children: [
                        TextSpan(
                            text: 'YAPILIŞI',
                            style:
                            TextStyle(fontSize: 20, color: Colors.white)),
                        TextSpan(
                            text:
                            '\n\n1-Ezogelin çorbası yapmak için düdüklü tencerede önce rendelemiş olduğumuz soğanı ve ezmiş olduğumuz sarımsağı tereyağında kavuruyoruz. Soğanlar diriliğini kaybetsin yeterli yakmadan orta ateşte kavuralım.\n2-Soğanlar kavrulunca naneyi, kırmızı biberi ve salçayı ilave edip. Kavurmaya devam edelim.\n3-Bir iki karıştırdıktan sonra yıkadığımız mercimeği, pirinci, bulguru ve tuzunu da ilave ederek karıştıralım.\n4-Başka bir tarafta kaynamakta olan 2 litreye yakın suyu üzerine boşaltalım.\n5-Düdüklünün kapağını ve düdüğünü kapattıktan sonra 10 dakika pişiriyoruz. Normal tencerede de yapabilirsiniz ama biraz daha geç pişecektir (yaklaşık 30-40 dakika sürecektir).\n\n',
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
