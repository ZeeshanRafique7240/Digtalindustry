import 'package:flutter/material.dart';

class sparatepage extends StatefulWidget {
  String? asset, index;
  sparatepage({Key? key, @required this.asset, @required this.index})
      : super(key: key);

  @override
  _sparatepageState createState() => _sparatepageState();
}

class _sparatepageState extends State<sparatepage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            child: Image.asset(
              widget.asset.toString(),
              fit: BoxFit.fill,
            ),
          ),
          Text(
            widget.index.toString(),
          ),
        ],
      ),
    );
  }
}
