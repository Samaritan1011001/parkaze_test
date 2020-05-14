import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Parkaze Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Parkaze testing'),
//      home: SecondRoute(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: ListView(
//        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: 10,
          ),
          CarouselSlider.builder(
            options: CarouselOptions(height: 300.0,enlargeCenterPage: true),
            itemCount: 2,
            itemBuilder: (BuildContext context, int itemIndex) => Container(
                width: MediaQuery.of(context).size.width,
//                margin: EdgeInsets.symmetric(horizontal: 5.0),
                decoration: BoxDecoration(color: Colors.blueGrey),
                child: Image.asset("assets/loc_${itemIndex}.png",fit: BoxFit.fill,),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          ListTile(
            title: Padding(
              padding: const EdgeInsets.only(left: 22.0),
              child: Text("Private Parking Spot in Parking Lot on Mission Hill!"),
            ),
            subtitle: Row(
              children: <Widget>[
                Icon(Icons.location_on),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("841 Parker St, Boston, MA 02120, USA"),
                    Text(
                      "Verified",
                      style: TextStyle(
                          color: Colors.green, fontWeight: FontWeight.bold),
                    ),
                  ],
                )
              ],
            ),
            trailing: CircleAvatar(
              child: Icon(Icons.person),
              backgroundColor: Colors.black,
            ),
          ),
          Card(
            margin: EdgeInsets.all(8),
            elevation: 5.0,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Icon(Icons.person_pin_circle),
                          Text(" Type of Spot"),
                        ],
                      ),
                      Text("> Type: Residential / Parking Lot"),
                      Text("> Size: Large"),
                      Text("> Spots available: 1 Spots"),
                    ],
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Icon(Icons.access_time,size: 16,),
                          Text("Opening Hours"),
                        ],
                      ),

                      Text("> Mon - Fri: Open"),
                      Text("> Sat: Open"),
                      Text("> Sun: Open"),
                    ],
                  )
                ],
              ),
            ),
          ),
          Card(
            margin: EdgeInsets.all(8),
            elevation: 5,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      height: 30,
                      decoration: BoxDecoration(
                      color: Colors.white,
                        gradient: new LinearGradient(
                          colors: [Colors.white, Colors.blue],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          tileMode: TileMode.clamp
                        ),),
                      child: Text(
                        "About this listing",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text("Hi there!"),
                    Text(
                        "I am renting my private parking spot on Mission Hill.  The spot is in a parking lot and is not shared with anyone."),
                  ],
                ),
              ),
            ),
          ),
          ListTile(
            title: Text("test"),
          ),
          ListTile(
            title: Text("test"),
          ),
          ListTile(
            title: Text("test"),
          ),
          ListTile(
            title: Text("test"),
          ),
          ListTile(
            title: Text("test"),
          ),
          ListTile(
            title: Text("test"),
          ),
          ListTile(
            title: Text("test"),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SecondRoute()),
          );
        },
        tooltip: 'Chat',
        child: Icon(Icons.chat),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}



class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Route"),
      ),
      body: Center(
        child: Container(
          width: 300,
          height: 400,
          color: Colors.red,
          child:
//          Transform.rotate(
//            angle: math.pi / 12.0,
//            child: ClipPath(
////            clipper: ArcClipper(),
//              child: Container(
//                width: 300,
//                height: 400,
//                decoration: BoxDecoration(
//                  shape: BoxShape.circle,
//                color: Colors.lightBlueAccent,
//                ),
//                ),
//            ),
//          ),
          ClipPath(
            clipper: ArcClipper(),
            child: Transform.rotate(
              angle: math.pi / 4.0,
              child: ClipOval(
                clipper: ovalClipper(),
                child: Container(
                  width: 300,
                  height: 400,
                  decoration: BoxDecoration(shape: BoxShape.rectangle,
                  color: Colors.lightBlueAccent, ),
                  ),
              ),
            ),
          ),
        )
      ),
    );
  }
}
class ovalClipper extends CustomClipper<Rect> {
  @override
  Rect getClip(Size size) {
    Rect rect = Rect.fromLTRB(0.0, 0.0, size.width, size.height,);
    return rect;
//    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Rect> oldClipper) => false;
}
class ArcClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
//    path.lineTo(0.0, size.height - 20);
    path.lineTo(0, size.height);
    path.quadraticBezierTo(size.width/4, size.height - 80, size.width/2, size.height-40);
    path.quadraticBezierTo(3/4*size.width, size.height, size.width, size.height-30);
    path.lineTo(size.width, 0);

//    var firstControlPoint = Offset(size.width / 4, size.height);
//    var firstPoint = Offset(size.width / 2, size.height);
//    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
//        firstPoint.dx, firstPoint.dy);

//    var secondControlPoint = Offset(size.width - (size.width / 4), size.height);
//    var secondPoint = Offset(size.width, size.height - 30);
//    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
//        secondPoint.dx, secondPoint.dy);

//    path.lineTo(size.width, 50.0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}