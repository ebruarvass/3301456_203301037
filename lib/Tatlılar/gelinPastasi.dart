import 'package:flutter/material.dart';

class gelinPastasi extends StatelessWidget{
  const gelinPastasi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.brown[200],
      appBar: AppBar(
        backgroundColor:Colors.green[900] ,
        title: Text("Gelin Pastası"),
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

      body: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset("images/",width: 450,height: 450),

                Text("MALZEMELER : \n\n\n",textAlign: TextAlign.center,style: TextStyle(color: Colors.white),),
                Text("YAPILIŞI : \n\n\n",textAlign: TextAlign.center,style: TextStyle(color: Colors.white),),
              ],
            ),
          )

      ),

    );
  }
}