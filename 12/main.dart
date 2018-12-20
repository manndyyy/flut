import 'package:flutter/material.dart';

void main(){
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "My App",
      home: new HomePage(),
      theme: new ThemeData(
        primarySwatch: Colors.orange,
        brightness: Brightness.light,
        accentColor: Colors.red,
      ),
    );
  }
}
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  String myText = "Hello World";

  void _changeText (){
    setState(() {
      if(myText.startsWith("H")){
      myText = "Welcome to MyApp";
      }else{
        myText = "Hello World";
      }
    });
  }

  Widget _bodyWidget(){
  return new Container(
    padding: const EdgeInsets.all(8.0),
    child: new Center(
      child: new Column(
        mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        new Text(myText,style: new TextStyle(
          fontSize: 22.0,
        ),),
        new FloatingActionButton(
            child: new Icon(Icons.face),
            onPressed: _changeText,)
      ],
    ),
  ),
  );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Center(child: new Text("App 2"),),
      ),
        body: _bodyWidget(),
      floatingActionButton: new FloatingActionButton(
          child: new Icon(Icons.add),
          onPressed: _changeText,),
    );
  }
}




