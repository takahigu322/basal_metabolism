import 'package:flutter/material.dart';
import 'dart:math'; // prefix無しimport

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
  var _weightController = TextEditingController();
  var _heightController = TextEditingController();
  var _ageController = TextEditingController();

  double _weight = 0;
  double _height = 0;
  int _age = 0;
  int base_number = 10;
  //static String hge = "";

  @override
  void initState() {
    super.initState();
    setState(() {
      _weightController = new TextEditingController(); //textfieldに初期値を設定
      _heightController = new TextEditingController();
      _ageController = new TextEditingController();
    });
  }

  @override
  void dispose() {
    super.dispose();
    print("dispose");
  }

  //int hoge = _weightController.toInt();

  //Repository().plaseAddApiProvider(int.parse("dd"));
  //int weight = int.parse(_weightController.text); //ここが原因でエラー？formaterrorが出力
  //int height = int.parse(_heightController.text);
  //int age = int.parse(_ageController.text);

  //static int basal() {
  //return 13397 * weight + 4799 * height - age * 56677 + 88362;
  //}

  //String _basal = basal.toString(); // int -> String
  //var hoge = String.parse(basal());

  //static int basal = (weight * height * age);

  //int numlnt = num.parse(_weight); Mathが定義されない

  //var hoge = int.parse(_weight);
  //var myInt = int.parse(_weightController);

  //int i = Math.parseInt("111");
  //int i = _weight.toInt(); // i = 20
  //var myInt = int.parse(_weightController);

  //数値をテキストtostring
  //onChanged: ,
  //on

  //  try {
  //   hoge = double.parse(text.toString());
  // } catch (exception) {
  //   hoge = 0.0;
  // }
  //String height = "";
  //var age = 0;

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
                  controller: _weightController,
                  //onSubmitted: (value) {
                  //  height = value;
                  //},

                  style: TextStyle(fontWeight: FontWeight.bold),
                ),

                TextField(
                  decoration: InputDecoration(
                    labelText: "身長",
                    hintText: "身長",
                    icon: Icon(Icons.accessibility_new),
                  ),
                  controller: _heightController,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                //TextField(),
                TextField(
                  decoration: InputDecoration(
                    labelText: "年齢",
                    hintText: "年齢",
                    icon: Icon(Icons.accessibility_new),
                  ),
                  controller: _ageController,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Container(
                  padding: EdgeInsets.all(16.0),
                  child: RaisedButton(
                    child: Text('Submit'),
                    onPressed: () => setState(
                      () {
                        //_weight = _weightController.text;
                        //_height = _heightController.text;
                        _weight = double.parse(_weightController.text);
                        _height = double.parse(_heightController.text);
                        _age = int.parse(_ageController.text);

                        if (_age == 0) {
                          print("年齢を入力して");
                        }

                        print(_weight);
                        print(_height);
                        print(_age);
                        print(_age * _height);

                        //print(basal());
                        //print('weight is int: ${weight is int}');
                      },
                    ),
                  ),
                ),

                Padding(
                  padding: EdgeInsets.all(10),
                  child: Text("あなたの基礎代謝は" +
                      (((13.397 * _weight +
                                          4.799 * _height -
                                          5.677 * _age +
                                          88.362) *
                                      base_number)
                                  .round() /
                              base_number)
                          .toString() +
                      "(kcal)です"), //文字列へ,元々はbasal().toString()
                  //child: Text("あなたの基礎代謝は「" + _basal + "」です"),
                ),
                //Padding(
                //  padding: EdgeInsets.all(10),

                //child: Text(weight),
                //),

                //TextField(),
              ],
            ),
          )),
    );
  }
}
