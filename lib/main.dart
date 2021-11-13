
import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());




class MyApp extends StatelessWidget {
	     @override
	     Widget build(BuildContext context) {
	       return MaterialApp(
           title: 'My app',
           theme: ThemeData(
              primarySwatch: Colors.lightBlue,


         ),
         home: TextFieldScreen(),

         );
       }
}
class TextFieldScreen extends StatefulWidget{
  @override
  TextFieldScreenState createState() => TextFieldScreenState();

}
class TextFieldScreenState extends State<TextFieldScreen>{
  final myController = TextEditingController();
  String name="";
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[


          Container(
            child:  TextField(
              controller: myController,
            ),
            padding: EdgeInsets.all(32),
          ),
          Container(
            width: double.infinity,
            child: TextButton(
              child: Text("Say Hello"),
              //child: Colors.red,
              onPressed: (){
                setState(() {
                  name="Hello " + myController.text +"!";
                });

              },
            ),
          ),
          Text(name),
        ],
      ),
    );
  }
}
