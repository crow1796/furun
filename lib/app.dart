import 'package:flutter/material.dart';
import 'package:furun/screens/HomeScreen.dart';
import 'package:furun/screens/LoginScreen.dart';
import 'package:furun/config/colors.dart';
import 'package:furun/config/fonts.dart';
import 'package:flutter/services.dart';
import 'package:furun/screens/SplashScreen.dart';

class FurunApp extends StatelessWidget{
    @override
    Widget build(BuildContext context){
        SystemChrome.setEnabledSystemUIOverlays([]);
        return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: _buildThemeFrom(ThemeData.light()),
            home: HomeScreen(),
            initialRoute: "/splash",
            routes: {
                "/splash": (context) => SplashScreen(),
                "/login": (context) => LoginScreen(),
            }
        );
    }

    ThemeData _buildThemeFrom(ThemeData base){
        return base.copyWith(
            accentColor: furunPrimaryColorPink,
            primaryColor: furunPrimaryColorPink,
            buttonColor: furunPrimaryColorPink,
            scaffoldBackgroundColor: furunScaffoldBackgroundColorWhite,
            iconTheme: base.iconTheme.copyWith(
                color: furunIconColor
            ),
            primaryTextTheme: base.primaryTextTheme.copyWith(
                title: base.primaryTextTheme.title.copyWith(
                    color: furunPrimaryColorWhite
                ).apply(
                    fontFamily: furunPrimaryFont
                )
            ),
            inputDecorationTheme: InputDecorationTheme(
                border: InputBorder.none,
                filled: false
            ),
            buttonTheme: base.buttonTheme.copyWith(
                padding: EdgeInsets.symmetric(vertical: 15.0),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
            ),
            textTheme: base.textTheme.copyWith(
                headline: base.textTheme.headline.copyWith(
                    fontSize: 22.0,
                    color: furunPrimaryColorPink
                ),
                subhead: base.textTheme.subhead.copyWith(
                    color: furunPrimaryColorPink
                ),
                title: base.textTheme.title.copyWith(
                    fontSize: 17.5,
                    color: furunPrimaryColorPink
                ),
                display1: base.textTheme.display1.copyWith(
                    fontSize: 17.0,
                    color: furunPrimaryColorWhite
                ),
                display2: base.textTheme.display1.copyWith(
                    fontSize: 17.0,
                    color: furunBodyColor
                )
            ).apply(
                fontFamily: furunPrimaryFont
            )
        );
    }
}