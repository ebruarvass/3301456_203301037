import 'package:flutter/material.dart';

class krep extends StatefulWidget {
  const krep({Key? key}) : super(key: key);

  @override
  State<krep> createState() => _krepState();
}

class _krepState extends State<krep> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.green[100],
      appBar: AppBar(
        backgroundColor:Colors.green[900] ,
        title: Text("Krep"),
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
                        "images/,.webp"),
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
                        '\n\n2 adet yumurta\n2 su barda????ndan biraz az un\n2 su barda???? s??t (dilerseniz yar?? yar??ya s??t ve su kar??????k kullan??labilir)\n1 ??ay ka???????? tuz\npi??irmek i??in tereya???? veya s??v?? ya??\n\n',
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
                height: screenSize.height * 0.35,
                margin: EdgeInsets.only(top: 10),
                child: RichText(
                  text: TextSpan(children: [
                    TextSpan(
                        text: 'YAPILI??I',
                        style: TextStyle(fontSize: 20, color: Colors.white)),
                    TextSpan(
                        text:
                        '\n\n1-Krep tarifi haz??rlamak i??in un, s??t ve su ile hi?? topak kalmayana kadar iyice ????rp??n.\n2-Yumurtalar?? ekleyin biraz daha ????rp??n. Kek hamurundan daha ak??c?? bir k??vamda hamur edin.\n3-Teflon tavaya 1 ??ay ka???????? kadar tereya???? veya s??v?? ya?? koyup f??r??a ile yay??n.\n4-K??zg??n tavaya 1 kep??e krep hamuru d??k??n, sa??a sola e??erek yay??n.\n5-Her iki taraf??n?? ??evirerek hafif k??zarana kadar orta ate??te pi??irin. T??m harc??n??z bitene kadar bu i??leme devam edin.\n\n',
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
