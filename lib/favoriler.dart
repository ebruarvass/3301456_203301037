import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
class favoriler extends StatefulWidget {
  const favoriler({Key? key}) : super(key: key);

  @override
  State<favoriler> createState() => _favorilerState();
}

class _favorilerState extends State<favoriler> {
  final _firestore = FirebaseFirestore.instance;

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    //collection düzeyinde veri
    CollectionReference musicInfo = _firestore.collection('Yemekler');
    //document düzeyinde veri
print(musicInfo.parameters);
return Container(
      width: screenSize.width,
      height: screenSize.height,
      color: Colors.green,
      child: StreamBuilder<QuerySnapshot>(
          stream: musicInfo.snapshots(),
          builder: (BuildContext context, AsyncSnapshot asyncSnapshot) {
            //just add this line
            if (asyncSnapshot.data == null)
              return Center(child: CircularProgressIndicator());

            List<DocumentSnapshot> docSnap = asyncSnapshot.data.docs;
            return ListView.builder(
              itemCount: docSnap.length,
              itemBuilder: (context, index) {
                return Flexible(
                  child: Container(

                    padding: EdgeInsets.only(left: 10, top: 10, right: 15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.brown,
                    ),
                    width: 400,
                    height: 150,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              children: [
                                Image.network(
                                  '${docSnap[index]["url"]}',
                                  fit: BoxFit.fill,
                                  width: 130,
                                ),
                                Text(
                                  '${docSnap[index]["adı"]}',
                                  style: TextStyle(
                                      decoration: TextDecoration.none,
                                      fontSize: 20,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                            Column(
                              children: [

                                 Container(
                                    width: 200,
                                    child: Text(
                                        "Puanı: ${docSnap[index]["özellik"]}",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15,
                                            decoration: TextDecoration.none),
                                        textAlign: TextAlign.left)),
                                Container(
                                  width: 200,
                                  height: 10,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 150),
                                  width: 40,
                                  height: 40,
                                  child: FloatingActionButton(
                                    child: Icon(Icons.send),
                                    elevation: 5,
                                    backgroundColor: Colors.red,
                                    onPressed: () {
                                      print("Favorilere eklendi");
                                    },
                                    mini: false,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          }),
    );
  }
}
