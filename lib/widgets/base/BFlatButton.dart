import 'package:flutter/material.dart';

class BFlatButton extends RaisedButton {
    var child;
    var onPressed;
    
    BFlatButton({this.child, this.onPressed}): super(child: child, onPressed: onPressed, elevation: 0.0);
}