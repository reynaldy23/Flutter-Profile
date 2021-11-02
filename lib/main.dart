import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const myApp());
}

class myApp extends StatelessWidget {
  //stateless widget is useful for hot reload, because it only rerun
  const myApp({Key? key})
      : super(key: key); // all the code inside override widget build

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Center(
              child: CircleAvatar(
                radius: 50,
                backgroundColor: Colors.red,
                backgroundImage: NetworkImage(
                    'https://www.ilmubahasainggris.com/wp-content/uploads/2017/03/NGC-768x432.jpg.webp'),
              ),
            ),
            Text(
              'Reynaldy',
              style: GoogleFonts.pacifico(
                  textStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 45,
                      fontWeight: FontWeight.bold)),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Text(
                'JUNIOR FLUTTER DEVELOPER',
                style: GoogleFonts.sourceSansPro(
                    textStyle: TextStyle(
                        color: Colors.teal[100],
                        fontSize: 20,
                        letterSpacing: 2)),
              ),
            ),
             SizedBox( //for divider, w/o sizedbox is fine. sized box for spacing between widget
              height: 20,
              width: 150,
              child: Divider(
                color: Colors.teal.shade100,
                thickness: 1,
              ),
            ),
            Card( //card default color white
              margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: ListTile(
                  leading: const Icon(Icons.phone, color: Colors.teal),
                  title: Text('+62 895 1602 3980',
                      style: GoogleFonts.sourceSansPro(
                          textStyle: const TextStyle(
                              color: Colors.black, fontSize: 20)))),
            ),
            Card(
              margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: ListTile(
                  leading: const Icon(Icons.email, color: Colors.teal),
                  title: Text('reynaldykwok@gmail.com',
                      style: GoogleFonts.sourceSansPro(
                          textStyle: const TextStyle(
                              color: Colors.black, fontSize: 20)))),
            )
          ],
        )),
      ),
      debugShowCheckedModeBanner: false, //remove debug banner
    );
  }
}
