import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
      ),
      body: ListView(
        children: [
          Stack(
            children: [
              Container(
                height: 150,
                decoration: BoxDecoration(
                  color: Color(0xFF00FFAB),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(150),
                    bottomRight: Radius.circular(150),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 50, right: 50, top: 60),
                height: 100,
                decoration: BoxDecoration(
                    color: Color(0xFFE3FCBF), //Colors.red
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
                          Text(
                            'Welcome To New App',
                            style: TextStyle(fontSize: 18),
                          ),
                          Text(
                            'Semangat Belajar',
                            style: TextStyle(fontSize: 18),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),

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
    );
  }
}
