import 'package:flutter/material.dart';

class pankek extends StatefulWidget {
  const pankek({Key? key}) : super(key: key);

  @override
  State<pankek> createState() => _pankekState();
}

class _pankekState extends State<pankek> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.green[100],
      appBar: AppBar(
        backgroundColor:Colors.green[900] ,
        title: Text("Pankek"),
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
                        "images/pancake-yemekcom.webp"),
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
                height: screenSize.height * 0.34,
                margin: EdgeInsets.only(top: 10),
                child: RichText(
                  text: TextSpan(children: [
                    TextSpan(
                        text: 'MALZEMELER',
                        style: TextStyle(fontSize: 20, color: Colors.white)),
                    TextSpan(
                        text:
                        '\n\n2 adet yumurta\n2 yemek ka???????? ??eker\n1 su barda???? s??t\n1,5 su barda???? un\n1 paket kabartma tozu\n1 paket vanilya\nPi??irme a??amas??nda kullanmak i??in;\ns??v?? ya??\nServis ??nerisi:\nKivi, muz, ??ilek, re??el, bal, ??ikolata\n\n',
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
                height: screenSize.height * 0.6,
                margin: EdgeInsets.only(top: 10),
                child: RichText(
                  text: TextSpan(children: [
                    TextSpan(
                        text: 'YAPILI??I',
                        style: TextStyle(fontSize: 20, color: Colors.white)),
                    TextSpan(
                        text:
                        '\n\n1-Pankek yapmak i??in ??ncelikle yumurtalar ve ??ekeri uygun bir kar????t??rma kab??na alarak iyice ????rpal??m.\n2-S??t, un, kabartma tozu, vanilya ilave ????rpma teli ile ????rpal??m. Siz dilerseniz mikser ile de ????rpabilirsiniz. Kek k??vam??ndan biraz daha koyu olacak ??ekilde hamur haz??rlayal??m.\n3-Teflon ya da yap????maz bir tavaya az s??v?? ya???? d??kelim, f??r??a yard??m?? ile her taraf??na da????tal??m. S??v?? ya???? az kullanmak pankek yapman??n p??f noktalar??ndand??r. Dilerseniz pe??ete ile de tavaya da????tabilirsiniz.\n4-1 b??y??k ka????k hamur d??k??lerek hamurun kendi kendine yay??lmas??n?? bekleyelim.\n5-??zeri g??z g??z olmaya ba??layan pankeklerimizi spatula yard??m?? ile ters ??evirelim. Di??er taraflar??n?? da pi??irelim.\n6-Her iki taraf?? da pi??en pankeklerimizi servis taba????na alal??m.\n7-??zerine  pudra ??ekeri serpilerek zevkinize g??re muz, kivi, ??ilek, ??ikolata, bal, s??r??lebilir ??ikolata, re??el ile servis edebilirsiniz.\n\n',
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

