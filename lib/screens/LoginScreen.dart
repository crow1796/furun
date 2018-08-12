import 'package:flutter/material.dart';
import 'package:furun/widgets/LoginForm.dart';
import 'package:flutter/services.dart';
import 'package:simple_permissions/simple_permissions.dart';

class LoginScreen extends StatefulWidget {
    @override
    State<StatefulWidget> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen>{

    @override
    void initState(){
        this.checkRequiredPermissions();
        super.initState();
    }

    checkRequiredPermissions() async {
        List<Permission> requiredPermissions = [
            Permission.AccessFineLocation,
        ];

        requiredPermissions.map((permission) async {
            bool res = await SimplePermissions.checkPermission(permission);
            if(!res) res = await SimplePermissions.requestPermission(permission);
        }).toList();
    }
    
    @override
    Widget build(BuildContext context){
        return Scaffold(
                body: SafeArea(
                    child: ListView(
                        children: <Widget>[
                            SizedBox(height: 50.0),
                            Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                    Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.end,
                                        children: <Widget>[
                                            Padding(
                                                padding: EdgeInsets.only(bottom: 18.0),
                                                child: Text(
                                                    "Welcome to",
                                                    style: Theme.of(context).textTheme.headline
                                                )
                                            ),
                                            Image.asset(
                                                "assets/images/logo.png",
                                                scale: 1.5,
                                            )
                                        ],
                                    ),
                                    SizedBox(height: 10.0),
                                    Text(
                                        "Please, sign in or create an account",
                                        style: Theme.of(context).textTheme.title,
                                    ),
                                    Padding(
                                        padding: EdgeInsets.fromLTRB(50.0, 50.0, 50.0, 25.0),
                                        child: Column(
                                            children: <Widget>[
                                                Row(
                                                    mainAxisAlignment: MainAxisAlignment.end,
                                                    children: <Widget>[
                                                        InkWell(
                                                            child: Text(
                                                                "Don't have an account yet?",
                                                                style: TextStyle(
                                                                    color: Colors.blue
                                                                ),
                                                            )
                                                        )
                                                    ],
                                                ),
                                                LoginForm()
                                            ],
                                        ),
                                    )
                                ],
                            )
                        ],
                    )
                ),
            );
    }
}