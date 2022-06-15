import 'package:flutter/material.dart';
import 'package:untitled4/Hesap.dart';
import 'package:untitled4/firebaseVeriler/otomasyon.dart';
import 'package:untitled4/hesapOlustur.dart';


class GirisAlani extends StatefulWidget {
  @override
  GirisSayfasi createState() => GirisSayfasi();
}

class GirisSayfasi extends State<GirisAlani> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  AuthService _authService = AuthService();

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.green,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.green,
          elevation: 0.0,

          title: Text("Yemek Tarifleri"),
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
                    padding: const EdgeInsets.only(top: 60.0),
                    child: Center(
                      child: Container(
                          width: 200,
                          height: 150,

                          //Bu kısıma spotify logosu gelecek
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
                        controller: _emailController,
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
                            'Eposta adresinizi giriniz',
                            labelText: 'Eposta',
                            labelStyle: TextStyle(color: Colors.white),
                            hintStyle: TextStyle(
                                color: Color.fromARGB(153, 255, 255, 255)),
                            prefixIcon: const Icon(
                              Icons.email,
                              color: Colors.white,
                            ),
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
                        controller: _passwordController,
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
                            hintText: 'Şifrenizi giriniz',
                            labelText: 'Şifre',
                            labelStyle: TextStyle(color: Colors.white),
                            hintStyle: TextStyle(
                                color: Color.fromARGB(153, 255, 255, 255)),
                            prefixIcon: const Icon(
                              Icons.email,
                              color: Colors.white,
                            ),
                            suffixStyle: const TextStyle(color: Colors.green)),
                      ),
                    ),
                  ),
                  FlatButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => hesapOlustur()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(top: 2),
                      child: Text(
                        'Hesap Oluştur',
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: MaterialButton(
                      onPressed: () {
                        _authService
                            .signIn(
                            _emailController.text, _passwordController.text)
                            .then((value) {
                          return Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (_) => Hesap())
                          );

                        }
                        );
                      },
                      child: Container(
                        width: screenSize.width * .4,
                        height: screenSize.height * .07,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            gradient: new LinearGradient(
                                colors: [
                                  Colors.white,
                                  Colors.white,
                                ],
                                stops: [
                                  0.6,
                                  0.9,
                                ],
                                begin: FractionalOffset.topCenter,
                                end: FractionalOffset.bottomCenter,
                                tileMode: TileMode.repeated)),
                        child: Center(
                          child: Text(
                            "Giriş Yap",
                            style: TextStyle(
                              color: Colors.green,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}

class anaSayfaTasarim extends StatefulWidget {
  @override
  State<anaSayfaTasarim> createState() => _anaSayfaTasarimState();
}

class _anaSayfaTasarimState extends State<anaSayfaTasarim> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold();
  }
}