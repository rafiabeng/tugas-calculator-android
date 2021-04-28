import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Calculator(),
    );
  }
}
class Calculator extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  dynamic displaytxt = 20;

  //Button Widget
  Widget calcbutton(String btntxt, Color btncolor, Color txtcolor) {
    return Container(
      child: RaisedButton(
        onPressed: () {
          calculation(btntxt);
        },
        child: Text('$btntxt',
          style: TextStyle(
            fontSize: 35,
            color: txtcolor,
          ),
        ),
        shape: CircleBorder(),
        color: btncolor,
        padding: EdgeInsets.all(20),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    //Calculator
    var text;
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('Tugas Calculator'),
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            // Calculator display
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text('0',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 100,
                      ),
                    ),
                  )
                ],
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                calcbutton('C', Colors.grey, Colors.black),
                calcbutton('/', Colors.amber[700], Colors.white),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                calcbutton('7', Colors.grey[850], Colors.white),
                calcbutton('8', Colors.grey[850], Colors.white),
                calcbutton('9', Colors.grey[850], Colors.white),
                calcbutton('x', Colors.amber[700], Colors.white),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                calcbutton('4', Colors.grey[850], Colors.white),
                calcbutton('5', Colors.grey[850], Colors.white),
                calcbutton('6', Colors.grey[850], Colors.white),
                calcbutton('-', Colors.amber[700], Colors.white),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                calcbutton('1', Colors.grey[850], Colors.white),
                calcbutton('2', Colors.grey[850], Colors.white),
                calcbutton('3', Colors.grey[850], Colors.white),
                calcbutton('+', Colors.amber[700], Colors.white),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                //this is button Zero
                RaisedButton(
                  padding: EdgeInsets.fromLTRB(34, 20, 128, 20),
                  onPressed: () {
                    calculation('0');
                  },
                  shape: StadiumBorder(),
                  child: Text('0',
                    style: TextStyle(
                        fontSize: 35,
                        color: Colors.white),
                  ),
                  color: Colors.grey[850],
                ),
                calcbutton('.', Colors.grey[850], Colors.white),
                calcbutton('=', Colors.amber[700], Colors.white),
              ],
            ),
            SizedBox(height: 10,),
          ],
        ),
      ),
    );
  }


  
}

dynamic text ='0';
double numOne = 0;
double numTwo = 0;

dynamic result = '0';
dynamic finalResult = '0';
dynamic opr = '';
dynamic preOpr = '';
void calculation(btnText) {
  if (btnText == 'C') {
    text = '0';
    numOne = 0;
    numTwo = 0;
    result = '';
    finalResult = '0';
    opr = '';
    preOpr = '';
  }
}