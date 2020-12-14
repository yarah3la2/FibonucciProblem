import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(title: 'Fibonacci Problem')
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int FibonacciWithRecurssion(int number){
    if (number <= 1)
      return number;
    return FibonacciWithRecurssion(number-1) + FibonacciWithRecurssion(number-2);
  }

  int FibonacciWithOutRecurssion(int number){
    int n1=0,n2=1,n3,i;
    for(i=2;i<number;++i)
    {
      n3=n1+n2;
      return n3;
      n1=n2;
      n2=n3;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'fibonicce result for number 9',
            ),
            Text(
    FibonacciWithRecurssion(9).toString(),
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
 // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
