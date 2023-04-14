import 'package:yemektarifleri/Navigation/KayitOl.dart';
import 'package:yemektarifleri/main.dart';
import 'package:flutter/material.dart';
import 'package:yemektarifleri/main.dart';

class Hesabim extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Giriş Yap'),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Giriş Yap',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                labelText: 'Kullanıcı Adı',
              ),
            ),
            SizedBox(height: 20),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Şifre',
              ),
            ),
            TextButton(
              onPressed: () {},
              child: Text('Şifremi Unuttum'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => MyApp(),
                ))
              },
              child: Text('Giriş Yap'),
            ),
            SizedBox(height: 10),
            TextButton(
              onPressed: () => {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => KayitOl()))
              },
              child: Text('Kayıt Ol'),
            ),
          ],
        ),
      ),
    );
  }
}
