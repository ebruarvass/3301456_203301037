import 'package:flutter/material.dart';

class pizza extends StatefulWidget {
  const pizza({Key? key}) : super(key: key);

  @override
  State<pizza> createState() => _pizzaState();
}

class _pizzaState extends State<pizza> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.green[100],
      appBar: AppBar(
        backgroundColor:Colors.green[900] ,
        title: Text("Pizza"),
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
                        "images/34f48f5c56c938642b80b0555e5adf82.jpg"),
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
                height: screenSize.height * 0.55,
                margin: EdgeInsets.only(top: 10),
                child: RichText(
                  text: TextSpan(children: [
                    TextSpan(
                        text: 'MALZEMELER',
                        style: TextStyle(fontSize: 20, color: Colors.white)),
                    TextSpan(
                        text:
                        '\n\n5 su bardağı un\n1 paket instant maya (ya da yarım paket yaş maya)\n1 yemek kaşığı toz şeker\nYarım yemek kaşığı tuz\n4 yemek kaşığı zeytinyağı\n2 su bardağı ılık su\nSosu İçin;\n2 su bardağı domates sosu\n2 yemek kaşığı zeytinyağı\n1 çay kaşığı kuru fesleğen\n1 çay kaşığı kekik\nÜzeri İçin;\nMozzarella peyniri\nKaşar peyniri\nSucuk\nSosis\nDomates kurusu\nMantar\nMısır\n\n',
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
                height: screenSize.height * 1.3,
                margin: EdgeInsets.only(top: 10),
                child: RichText(
                  text: TextSpan(children: [
                    TextSpan(
                        text: 'YAPILIŞI',
                        style: TextStyle(fontSize: 20, color: Colors.white)),
                    TextSpan(
                        text:
                        '\n\n1-Unu yoğurma kabına alalım ve ortasını havuz şeklinde açalım.\n2-Unun ortasına instant maya, şeker, tuz, zeytinyağı ve ılık suyu yavaş yavaş ilave ederek hamurumuzu yoğurmaya başlayalım. İnstant maya yerine yarım paket yaş mayada kullanabilirsiniz.\n3-Yumuşak kıvamlı ele yapışmayan bir hamur elde edelim.\n4-Toparlanan hamurumuzun üzerini streç film örterek yaklaşık 30 dk kadar mayalanmaya bırakalım.\n5-Mayalanan hamurun üzerini açalım ve un serptiğimiz tezgaha hamuru alalım.\n6-Elimizle yine toparlayıp havasını aldıktan sonra 2 eşit parçaya bölelim. Eğer ince hamurlu pizza hazırlamak istiyorsanız aynı hamuru 3 parçaya da bölebilirsiniz.\n7-Kestiğimiz parçayı beze haline getirerek un serptiğimiz tezgahta merdane yardımıyla açalım. Hafifçe un serperek merdaneye yapışmamasını sağlayabilirsiniz.\n8-Açtığımız hamuru pizza tepsisine almadan önce boyutu uygun mu diye kontrol edelim.\n9-Açtığımız hamuru unladığımız pizza tepsisine alalım ve elimizle etrafını düzeltelim.\n10-Dilerseniz normal fırın tepsisine pişirme kağıdı sererek veya altına mısır unu serperek de hazırlayabilirsiniz.\n11-Bir çatal yardımıyla hamurumuzun tüm yüzeyine delikler açalım böylelikle hamur pişerken kabarmayacaktır.\n12-Pizza tepsisini önceden ısıttığımız 200° fırına sürerek hamurumuzu 10 dk pişirelim.\n13-Hamurumuz pişerken pizzanın sosu için domates sosu, zeytinyağı, kuru fesleğen ve kekiği ekleyerek güzelce karıştıralım.\n14-Yarı pişen hamurumuzu fırından alıp hazırladığımız sosu üzerine bolca sürelim. Kenarlarına doğruda güzelce sürersek kenarlarıda daha güzel kızaracaktır.\n15-Domates sosunun üzerine bolca mozzarella peyniri rendesi veya kaşar peyniri rendesini yerleştirelim.\n16-Üzerine tercihe göre dilimlenmiş sucuk, dilimlenmiş sosis, domates kurusu,dilimlenmiş mantar ve mısır tanelerini ekleyelim.\n17-Son olarak pizzamızı tekrar fırına sürelim ve 200° fırında 20 dk daha pişmeye bırakalım.\n18-Peynirleri güzel bir şekilde eriyen sucukları sosisleri gayet nefis bir şekilde pişen pizzamız servise hazır. Afiyet olsun\n\n',
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

