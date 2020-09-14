import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'dart:async';
import 'config.dart';

class Homepage extends StatefulWidget {
  @override
  HomepageState createState() => HomepageState();
}

class HomepageState extends State<Homepage> {
  double seconds;
  _currentTime() {
    return "${DateFormat.jm().format(DateTime.now())}";
  }

  _triggerUpdate() {
    Timer.periodic(
        Duration(seconds: 1),
        (Timer timer) => setState(
              () {
                seconds = DateTime.now().second / 60;
              },
            ));
  }

  @override
  void initState() {
    super.initState();
    seconds = DateTime.now().second / 60;
    _triggerUpdate();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: LayoutBuilder(
      builder: (context, constraints) {
        return Stack(
          children: <Widget>[
            Container(
              height: constraints.maxHeight, //696
              width: constraints.maxWidth, //1280
              child: FittedBox(
                fit: BoxFit.cover,
                child: Image.network(
                  wallpaper,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: constraints.maxHeight / 8.7), // 80,
              width: constraints.maxWidth / 3.80952381, // 336
              child: Column(
                children: <Widget>[
                  Center(
                    child: Align(
                      alignment: Alignment.center,
                      child: Container(
                        margin: EdgeInsets.only(
                            top: constraints.maxHeight / 19.3333333,
                            bottom: constraints.maxHeight / 19.3333333), // 36
                        height: constraints.maxHeight / 6.96, // 100
                        child: Column(
                          children: <Widget>[
                            Text(
                              _currentTime(),
                              style: GoogleFonts.bungee(
                                  fontSize:
                                      constraints.maxWidth / 21.3333333, // 60
                                  textStyle: TextStyle(color: Colors.blueGrey),
                                  fontWeight: FontWeight.normal),
                            ),
                            Text(
                              "Indonesia",
                              style: GoogleFonts.bungee(
                                  fontSize:
                                      constraints.maxWidth / 106.666667, // 12
                                  textStyle: TextStyle(color: Colors.blueGrey),
                                  fontWeight: FontWeight.normal),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(bottom: constraints.maxHeight / 23.2),
                  ), // 30
                  Center(
                    child: Align(
                      alignment: Alignment.center,
                      child: BigIconsMenu(),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.only(
                          top:
                              MediaQuery.of(context).size.height / 23.2)), // 30
                  Center(
                    child: Align(
                      alignment: Alignment.center,
                      child: ButtonLinksMenu(),
                    ),
                  ),
                ],
              ),
            ),
          ],
        );
      },
    ));
  }
}
