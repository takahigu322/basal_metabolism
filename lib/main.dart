import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "基礎代謝",
          ),
          centerTitle: true,
        ),
        body: BasicHome(),
      ),
    );
  }
}

class BasicHome extends StatefulWidget {
  @override
  _BasicHomeState createState() => _BasicHomeState();
}

class _BasicHomeState extends State<BasicHome> {
  //var _weightController = TextEditingController();
  String height = "";
  var age = 0;

  //void _humanText(int e){
  //  setState(() {
  //    _weightController = ;
  // });
  //}

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, //要素は固定にしたまま
      home: Scaffold(
          resizeToAvoidBottomPadding: false,
          body: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Text("基礎代謝基準値"),
                ),
                Padding(
                    padding: EdgeInsets.all(10),
                    child: Text("体重、身長、年齢を入れていただければ")),

                TextField(
                  decoration: InputDecoration(
                    labelText: "体重",
                    hintText: "体重",
                    icon: Icon(Icons.accessibility_new),
                  ),
                  //controller: _weightController,
                  onSubmitted: (value) {
                    height = value;
                  },
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),

                TextField(
                  decoration: InputDecoration(
                    labelText: "身長",
                    hintText: "身長",
                    icon: Icon(Icons.accessibility_new),
                  ),
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                //TextField(),
                TextField(
                  decoration: InputDecoration(
                    labelText: "年齢",
                    hintText: "年齢",
                    icon: Icon(Icons.accessibility_new),
                  ),
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Text("あなたの基礎代謝は「" + height + "」です"),
                ),
                //TextField(),
              ],
            ),
          )),
    );
  }
}
