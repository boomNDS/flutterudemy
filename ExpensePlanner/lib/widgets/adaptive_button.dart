import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class AdaptiveFlatBunton extends StatelessWidget {
  final String text;
  final Function hander;

  AdaptiveFlatBunton(this.text,this.hander);

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
        ? CupertinoButton(
            onPressed: hander,
            child: Text(
              text,
              style: TextStyle(fontWeight: FontWeight.bold),
            ))
        : FlatButton(
            textColor: Theme.of(context).primaryColor,
            onPressed: hander,
            child: Text(
              text,
              style: TextStyle(fontWeight: FontWeight.bold),
            ));
  }
}
