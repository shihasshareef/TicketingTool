import "package:flutter/material.dart";
import './app_screens/home.dart';
import './app_screens/carousel.dart';

void main() {
  runApp(MaterialApp(
    title: "RafterSpendings",
    home: SpendingsForm(
        /*home:  Scaffold(*/
        /*  appBar: AppBar(title: Text("Long List"),),*/
        /*  body: getListView()*/
        /*),*/
        ),
  ));
}

List<String> getListElements() {
  var items = List<String>.generate(100, (counter) => "Item $counter");
  return items;
}

Widget getListView() {
  var listItems = getListElements();
  var listView = ListView.builder(itemBuilder: (context, index) {
    return ListTile(
      title: Text(listItems[index]),
    );
  });
  return listView;
}

class SpendingsForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _SpendingsFormState();
  }
}

class _SpendingsFormState extends State<SpendingsForm> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: Container(
          height: 100,
            color: Colors.deepPurple,
            child: Column(children: <Widget>[
              Expanded(
                  child: Row(children: <Widget>[
                optionImage(),
                spendingsImage(),
                photoImage()
              ])),
              Expanded(
                  child: Row(children: <Widget>[
                //prevImage(),
                Column(children: <Widget>[
                  Expanded(
                      child: Row(children: <Widget>[
                       // Carousel()
                    /*Text("Month",
                        textDirection: TextDirection.ltr,
                        style: TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: 25.0,
                            fontFamily: '',
                            fontWeight: FontWeight.w700,
                            color: Colors.green)),*/
                  ])),
                  /*Expanded(
                      child: Row(children: <Widget>[
                    Text("Amount",
                        textDirection: TextDirection.ltr,
                        style: TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: 25.0,
                            fontFamily: '',
                            fontWeight: FontWeight.w700,
                            color: Colors.green)),
                  ])),*/
                  //SubmitButton()
                ]),
                //nextImage()
              ])),
              Expanded(
                  child: Row(children: <Widget>[
                //getListView()
              ]))
            ])));
  }
}

class optionImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage('images/optionIcon.png');
    Image image = Image(image: assetImage);
    return Container(child: image, width: 60, height: 60);
  }
}
class spendingsImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage('images/spendingsIcon.png');
    Image image = Image(image: assetImage);
    return Container(child: image, width: 250, height: 250);
  }
}
class photoImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage('images/photoIcon.png');
    Image image = Image(image: assetImage);
    return Container(child: image, width: 60, height: 60);
  }
}

class prevImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage('images/prevIcon.png');
    Image image = Image(image: assetImage);
    return Container(child: image, width: 60, height: 60);
  }
}

class nextImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage('images/nextIcon.png');
    Image image = Image(image: assetImage);
    return Container(child: image, width: 60, height: 60);
  }
}

