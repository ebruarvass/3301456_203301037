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
                        '\n\n5-6 adet patates\nTuz\n??ay ka???????? ucu ile kara biber\n1 ??ay ka???????? pul biber\n1 kase ka??ar peyniri rendesi\nBe??amel sos i??in; \n3 su barda???? s??t\n2 bu??uk yemek ka???????? un\n1 avu?? ka??ar rendesi\n??ay ka????????n??n ucu ile kara biber\n1 ??ay ka???????? tuz\n K??ymal?? har?? i??in; \n2-3 yemek ka???????? s??v?? ya??\n200 gram kadar k??yma\n1 tane orta boy so??an\nTuz, karabiber, pul biber\n1 yemek ka???????? sal??a\n??ste??e ba??l?? bir tutam maydanoz\n\n',
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
                        text: 'YAPILI??I',
                        style: TextStyle(fontSize: 20, color: Colors.white)),
                    TextSpan(
                        text:
                        '\n\n1-Be??amel sos i??in ka??ar d??????nda malzemeler kar????t??rarak pi??irilir.\n2-Muhallebi k??vam??na gelince tuzu, karabiberi ve bir avu?? ka??ar rendesi eklenip kar????t??r??l??r. Sosumuz da haz??r.\n3-K??ymal?? har?? i??in tavaya biraz ya?? eklenir ve k??yma kavrulur.\n4-??zerine so??an incecik do??ran??r ve baharatlar?? eklenip biraz daha kavrulur.\n5-Son olarak sal??a da eklenip biraz daha kavrulur.\n6-Patateslerimiz ince ince yuvarlak dilimler halinde do??ran??r. ??nce olmas??na ??zen g??sterelim.\n7-Y??kand??ktan sonra tuzu ve baharat?? eklenip kar????t??r??l??r.\n8-Yukar??da da belirtti??im gibi patatesleri biraz soteleyip yapabilirsiniz.\n9-Patateslerin yar??s?? borcama d??k??l??r ve ??zerine k??ymal?? harc??m??z yay??l??r.\n10-Kalan patateslerde ??zerine eklendikten sonra be??amel sosumuz da ??zerine yay??l??r.\n11-180 200 derece f??r??nda pi??irilir.\n12-Ara ara ??atalla patateslerin pi??ip pi??medi??ini kontrol etmeliyiz. Pi??me s??resi bir saati bulabilir.\n13-Son olarak da ??zerine rendelenmi?? ka??ar serpip k??zard??ktan sonra servis yapabilirsiniz.\n\n',
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
