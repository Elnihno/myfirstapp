import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  var info = 'Pratikey welcom' ;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
       
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: soir(),
    );
  }
}

class soir extends StatefulWidget {
  @override
  _soirState createState() => _soirState();
}

class _soirState extends State<soir> {

  var info = 'Pratikey welcom' ;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    info = 'Bienvenue sur le tuto' ;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(info),
        ),
        body: RaisedButton(
          child: Text('Valider'),
          onPressed: (){
            print('validation OK==========') ;
            setState(() {
              info = 'change title' ;
            });
          },
          ),
      );
  }
}