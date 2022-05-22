import 'package:flutter/material.dart';
import 'package:training_app/screen/HomePage.dart';

void main() {
  // var mapping = {"name": "Haris", "class": "KA10"};
  // for (var i = 1; i <= 10; i++) {
  //   if (i % 2 == 0) {
  //     print("Nilai dari I =$i");
  //   }
  // }
  // print(mapping);
  // incr(3.5, 7);

  // Employee employee = Employee();
  // employee.name = "Haris Getter Setter";
  // employee.result();
  runApp(const MyApp());
}

// void incr(dynamic a, int b) {
//   dynamic result = a + b;
//   print('Nilai tambahnya $a + $b adalah = $result');
// }

// class Employee {
//   late String name;
// //getter method
//   String get emp_name {
//     return name;
//   }

// //setter method
//   void set emp_name(String name) {
//     this.name = name;
//   }

// //function definition
//   void result() {
//     print(name);
//   }
// }

// Stateless Berarti Statis
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Training',
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      home: HomePage(),
    );
  }
}

// stateful Berarti Dinamis
// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key? key, required this.title}) : super(key: key);

//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;

//   void _incrementCounter() {
//     setState(() {
//       _counter++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const Text(
//               'Anda telah menekan tombol sebanyak:',
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headline4,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }
