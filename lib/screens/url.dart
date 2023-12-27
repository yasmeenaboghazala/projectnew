import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class url extends StatelessWidget {
  const url({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ElevatedButton(
          onPressed: () {
            _launchURL(
                'https://www.linkedin.com/in/yasmeen-abo-ghazala-322a0a226/');
          },
          child: Text("Url")),
    );
  }
}

_launchURL(String url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    _launchURL('https://www.google.com/');
  }
}
