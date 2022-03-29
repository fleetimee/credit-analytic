import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    //return CupertinoApp(
     // title: "app",
     // home: CupertinoPageScaffold(
       // navigationBar: CupertinoNavigationBar(
        //  middle: Text("H1"),
       // ),
        //  child: Container(),
       //   backgroundColor: Colors.white,
       // ),
    //  );

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.yellow,
      ),
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.system,
      home: const MyHomePage(title: 'Aplikasiku'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {

      _counter++;
    });
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
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            const Text(
              'pencetan anda:',
            ),
            Text(
              '${_counter}X',
              style: Theme.of(context).textTheme.headline4,
            ),
            Text("Berhasil Memunculkan Tulisan")
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
