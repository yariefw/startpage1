import 'package:flutter/material.dart';
import 'uielement.dart';

String wallpaper =
    "https://static.zerochan.net/Tobisawa.Misaki.full.2496556.jpg";

class ButtonLinksMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              ButtonLink(
                text: "Facebook",
                url: "https://facebook.com/",
              ),
              ButtonLink(
                text: "Reddit",
                url: "https://reddit.com/",
              ),
              ButtonLink(
                text: "Youtube",
                url: "https://youtube.com/",
              ),
            ],
          ),
          Row(
            children: <Widget>[
              ButtonLink(
                text: "Kureha",
                url: "http://www.vn-meido.com/k1/",
              ),
              ButtonLink(
                text: "HorribleSubs",
                url: "https://horriblesubs.info/",
              ),
              ButtonLink(
                text: "Nyaa",
                url: "http://nyaa.si/",
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class BigIconsMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          children: <Widget>[
            Row(
              children: [
                BigIconLink(
                  icon: Icons.mail,
                  text: "Mail",
                  url: "https://mail.google.com/mail/u/0/",
                ),
                BigIconLink(
                  icon: Icons.chat,
                  text: "Chat",
                  url: "https://web.whatsapp.com/",
                ),
                BigIconLink(
                  icon: Icons.cloud,
                  text: "Storage",
                  url: "https://drive.google.com/drive/u/0/",
                ),
                BigIconLink(
                  icon: Icons.code,
                  text: "Docs",
                  url: "https://api.flutter.dev/",
                ),
              ],
            ),
            Row(
              children: <Widget>[
                BigIconLink(
                  icon: Icons.school,
                  text: "SIM",
                  url: "https://google.com/",
                ),
                BigIconLink(
                  icon: Icons.assessment,
                  text: "SIKAPE",
                  url: "http://google.com/",
                ),
                BigIconLink(
                  icon: Icons.assignment_ind,
                  text: "Class",
                  url: "https://classroom.google.com/u/0/",
                ),
                BigIconLink(
                  icon: Icons.subject,
                  text: "Notes",
                  url: "https://app.simplenote.com/",
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
