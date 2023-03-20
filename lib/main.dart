import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
    
  
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sayac',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Sayaç Sayfası'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title,});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  static int _counter = 0;
  Color renk = Colors.blue;
  static double _font = 30;

  void _incrementCounter() {
    setState(() {
      _counter++;

      if(_counter > 0)
      {
        renk = Colors.green;
      }
    });
  }
  void _deincrementCounter() {
        setState(() {
      _counter--;

      if(_counter < 0)
      {
        renk = Colors.red;
      }
    });
  }

  void _fontincrementer() {
    setState(() {
      _font+=5;
    });
  }
  void _defontincrementer() {
        setState(() {
      _font-=5;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        title: Text(widget.title),
        actions: [
            IconButton(
            onPressed: _fontincrementer,
            tooltip: 'font++',
            icon: const Icon(Icons.arrow_upward),
          ),
            IconButton(
            onPressed: _defontincrementer,
            tooltip: 'font--',
            icon: const Icon(Icons.arrow_downward),
          ),
        ],
      ),
      body: Center(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '$_counter',
              style: TextStyle(color: renk, fontSize: _font),
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [

          FloatingActionButton(
            onPressed: _incrementCounter,
            tooltip: 'Sayacarti',
            child: const Icon(Icons.add),
          ),

          SizedBox(
            width: 3,
          ),

          FloatingActionButton(
            onPressed: _deincrementCounter,
            tooltip: 'Sayaceksi',
            child: const Icon(Icons.remove),
          ),
        ],
      ), 

     

    );
    
  }
}