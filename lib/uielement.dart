import 'package:flutter/material.dart';
import 'package:universal_html/js.dart' as js;

class BigIconLink extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color bgcolor;
  final String url;

  BigIconLink({
    this.icon,
    this.text,
    this.bgcolor = Colors.blueGrey,
    this.url,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        js.context.callMethod("open", [url, "_self"]);
      },
      child: Container(
          padding:
              EdgeInsets.all(MediaQuery.of(context).size.width / 128), // 10
          child: SizedBox(
            height: MediaQuery.of(context).size.width / 20, // 64
            width: MediaQuery.of(context).size.width / 20,
            child: Container(
              padding:
                  EdgeInsets.all(MediaQuery.of(context).size.width / 128), // 10
              decoration: BoxDecoration(
                  color: bgcolor,
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                  boxShadow: kElevationToShadow[8]),
              child: Column(
                children: <Widget>[
                  Icon(
                    icon,
                    color: Colors.white,
                    size: MediaQuery.of(context).size.width / 40, // 32
                  ),
                  Stack(
                    children: [
                      Text(
                        text,
                        style: TextStyle(
                          fontSize: MediaQuery.of(context).size.width /
                              106.666667, // 12
                          foreground: Paint()
                            ..style = PaintingStyle.stroke
                            ..strokeWidth = MediaQuery.of(context).size.width /
                                213.333333 // 6
                            ..color = Colors.white,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                      padding: EdgeInsets.only(
                          bottom:
                              MediaQuery.of(context).size.height / 69.6)), // 10
                ],
              ),
            ),
          )),
    );
  }
}

class ButtonLink extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color bgcolor;
  final String url;

  ButtonLink({
    this.icon,
    this.text,
    this.bgcolor = Colors.blueGrey,
    this.url,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        js.context.callMethod("open", [url, "_self"]);
      },
      child: Container(
        padding: EdgeInsets.all(MediaQuery.of(context).size.width / 128), // 10
        child: SizedBox(
          height: MediaQuery.of(context).size.width / 40, //32
          width: MediaQuery.of(context).size.width / 13.9130435, // 92
          child: Container(
            padding:
                EdgeInsets.all(MediaQuery.of(context).size.width / 128), // 10
            decoration: BoxDecoration(
                color: bgcolor,
                borderRadius: BorderRadius.all(Radius.circular(8)),
                boxShadow: kElevationToShadow[8]),
            child: Center(
              child: Text(
                text,
                style: TextStyle(
                  fontSize:
                      MediaQuery.of(context).size.width / 106.666667, // 12
                  foreground: Paint()
                    ..style = PaintingStyle.stroke
                    ..strokeWidth =
                        MediaQuery.of(context).size.width / 213.333333 // 6
                    ..color = Colors.white,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
