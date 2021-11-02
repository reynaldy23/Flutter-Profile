import 'package:flutter/material.dart';

void main() {
  runApp(const myApp()
  );
}


class myApp extends StatelessWidget { //stateless widget is usefull for hot reload, because it only rerun
  const myApp({Key? key}) : super(key: key); // all the code inside override widget build

  @override
  Widget build(BuildContext context) {
    return
      MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: const Text('I am Rich'),
            centerTitle: true,
            backgroundColor: Colors.pink,
          ),
          backgroundColor: Colors.yellow[100],
          body: const Center(
            child: Image(
              image: NetworkImage(
                  'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg'),
            ),
          ),
        ),
        debugShowCheckedModeBanner: false, //remove debug banner
      );
  }
}

