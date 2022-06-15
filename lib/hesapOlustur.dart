import 'package:flutter/material.dart';
import 'package:untitled4/hesabim.dart';
class hesapOlustur extends StatefulWidget {
  const hesapOlustur({Key? key}) : super(key: key);

  @override
  State<hesapOlustur> createState() => _hesapOlusturState();
}

class _hesapOlusturState extends State<hesapOlustur> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.green[100],
        appBar: AppBar(
        backgroundColor: Colors.green[600],
        title: Text("Hesap Oluştur"),
    ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            gradient: new LinearGradient(
                colors: [
                  Colors.brown.shade200,
                  Colors.brown.shade200,
                ],
                stops: [
                  0.4,
                  0.6,
                ],
                begin: FractionalOffset.topLeft,
                end: FractionalOffset.bottomRight,
                tileMode: TileMode.repeated)),
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 30.0),
                  child: Center(
                    child: Container(
                      width: 200,
                      height: 20,

                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 20, bottom: 0),
                  //padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Container(
                    width: screenSize.width,
                    height: screenSize.height * .088,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(22),
                      border: Border.all(
                        color: Colors.white,
                      ),
                      color: Colors.green,
                    ),
                    child: new TextField(
                      cursorColor: Colors.white,
                      style: TextStyle(color: Colors.white),
                      textAlign: TextAlign.center,
                      decoration: new InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.transparent,
                              )),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.transparent,
                              )),
                          border: new OutlineInputBorder(
                              borderSide: new BorderSide(
                                  color: Colors.green)),
                          hintText:
                          'Adınızı giriniz',
                          labelText: 'Ad',
                          labelStyle: TextStyle(color: Colors.white),
                          hintStyle: TextStyle(
                              color: Colors.white),
                          suffixStyle: const TextStyle(color: Colors.green)),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 20, bottom: 0),
                  //padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Container(
                    width: screenSize.width,
                    height: screenSize.height * .088,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(22),
                      border: Border.all(
                        color: Colors.white,
                      ),
                      color: Colors.green,
                    ),
                    child: new TextField(
                      obscureText: true,
                      enableSuggestions: false,
                      autocorrect: false,
                      cursorColor: Colors.white,
                      style: TextStyle(color: Colors.white),
                      textAlign: TextAlign.center,
                      decoration: new InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.transparent,
                              )),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.transparent,
                              )),
                          border: new OutlineInputBorder(
                              borderSide: new BorderSide(
                                  color: Colors.green)),
                          hintText: 'Soyadınızı giriniz',
                          labelText: 'Soyad',
                          labelStyle: TextStyle(color: Colors.white),
                          hintStyle: TextStyle(
                              color: Colors.white),
                          suffixStyle: const TextStyle(color: Colors.green)),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 20, bottom: 0),
                  //padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Container(
                    width: screenSize.width,
                    height: screenSize.height * .088,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(22),
                      border: Border.all(
                        color: Colors.white,
                      ),
                      color: Colors.green,
                    ),
                    child: new TextField(
                      cursorColor: Colors.white,
                      style: TextStyle(color: Colors.white),
                      textAlign: TextAlign.center,
                      decoration: new InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.transparent,
                              )),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.transparent,
                              )),
                          border: new OutlineInputBorder(
                              borderSide: new BorderSide(
                                  color: Colors.green)),
                          hintText:
                          'Şifrenizi giriniz',
                          labelText: 'Şifre',
                          labelStyle: TextStyle(color: Colors.white),
                          hintStyle: TextStyle(
                              color: Colors.white),
                          suffixStyle: const TextStyle(color: Colors.green)),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 20, bottom: 0),
                  //padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Container(
                    width: screenSize.width,
                    height: screenSize.height * .088,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(22),
                      border: Border.all(
                        color: Colors.white,
                      ),
                      color: Colors.green,
                    ),
                    child: new TextField(
                      cursorColor: Colors.white,
                      style: TextStyle(color: Colors.white),
                      textAlign: TextAlign.center,
                      decoration: new InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.transparent,
                              )),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.transparent,
                              )),
                          border: new OutlineInputBorder(
                              borderSide: new BorderSide(
                                  color: Colors.green)),
                          hintText:
                          'Şifrenizi tekrar giriniz',
                          labelText: 'Şifre Tekrar',
                          labelStyle: TextStyle(color: Colors.white),
                          hintStyle: TextStyle(
                              color: Color.fromARGB(153, 255, 255, 255)),
                          suffixStyle: const TextStyle(color: Colors.green)),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 20, bottom: 0),
                  //padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Container(
                    width: screenSize.width,
                    height: screenSize.height * .088,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(22),
                      border: Border.all(
                        color: Colors.white,
                      ),
                      color: Colors.green,
                    ),
                    child: new TextField(
                      cursorColor: Colors.white,
                      style: TextStyle(color: Colors.white),
                      textAlign: TextAlign.center,
                      decoration: new InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.transparent,
                              )),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.transparent,
                              )),
                          border: new OutlineInputBorder(
                              borderSide: new BorderSide(
                                  color: Colors.green)),
                          hintText:
                          'Kullanıcı adınızı giriniz',
                          labelText: 'Kullanıcı Adı',
                          labelStyle: TextStyle(color: Colors.white),
                          hintStyle: TextStyle(
                              color: Colors.white),
                          suffixStyle: const TextStyle(color: Colors.green)),
                    ),
                  ),
                ),
                FlatButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => hesabim()));
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(top: 3),
                    child: Text(
                      'Hesap Oluştur',
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),

                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
