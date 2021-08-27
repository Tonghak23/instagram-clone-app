import 'package:flutter/material.dart';
import 'package:flutter_instagram_cloneapp/myhome.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.blueGrey,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          appBarTheme: AppBarTheme(
            elevation: 1,color: Colors.white,iconTheme: IconThemeData(color: Color.fromRGBO(40, 40, 40, 1)),
          ),
          iconTheme: IconThemeData(color: Color.fromRGBO(40, 40, 40, 1)),
        ),
        debugShowCheckedModeBanner: false,
        home: MyHome(),
      ),
    );
  }
}