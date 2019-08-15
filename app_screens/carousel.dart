import 'package:flutter/material.dart';

class Carousel extends StatefulWidget {
  _CarouselState createState() => _CarouselState();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return null;
  }
}

class _CarouselState extends State<Carousel> {
  int monthIndex = 0;
  List<String> month = [
    'Jan',
    'Feb',
    'Mar',
    'Apr',
    'May',
    'Jun',
    'July',
    'Aug',
    'Sep',
    'Oct',
    'Nov',
    'Dec'
  ];

  void prevImage() {
    setState(() {
      monthIndex = monthIndex > 0 ? monthIndex - 1 : 0;
    });
  }

  void nextImage() {
    setState(() {
      monthIndex = monthIndex < month.length - 1 ? monthIndex + 1 : monthIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Carousel'),
          centerTitle: true,
        ),
       /* body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[*/
              /*Center(
                  child: Stack(
                      children: <Widget>[
                        Container(
                          child: Column(children: <Widget>[
                            Expanded(
                                child: Row(children: <Widget>[
                                  Text("$month[monthIndex]",
                                      textDirection: TextDirection.ltr,
                                      style: TextStyle(
                                          decoration: TextDecoration.none,
                                          fontSize: 25.0,
                                          fontFamily: '',
                                          fontWeight: FontWeight.w700,
                                          color: Colors.green)),
                                ])),
                            Expanded(
                                child: Row(children: <Widget>[
                                  Text("Rs",
                                      textDirection: TextDirection.ltr,
                                      style: TextStyle(
                                          decoration: TextDecoration.none,
                                          fontSize: 25.0,
                                          fontFamily: '',
                                          fontWeight: FontWeight.w700,
                                          color: Colors.green)),
                                  Text("5500.67",
                                      textDirection: TextDirection.ltr,
                                      style: TextStyle(
                                        decoration: TextDecoration.none,
                                        fontSize: 25.0,
                                        fontFamily: '',
                                        fontWeight: FontWeight.w700,
                                      )),
                                  SubmitButton()
                                ]))
                          ]),
                          *//*decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(5.0)
    ),
    height: 4.0,
    width: 3.0*//*
                        )
                      ])
              )*/
   /*         ]
    )*/
    );
  }
}

class SubmitButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: RaisedButton(
            color: Colors.red, child: Text("Submit"), onPressed: null));
  }
}
