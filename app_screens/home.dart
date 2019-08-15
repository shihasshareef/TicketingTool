import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
            alignment: Alignment.center,
            color: Colors.deepPurple,
            child: Column(
              children: <Widget>[
                Row(
                    children: <Widget>[
                      Expanded(child: Text(
                          "Test",
                          textDirection: TextDirection.ltr,
                          style: TextStyle(
                              decoration: TextDecoration.none,
                              fontSize: 35.0,
                              fontFamily: '',
                              fontWeight: FontWeight.w700,
                              color: Colors.yellow
                          )
                      )),
                      Expanded(child: Text(
                          "Test1",
                          textDirection: TextDirection.ltr,
                          style: TextStyle(
                              decoration: TextDecoration.none,
                              fontSize: 25.0,
                              fontFamily: '',
                              fontWeight: FontWeight.w700,
                              color: Colors.green
                          )
                      ))
                    ]
                )

              ],
            )
        )
    );
  }
}