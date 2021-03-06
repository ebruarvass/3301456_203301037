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
                        '\n\n1,5 su barda???? kuru fasulye\n1 adet kuru so??an\n1 yemek ka???????? domates sal??as??\n1 yemek ka???????? biber sal??as??\n300 g ku??ba???? dana et\nS??v?? Ya??\nTuz\nPul biber\n\n',
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
                        text: 'YAPILI??I',
                        style: TextStyle(fontSize: 20, color: Colors.white)),
                    TextSpan(
                        text:
                        '\n\n1-Kuru fasulyeler bir gece ??nceden s??cak suya koyulur.\n2-So??an yemeklik do??ran??r, s??v?? ya?? koydu??unuz d??d??kl?? tencerede so??anlar kavrulur.\n3-Ku??ba???? do??ranm???? etler ilave edilerek hafif??e kavrulur.\n4-Sal??a ve baharatlar ilave edildikten sonra suyunu s??zm???? oldu??unu kuru fasulye eklenir.\n5-??zerini ge??ecek kadar s??cak su ilave edilip d??d??kl?? tencerenin kapa???? kapat??l??r.\n6-Kaynad??ktan sonra k??s??k ate??e al??narak 40dk pi??irilir. Afiyet olsun.\nNot: Fasulyenizin t??r??ne g??re e??er yeme??inizin suyu k??vaml?? de??il ise bir silme yemek ka???????? kadar un, bir ??ay barda???? su ile suland??r??l??p, kar????t??r??larak pi??mi?? olan yeme??e eklenir. Birka?? dakika kaynatt??ktan sonra ocaktan alabilirsiniz. B??ylelikle yeme??inizin suyu daha koyu olacakt??r.\n\n',
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

