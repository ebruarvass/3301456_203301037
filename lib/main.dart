import 'package:flutter/material.dart';
import 'package:yemektarifleri/Kategoriler/Anayemekler.dart';
import 'package:yemektarifleri/Kategoriler/AraYemekler.dart';
import 'package:yemektarifleri/Kategoriler/Corbalar.dart';
import 'package:yemektarifleri/Kategoriler/HamurIsi.dart';
import 'package:yemektarifleri/Kategoriler/Salatalar.dart';
import 'package:yemektarifleri/Kategoriler/Tatlilar.dart';
import 'package:yemektarifleri/Navigation/Hesabim.dart';
import 'package:yemektarifleri/Navigation/NavigationBar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Yemek Tarifleri',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    super.dispose();
  }

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      // Do something with the entered name, such as storing it in a database or passing it to the MyHomePage widget.
      String name = _nameController.text;
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => MyHomePage(
            title: 'Yemek Tarifleri Uygulamasına Hoşgeldin, ', name: name),
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Giriş Yap'),
        ),
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/anasayfa.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextFormField(
                    controller: _nameController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Lütfen isminizi girin.';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      labelText: 'İsim',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: _submitForm,
                    child: Text('Devam Et'),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title, required this.name});

  final String title;
  final String name;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${widget.title}${widget.name}'),
      ),
      body: Center(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/anasayfa.jpg'), fit: BoxFit.cover),
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.green[600],
              ),
              child: IconButton(
                icon: Icon(Icons.account_circle_outlined),
                color: Colors.white,
                iconSize: 60,
                tooltip: "Giriş",
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => Hesabim(),
                  ));
                },
              ),
            ),
            ListTile(
              leading: Icon(Icons.keyboard_arrow_right),
              title: Text('Çorbalar'),
              onTap: () => selectedItem(context, 0),
            ),
            ListTile(
              leading: Icon(Icons.keyboard_arrow_right),
              title: Text('Ana Yemekler'),
              onTap: () => selectedItem(context, 1),
            ),
            ListTile(
              leading: Icon(Icons.keyboard_arrow_right),
              title: Text('Ara Yemekler'),
              onTap: () => selectedItem(context, 2),
            ),
            ListTile(
              leading: Icon(Icons.keyboard_arrow_right),
              title: Text('Hamur İşi'),
              onTap: () => selectedItem(context, 3),
            ),
            ListTile(
              leading: Icon(Icons.keyboard_arrow_right),
              title: Text('Salatalar'),
              onTap: () => selectedItem(context, 4),
            ),
            ListTile(
              leading: Icon(Icons.keyboard_arrow_right),
              title: Text('Tatlılar'),
              onTap: () => selectedItem(context, 5),
            ),
          ],
        ),
      ),
      bottomNavigationBar: navigationBar(),
    );
  }

  void selectedItem(BuildContext context, int index) {
    Navigator.of(context).pop();
    switch (index) {
      case 0:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => Corbalar(),
        ));
        break;
      case 1:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => AnaYemekler(),
        ));
        break;
      case 2:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => AraYemekler(),
        ));
        break;
      case 3:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => HamurIsi(),
        ));
        break;
      case 4:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => Salatalar(),
        ));
        break;
      case 5:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => Tatlilar(),
        ));
    }
  }
}
