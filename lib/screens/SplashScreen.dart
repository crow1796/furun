import 'package:flutter/material.dart';
import 'dart:async';

class SplashScreen extends StatefulWidget {
    @override
    State<StatefulWidget> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>{
    @override
    void initState(){
        super.initState();
        Timer(Duration(seconds: 3), () => Navigator.of(context).popAndPushNamed("/login"));
    }
    
    @override
    Widget build(BuildContext context){
        return Scaffold(
            backgroundColor: Theme.of(context).primaryColor,
            body: SafeArea(
                child: SizedBox.expand(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                            Image.asset("assets/images/splash-logo.png", scale: 1.4,),
                        ],
                    ),
                )
            ),
        );
    }
}