import 'package:flutter/material.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:tflite/tflite.dart';
import 'dos.dart';
import 'tres.dart';
import 'package:splashscreen/splashscreen.dart';
void main() => runApp(MaterialApp(
  home: splash(),
));

class splash extends StatefulWidget {
  @override
  _splash createState() => new _splash();
}

class _splash extends State<splash> {
  @override
  Widget build(BuildContext context) {
    return new SplashScreen(
      title: new Text(
        'Deteccion de Covid',
        style: new TextStyle(
            fontWeight: FontWeight.bold, fontSize: 30.0, color: Colors.white),
      ),
      photoSize: 120.0,
      seconds: 8,
      backgroundColor: Colors.black,
      image: Image.network(
        "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRWkmCp0eyFuOKn-DO5nUNU_OeAv6T0ILrCP43l4vVaPt7bcPhj&usqp=CAU",
      ),
      navigateAfterSeconds: new opc(),
    );
  }
}
class opc extends StatefulWidget{
  @override
  _opc createState() => _opc();
}


class _opc extends State<opc>{
  @override
  Widget build(BuildContext context) {
// TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Opciones para detectar"),),
      floatingActionButton: FloatingActionButton(
      onPressed: _optionsDialogBox,
      child: Icon(Icons.image),
    ),);

  }
  Future<void> _optionsDialogBox() {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            content: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  GestureDetector(
                    child: Text('Galeria'),
                    onTap:(){
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MyApp(opcion: "galeria",)));
                    },
                  ),

                  Padding(
                    padding: EdgeInsets.all(8.0),
                  ),
                  GestureDetector(
                    child: Text('Camara'),
                    onTap: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MyApp(opcion: "camara",)));
                    },
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                  ),
                  GestureDetector(
                    child: Text('Acerca de mi'),
                    onTap: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MyApp2("Daniel Marquez Lopez", "Tic 41", "1718110859")));
                    },
                  ),
                ],
              ),
            ),
          );
        });
  }
}
