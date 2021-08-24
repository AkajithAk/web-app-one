import 'dart:async';

import 'package:flutter/material.dart'; 

import 'one.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
    );
  }
}



class SplashScreen extends StatefulWidget {
  const SplashScreen({ Key? key }) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
        Duration(seconds: 14),
        () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => One())));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:Column(
        
          mainAxisAlignment:MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(left:100.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              // mainAxisAlignment: MainAxisAlignment.center, 
              
              children: [
                Container(
                  child:  Image.asset("assets/logos.jpeg",height: 200,width: 200,),
                ),
              ],
            ),
          ),
        ],
      )
    );
  }
}




