import 'package:flutter/material.dart';
import 'package:yemektarifleri/Navigation/Favoriler.dart';
import 'package:yemektarifleri/Navigation/Hesabim.dart';
import 'package:yemektarifleri/Navigation/Menu.dart';

class navigationBar extends StatefulWidget {
  const navigationBar({Key? key}) : super(key: key);

  @override
  State<navigationBar> createState() => _navigationBarState();
}

class _navigationBarState extends State<navigationBar> {
  @override
  Widget build(BuildContext context) {
    int _currentIndex = 0;
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: _currentIndex,
      backgroundColor: Colors.green[600],
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.white,
      selectedFontSize: 12,
      unselectedFontSize: 12,
      onTap: (value) {
        setState(() => _currentIndex = value);
        value == 0
            ? Navigator.push(
                context, MaterialPageRoute(builder: (context) => Menu()))
            : value == 1
                ? Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Favoriler()))
                : Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Hesabim()));
      },
      items: const [
        BottomNavigationBarItem(
          label: "Menü",
          icon: Icon(Icons.restaurant),
        ),
        BottomNavigationBarItem(
          label: "Favoriler",
          icon: Icon(Icons.favorite),
        ),
        BottomNavigationBarItem(
          label: "Hesabım",
          icon: Icon(Icons.home_outlined),
        ),
      ],
    );
  }
}
