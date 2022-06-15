import 'package:flutter/material.dart';

class izmirKofte extends StatefulWidget {
  const izmirKofte({Key? key}) : super(key: key);

  @override
  State<izmirKofte> createState() => _izmirKofteState();
}

class _izmirKofteState extends State<izmirKofte> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.green[100],
      appBar: AppBar(
        backgroundColor:Colors.green[900] ,
        title: Text("İzmir Köfte"),
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
                        "images/4f36de25f09375c2c86090563bf82f58.jpg"),
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
                        '\n\nKöftesi için:\n500 gram az yağlı kıyma\n1 adet kuru soğan\n1 adet yumurta\n1/2 (yarım) demet maydanoz\n1,5 su bardağı bayat ekmek içi\nKarabiber\nKırmızı pul biber\nKekik\nTuz\nDiğer malzemeler;\n4 adet domates (3 adedi sosu için, 1 adedi de üzerine dilimlemek için gerekiyor)\n4 adet patates (ufaksa 5 tane de koyabilirsiniz)\n3 adet çarliston biber\n1 tatlı kaşığı salça (tercihen karışık)\n3 yemek kaşığı sıvı yağ (sos için)\nKızartmak için:\nSıvı yağ.\n\n',
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
                height: screenSize.height * 1.35,
                margin: EdgeInsets.only(top: 10),
                child: RichText(
                  text: TextSpan(children: [
                    TextSpan(
                        text: 'YAPILIŞI',
                        style: TextStyle(fontSize: 20, color: Colors.white)),
                    TextSpan(
                        text:
                        '\n\n1-Ekmek içini ve arkasından soğanı rondodan geçiriyoruz. (isterseniz rendeleyip, ufalayabilirsiniz)\n2-Yumurtayı, ince ince doğranmış maydanozu, baharatları ve kıymayı da ekleyip iyice yoğuruyoruz.\n3-Parmak uzunluğunda ince ve uzun bir şekil verip biraz dinlenmesi için tabağa sıralıyoruz.\n4-Patatesleri soyup, elma dilimi şeklinde keselim. Patateslerle köfteler aynı boy olursa, daha şık gözükecektir.\n5-Sıvı yağı iyice kızdırıp (çok yağ çekmesin diye) önce patatesleri arkasından da köfteleri azıcık kızartıyoruz. (kesinlikle iyice pişirmeyin ağır olur, kızarmadan almamız gerekiyor)\n6-Daha sonra tepsiye, yan yana olacak şekilde bir patates bir köfte şeklinde sıralayın.\n7-Sonrasında sos tenceremize sıvı yağımızı alıyoruz, salçamızı da ekleyip iyice karıştıralım.\n8-Arkasından rendelediğimiz 3 adet domatesi de ekleyip 10 dakika pişmeye bırakalım, isterseniz sarımsak da atabilirsiniz içine. Kekik ve tuzunu da ekledikten bir kaç dakika sonra ocaktan alıyoruz. Bu aşamada sosun içerisine 1,5 su bardağı su ekleyerek de yapabilirsiniz dilerseniz eklemeden yemeği fırına koymadan önce tepsinize 1 su bardağı sıcak su da ekleyebilirsiniz.\n9-Hazırlanan sosu patates ve köftelerin üzerine hepsine değecek şekilde döküyoruz ki kurumasın pişerken.\n10-Üzerine 1 adet soyulup dilimlenmiş domatesi sıralıyoruz, biberleri de kesip içini temizledikten sonra aralarına yerleştiriyoruz.\n11-Fırına atmadan önce tepsinin kenarından 1 çay bardağı sıcak su koyup önceden ısıtılmış 180°C fırında patateslerin üzeri kızarana kadar pişiriyoruz. (Benim yemek tam 1 saatte istediğim kıvamda pişti, fırından fırına değişiklik gösterebileceği için 20-25 dakikada pişmesi de mümkün, kontrollü olmalısınız.)\n12-Dilerseniz 30. dakikadan sonra açıp, tepsinin içindeki sostan köftelerin ve patateslerin üzerine biraz gezdirin. (daha lezzetli olacaktır)\nNot: İsterseniz patatesleri yuvarlak kesip, köfteleri de oval şekilde hazırladıktan sonra aynı işlemleri tekrarlarsanız farklı bir form da elde edebilirsiniz. Ama unutmayın ki İzmir köftenin özelliği şeklinin ince ve uzun olmasıdır, o şekilde fırında patatesli köfte olacaktır. Ben bundan önce sevgilimin isteği ile yuvarlak hazırlamıştım ama köfteler tepsiye değmediği için ben lezzet olarak şahane bulmadım açıkçası.\nSevdiklerinizle mutlu sofralar, afiyet olsun\n\n',
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
