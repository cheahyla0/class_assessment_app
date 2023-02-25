import 'package:flutter/material.dart';

class AboutUs extends StatefulWidget {
  const AboutUs({super.key});

  @override
  State<AboutUs> createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 40, left: 40),
          child: Row(
            children: const <Widget>[
              Text(
                "About Us",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(children: <Widget>[
              Container(
                width: 120,
                height: 150,
                child: const Image(
                  image: NetworkImage(
                    "https://images.unsplash.com/photo-1511367461989-f85a21fda167?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cHJvZmlsZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=900&q=60",
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              Column(children: const <Widget>[
                Text(
                  "This is a description of the person.",
                  style: TextStyle(
                    color: Colors.white, 
                    fontSize: 20,
                  ),
                ),
                Text(
                  "This is a description of the person.",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ])
            ]),
          ],
        ),
      ],
    );
  }
}
