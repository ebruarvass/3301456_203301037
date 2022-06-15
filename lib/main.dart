import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:untitled4/loginPage.dart';
import 'package:untitled4/navigationbar.dart';
import 'Yemekler/Corbalar.dart';
import 'Yemekler/AnaYemekler.dart';
import 'Yemekler/AraYemekler.dart';
import 'Yemekler/Hamurİşi.dart';
import 'Yemekler/Salatalar.dart';
import 'Yemekler/Tatlılar.dart';
import 'package:firebase_core/firebase_core.dart';
main() async {

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static const String routeName = '/Corbalar';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '',
      home: HomePage(),

      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.green),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _isFavorited=false;
  int _favoriteCount=0;
  void _toogleFavorite(){
    setState(() {
      if (_isFavorited){
        _favoriteCount-=0;
        _isFavorited=false;
      }else{
        _favoriteCount+=1;
        _isFavorited=true;

      }
    });
  }
  late String name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: const Text("Yemek Tarifleri"),
        backgroundColor: Colors.green[600],
        iconTheme: const IconThemeData(color: Colors.white),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
        ],
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/WhatsApp Image 2022-03-23 at 18.10.06.jpg'),
                fit: BoxFit.cover),
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
                  onPressed: (){Navigator.of(context).push(MaterialPageRoute(
                    builder: (context)=> GirisAlani(),
                  ));},
                ),
           ),
            ListTile(
              leading: Icon(Icons.keyboard_arrow_right),
              title: Text('Çorbalar'),
              onTap: () => selectedItem(context,0),
            ),
            ListTile(
              leading: Icon(Icons.keyboard_arrow_right),
              title: Text('Ana Yemekler'),
              onTap: () => selectedItem(context,1),
            ),
            ListTile(
              leading: Icon(Icons.keyboard_arrow_right),
              title: Text('Ara Yemekler'),
              onTap: () => selectedItem(context,2),
            ),
            ListTile(
              leading: Icon(Icons.keyboard_arrow_right),
              title: Text('Hamur İşi'),
              onTap: () => selectedItem(context,3),
            ),
            ListTile(
              leading: Icon(Icons.keyboard_arrow_right),
              title: Text('Salatalar'),
              onTap: () => selectedItem(context,4),
            ),
            ListTile(
              leading: Icon(Icons.keyboard_arrow_right),
              title: Text('Tatlılar'),
              onTap: () => selectedItem(context,5),
            ),

          ],
        ),
      ),
      bottomNavigationBar: navigationBar(),
    );
  }
  void selectedItem(BuildContext context, int index){
    Navigator.of(context).pop();
    switch(index){
      case 0:
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context)=>Corbalar(),
        ));
        break;
        case 1:
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context)=>AnaYemekler(),
          ));
          break;
      case 2:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context)=>AraYemekler(),
        ));
        break;
      case 3:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context)=>HamurIsi(),
        ));
        break;
      case 4:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context)=>Salatalar(),
        ));
        break;
      case 5:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context)=>Tatlilar(),
        ));
    }
  }
}
ListTile myListTile(String name, BuildContext context) {
  return ListTile(
    onTap: () {
      Navigator.of(context).pop();
    },
    title: Text(name),
  );
}


