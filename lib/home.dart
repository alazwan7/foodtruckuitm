import 'package:flutter/material.dart';
import 'dart:math';
import 'package:flutter/gestures.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:foodtruckuitm/component/animated_background.dart';
import 'package:foodtruckuitm/component/animated_wave.dart';
import 'package:url_launcher/url_launcher.dart';

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 15.0),
      color: Colors.yellow,
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 25.0, left: 30.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Social media :'),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 25.0, left: 95.0),
                child: Align(
                  child: Text('Organized by :'),
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(left: 22.0),
            child: Row(
              children: <Widget>[
                IconButton(
                  icon: FaIcon(FontAwesomeIcons.instagramSquare),
                  onPressed: () async {
                    const url = 'https://www.instagram.com/uitmjasin/?hl=en';
                    if (await canLaunch(url)) {
                      await launch(url);
                    } else {
                      throw 'Could not launch $url';
                    }
                  },
                ),
                IconButton(
                  icon: FaIcon(FontAwesomeIcons.facebook),
                  onPressed: () async {
                    const url =
                        'https://www.facebook.com/UitmJasinMelaka';
                    if (await canLaunch(url)) {
                      await launch(url);
                    } else {
                      throw 'Could not launch $url';
                    }
                  },
                ),
                Container(
                  margin: EdgeInsets.only(left: 100.0),
                  child: Row(
                    children: <Widget>[
                      Image(
                        image: AssetImage('images/UITMLogo.png'),
                        width: 75.0,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
          child: Center(
            child: Hero(
              tag: 'foodTruck1',
              child: Image(
                image: AssetImage('images/foodTruck1.jpg'),
              ),
            ),
          ),
          onTap: () {
            Navigator.pop(context);
          }),
    );
  }
}

class Screen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
          child: Center(
            child: Hero(
              tag: 'foodTruck2',
              child: Image(
                image: AssetImage('images/foodTruck2.jpg'),
              ),
            ),
          ),
          onTap: () {
            Navigator.pop(context);
          }),
    );
  }
}

class Screen3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
          child: Center(
            child: Hero(
              tag: 'foodTruck3',
              child: Image(
                image: AssetImage('images/foodTruck3.jpg'),
              ),
            ),
          ),
          onTap: () {
            Navigator.pop(context);
          }),
    );
  }
}

class Screen4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
          child: Center(
            child: Hero(
              tag: 'foodTruck4',
              child: Image(
                image: AssetImage('images/foodTruck4.jpg'),
              ),
            ),
          ),
          onTap: () {
            Navigator.pop(context);
          }),
    );
  }
}

class Screen5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
          child: Center(
            child: Hero(
              tag: 'foodTruck5',
              child: Image(
                image: AssetImage('images/foodTruck5.jpg'),
              ),
            ),
          ),
          onTap: () {
            Navigator.pop(context);
          }),
    );
  }
}

class Screen6 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
          child: Center(
            child: Hero(
              tag: 'foodTruck6',
              child: Image(
                image: AssetImage('images/foodTruck6.jpg'),
              ),
            ),
          ),
          onTap: () {
            Navigator.pop(context);
          }),
    );
  }
}

