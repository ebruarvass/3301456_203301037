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
                        '\n\n5 su barda???? un\n1 paket instant maya (ya da yar??m paket ya?? maya)\n1 yemek ka???????? toz ??eker\nYar??m yemek ka???????? tuz\n4 yemek ka???????? zeytinya????\n2 su barda???? ??l??k su\nSosu ????in;\n2 su barda???? domates sosu\n2 yemek ka???????? zeytinya????\n1 ??ay ka???????? kuru fesle??en\n1 ??ay ka???????? kekik\n??zeri ????in;\nMozzarella peyniri\nKa??ar peyniri\nSucuk\nSosis\nDomates kurusu\nMantar\nM??s??r\n\n',
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
                        text: 'YAPILI??I',
                        style: TextStyle(fontSize: 20, color: Colors.white)),
                    TextSpan(
                        text:
                        '\n\n1-Unu yo??urma kab??na alal??m ve ortas??n?? havuz ??eklinde a??al??m.\n2-Unun ortas??na instant maya, ??eker, tuz, zeytinya???? ve ??l??k suyu yava?? yava?? ilave ederek hamurumuzu yo??urmaya ba??layal??m. ??nstant maya yerine yar??m paket ya?? mayada kullanabilirsiniz.\n3-Yumu??ak k??vaml?? ele yap????mayan bir hamur elde edelim.\n4-Toparlanan hamurumuzun ??zerini stre?? film ??rterek yakla????k 30 dk kadar mayalanmaya b??rakal??m.\n5-Mayalanan hamurun ??zerini a??al??m ve un serpti??imiz tezgaha hamuru alal??m.\n6-Elimizle yine toparlay??p havas??n?? ald??ktan sonra 2 e??it par??aya b??lelim. E??er ince hamurlu pizza haz??rlamak istiyorsan??z ayn?? hamuru 3 par??aya da b??lebilirsiniz.\n7-Kesti??imiz par??ay?? beze haline getirerek un serpti??imiz tezgahta merdane yard??m??yla a??al??m. Hafif??e un serperek merdaneye yap????mamas??n?? sa??layabilirsiniz.\n8-A??t??????m??z hamuru pizza tepsisine almadan ??nce boyutu uygun mu diye kontrol edelim.\n9-A??t??????m??z hamuru unlad??????m??z pizza tepsisine alal??m ve elimizle etraf??n?? d??zeltelim.\n10-Dilerseniz normal f??r??n tepsisine pi??irme ka????d?? sererek veya alt??na m??s??r unu serperek de haz??rlayabilirsiniz.\n11-Bir ??atal yard??m??yla hamurumuzun t??m y??zeyine delikler a??al??m b??ylelikle hamur pi??erken kabarmayacakt??r.\n12-Pizza tepsisini ??nceden ??s??tt??????m??z 200?? f??r??na s??rerek hamurumuzu 10 dk pi??irelim.\n13-Hamurumuz pi??erken pizzan??n sosu i??in domates sosu, zeytinya????, kuru fesle??en ve keki??i ekleyerek g??zelce kar????t??ral??m.\n14-Yar?? pi??en hamurumuzu f??r??ndan al??p haz??rlad??????m??z sosu ??zerine bolca s??relim. Kenarlar??na do??ruda g??zelce s??rersek kenarlar??da daha g??zel k??zaracakt??r.\n15-Domates sosunun ??zerine bolca mozzarella peyniri rendesi veya ka??ar peyniri rendesini yerle??tirelim.\n16-??zerine tercihe g??re dilimlenmi?? sucuk, dilimlenmi?? sosis, domates kurusu,dilimlenmi?? mantar ve m??s??r tanelerini ekleyelim.\n17-Son olarak pizzam??z?? tekrar f??r??na s??relim ve 200?? f??r??nda 20 dk daha pi??meye b??rakal??m.\n18-Peynirleri g??zel bir ??ekilde eriyen sucuklar?? sosisleri gayet nefis bir ??ekilde pi??en pizzam??z servise haz??r. Afiyet olsun\n\n',
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

