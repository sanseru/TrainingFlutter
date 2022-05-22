import 'dart:async';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:shimmer/shimmer.dart';
import 'package:training_app/widget/AlertDialogCustom.dart';

class HomePage extends StatefulWidget {
  static List animeTitle = [
    'Erased',
    'YourName',
    'Haikyu!! Fly High! Volleyball!',
    'Boku No Hero'
  ];

  static List image = [
    'assets/movie/7938841.jpg',
    'assets/movie/7938837.jpg',
    'assets/movie/7938854.jpg',
    'assets/movie/2730401.jpg',
  ];

  static List price = [
    '50.000',
    '70.000',
    '80.000',
    '20.000',
  ];

  static final DateTime now = DateTime.now();
  static final DateFormat formatter = DateFormat('dd-MM-yyyy H:m');

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool latestAnime = true;
  bool comingsoon = false;
  bool refreshVis = false;
  final String formatted = HomePage.formatter.format(HomePage.now);

  Future<void> pullRefresh() async {
    setState(() {
      refreshVis = true;
    });
    Timer(Duration(seconds: 4), () {
      setState(() {
        refreshVis = false;
        latestAnime = true;
        comingsoon = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
      ),
      drawer: Drawer(
        child:
            SafeArea(child: Column(children: [const Text('Get API Pokemon')])),
      ),
      body: RefreshIndicator(
        onRefresh: pullRefresh,
        child: ListView(
          children: [
            Stack(
              children: [
                Container(
                  height: 150,
                  decoration: const BoxDecoration(
                    color: const Color(0xFF00FFAB),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(150),
                      bottomRight: Radius.circular(150),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 50, right: 50, top: 60),
                  height: 100,
                  decoration: BoxDecoration(
                      color: const Color(0xFFE3FCBF), //Colors.red
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    children: [
                      Image.asset(
                        "assets/Test.png",
                        height: 80,
                        width: 100,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'Welcome To New App',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            const Text(
                              'Semangat Belajar',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Visibility(
                  visible: refreshVis,
                  // child: LinearProgressIndicator(),
                  child: Shimmer.fromColors(
                    baseColor: Colors.red,
                    highlightColor: Colors.yellow,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Loading....',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 40.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    formatted,
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            // SizedBox(
            //   height: 5,
            // ),
            Container(
              margin: const EdgeInsets.only(left: 30, right: 30, top: 5),
              decoration: BoxDecoration(
                color: const Color(0xFF00FFAB),
                borderRadius: BorderRadius.circular(150),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        latestAnime = true;
                        comingsoon = false;
                      });
                    },
                    child: Container(
                      height: 50,
                      width: 150,
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(color: Color(0xFF00FFAB)),
                      child: const Text('Latest Movie',
                          style: const TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                              color: Colors.redAccent)),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        comingsoon = true;
                        latestAnime = false;
                      });
                    },
                    child: Container(
                      height: 50,
                      width: 150,
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(color: Color(0xFF00FFAB)),
                      child: Text('Coming Soon Movie',
                          style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                              color: comingsoon == true
                                  ? Colors.orangeAccent
                                  : Colors.white)),
                    ),
                  )
                ],
              ),
            ),
            for (var a = 0; a <= 3; a++)
              Visibility(
                visible: latestAnime,
                child: Card(
                  margin:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                  elevation: 10.0,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 15),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          HomePage.image[a],
                          height: 150,
                          // width: 150,
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 10, right: 3, top: 10),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    HomePage.animeTitle[a],
                                    style: const TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  const SizedBox(height: 5),
                                  const Text(
                                    'Haikyu!!, yang diterbitkan di Indonesia dengan judul Haikyu!! Fly High! Volleyball!, adalah sebuah seri manga shōnen asal Jepang yang ditulis dan diilustrasikan oleh Haruichi Furudate. Bab-bab tunggalnya telah dimuat dalam majalah Weekly Shōnen Jump sejak bulan Februari 2012 hingga Juli 2020',
                                    maxLines: 6,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.justify,
                                  ),
                                  const SizedBox(height: 5),
                                  Row(
                                    children: [
                                      const Icon(Icons.paid),
                                      Text('IDR ${HomePage.price[a]}')
                                    ],
                                  ),
                                  ElevatedButton(
                                      onPressed: () {
                                        showAlertDialogCustom(
                                            context,
                                            HomePage.animeTitle[a],
                                            HomePage.price[a],
                                            HomePage.image[a]);
                                      },
                                      child: const Text('See Details'))
                                ]),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            Visibility(
              visible: comingsoon,
              child: Container(
                height: 100,
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 20, 78, 163)),
                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'ICIKIWIR',
                        style: TextStyle(fontSize: 18),
                      ),
                      const Text(
                        'Semangat Belajar',
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                ),
              ),
            )
            // Container(
            //   height: 100,
            //   decoration: BoxDecoration(color: Color.fromARGB(255, 20, 78, 163)),
            //   child: Center(
            //     child: Column(
            //       crossAxisAlignment: CrossAxisAlignment.center,
            //       mainAxisAlignment: MainAxisAlignment.center,
            //       children: [
            //         Text(
            //           'ICIKIWIR',
            //           style: TextStyle(fontSize: 18),
            //         ),
            //         Text(
            //           'Semangat Belajar',
            //           style: TextStyle(fontSize: 18),
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
