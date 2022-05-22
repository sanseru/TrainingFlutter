import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:training_app/screen/AnimeDetail.dart';

void showAlertDialogCustom(
    BuildContext context, String title, String price, String imgPath) {
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return CupertinoAlertDialog(
          title: Text(title),
          content: Column(children: [
            Padding(
              padding: EdgeInsets.only(left: 10, right: 10),
              child: Text('Release Date : 22 Mei 2022'),
            ),
          ]),
          actions: [
            CupertinoDialogAction(
              child: Text('Close'),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            CupertinoDialogAction(
              child: Text('More Detail'),
              onPressed: () {
                Navigator.pop(context);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => AnimeDetail(
                              title,
                              price,
                              imgPath,
                            )));
              },
            ),
          ],
        );
      });
}