class Screen7 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
          child: Center(
            child: Hero(
              tag: 'foodTruck7',
              child: Image(
                image: AssetImage('images/foodTruck7.jpg'),
              ),
            ),
          ),
          onTap: () {
            Navigator.pop(context);
          }),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.blue.shade300)
    );

    onBottom(Widget child) => Positioned.fill(
      child: Align(
        widthFactor: 400,
        alignment: Alignment.bottomCenter,
        child: child,
      ),
    );

    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            //header (Start)
            ClipRRect(
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(20.0),
                  bottomLeft: Radius.circular(20.0)),
              child: Container(
                color: Colors.green.shade300,
                height: 200.0,
                child: Stack(
                  children: <Widget>[
                    Positioned.fill(child: AnimatedBackground()),
                    onBottom(AnimatedWave(
                      height: 180,
                      speed: 0.5,
                    )),
                    onBottom(AnimatedWave(
                      height: 120,
                      speed: 0.3,
                      offset: pi,
                    )),
                    Padding(
                      padding: const EdgeInsets.only(left: 30.0, top: 25.0),
                      child: Text(
                        'Expo UiTM Food Truck Event 2020',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Roboto Slab Black',
                          fontSize: 40.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            //header (End)
            //body (Start)
            Container(
              margin: EdgeInsets.all(25.0),
              child: Column(
                children: <Widget>[
                  Container(
                    child: Column(
                      children: <Widget>[
                        Text(
                          'About',
                          style: TextStyle(
                            fontFamily: 'Source Sans Pro',
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          'UiTM Jasin usually will held the KICTM that partly be organized by Faculty of Computer Science.'
                              ' Usually in KICTM Carnival will include event like food truck,'
                              'where this food truck will sell a various food and drinks to the students  '
                              'usually each year or semester, there will be 7-8 trucks that will '
                                'different type of food.',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: 'Source Sans Pro',
                            fontSize: 20.0,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30.0,
                    child: Divider(
                      color: Colors.teal.shade100,
                    ),
                  ),
                  Text(
                    'Upcoming Event',
                    style: TextStyle(
                      fontFamily: 'Source Sans Pro',
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10.0, left: 52.0),
                    child: ListView(
                      shrinkWrap: true,
                      children: <Widget>[
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Date',
                              style: TextStyle(
                                fontFamily: 'Source Sans Pro',
                                fontSize: 20.0,
                              ),
                            ),
                            Expanded(
                              child: Text(
                                '    : 25/8/2020 - 27/8/2020',
                                style: TextStyle(
                                  fontFamily: 'Source Sans Pro',
                                  fontSize: 20.0,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Time',
                              style: TextStyle(
                                fontFamily: 'Source Sans Pro',
                                fontSize: 20.0,
                              ),
                            ),
                            Expanded(
                              child: Text(
                                '   : 9.00 A.M - 5.00 P.M',
                                style: TextStyle(
                                  fontFamily: 'Source Sans Pro',
                                  fontSize: 20.0,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Venue',
                              style: TextStyle(
                                fontFamily: 'Source Sans Pro',
                                fontSize: 20.0,
                              ),
                            ),
                            Expanded(
                              child: Text(
                                ' : Dewan Makan Kolej',
                                style: TextStyle(
                                  fontFamily: 'Source Sans Pro',
                                  fontSize: 20.0,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30.0,
                    child: Divider(
                      color: Colors.teal.shade100,
                    ),
                  ),
                  Text(
                    'Past Events',
                    style: TextStyle(
                      fontFamily: 'Source Sans Pro',
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    'FOOD TRUCK UNDER KICTM EVENT: EKSPO KEUSAHAWANAN 2018',
                    style: TextStyle(
                      fontFamily: 'Source Sans Pro',
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Card(
                    child: Image(
                      image: AssetImage('images/foodTruck2018(KICTM).jpg'),
                    ),
                  ),
                  Container(
                    child: Row(
                      children: <Widget>[
                        Card(
                          child: GestureDetector(
                              child: Hero(
                                tag: 'foodTruck7',
                                child: Image(
                                  image: AssetImage('images/foodTruck7.jpg'),
                                  width: 50.0,
                                ),
                              ),
                              onTap: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (_) {
                                      return Screen7();
                                    }));
                              }),
                        ),
                        Card(
                          child: GestureDetector(
                              child: Hero(
                                tag: 'foodTruck6',
                                child: Image(
                                  image: AssetImage('images/foodTruck6.jpg'),
                                  width: 50.0,
                                ),
                              ),
                              onTap: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (_) {
                                      return Screen6();
                                    }));
                              }),
                        ),
                        Card(
                          child: GestureDetector(
                              child: Hero(
                                tag: 'foodTruck5',
                                child: Image(
                                  image: AssetImage('images/foodTruck5.jpg'),
                                  width: 50.0,
                                ),
                              ),
                              onTap: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (_) {
                                      return Screen5();
                                    }));
                              }),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    'FOOD TRUCK UNDER KICTM EVENT: EKSPO KEUSAHAWANAN 2019',
                    style: TextStyle(
                      fontFamily: 'Source Sans Pro',
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Card(
                    child: Image(
                      image: AssetImage('images/foodTruck2019(KITCM).jpg'),
                    ),
                  ),
                  Container(
                    child: Row(
                      children: <Widget>[
                        Card(
                          child: GestureDetector(
                              child: Hero(
                                tag: 'foodTruck1',
                                child: Image(
                                  image: AssetImage('images/foodTruck1.jpg'),
                                  width: 50.0,
                                ),
                              ),
                              onTap: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (_) {
                                      return Screen();
                                    }));
                              }),
                        ),
                        Card(
                          child: GestureDetector(
                              child: Hero(
                                tag: 'foodTruck2',
                                child: Image(
                                  image: AssetImage('images/foodTruck2.jpg'),
                                  width: 50.0,
                                ),
                              ),
                              onTap: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (_) {
                                      return Screen2();
                                    }));
                              }),
                        ),
                        Card(
                          child: GestureDetector(
                              child: Hero(
                                tag: 'foodTruck3',
                                child: Image(
                                  image: AssetImage('images/foodTruck3.jpg'),
                                  width: 50.0,
                                ),
                              ),
                              onTap: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (_) {
                                      return Screen3();
                                    }));
                              }),
                        ),
                        Card(
                          child: GestureDetector(
                              child: Hero(
                                tag: 'foodTruck4',
                                child: Image(
                                  image: AssetImage('images/foodTruck4.jpg'),
                                  width: 50.0,
                                ),
                              ),
                              onTap: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (_) {
                                      return Screen4();
                                    }));
                              }),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 50.0,
                    child: Divider(
                      color: Colors.teal.shade100,
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: 'Please click this ',
                            style: TextStyle(
                              fontFamily: 'Source Sans Pro',
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          TextSpan(
                              text: 'link ',
                              style: TextStyle(
                                fontFamily: 'Source Sans Pro',
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.blue,
                                decoration: TextDecoration.underline,
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  launch(
                                      'https://docs.google.com/forms/d/e/1FAIpQLSdiUZ6nGmFciPHlseAmi4Trdua2jWM2ISmpKuI48fmjJ-L95Q/viewform?usp=sf_link');
                                }),
                          TextSpan(
                            text: 'to join our exciting event.',
                            style: TextStyle(
                              fontFamily: 'Source Sans Pro',
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                ],
              ),
            ),
            //body (End)
            Footer(),
          ],
        ),
      ),
    );
  }
}