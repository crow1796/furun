import 'package:flutter/material.dart';
import 'package:furun/config/colors.dart';
import 'package:furun/widgets/base/BFlatButton.dart';

class LoginForm extends StatelessWidget {
    @override
    Widget build(BuildContext context){
        return Column(
            children: <Widget>[
                TextField(
                    decoration: InputDecoration(
                        icon: Icon(Icons.account_circle),
                        labelText: 'Username',
                    )
                ),
                TextField(
                    decoration: InputDecoration(
                        icon: Icon(Icons.lock),
                        labelText: 'Password',
                    ),
                    obscureText: true,
                ),
                SizedBox(height: 20.0),
                SizedBox(
                    width: double.infinity,
                    child: BFlatButton(
                        child: Text(
                            "LOGIN",
                            style: Theme.of(context).textTheme.display1,
                        ),
                        onPressed: (){
                            Navigator.pop(context);
                        },
                    ),
                ),
                SizedBox(
                    height: 20.0
                ),
                Text(
                    "OR",
                    style: Theme.of(context).textTheme.title,
                ),
                SizedBox(
                    height: 20.0
                ),
                SizedBox(
                    width: double.infinity,
                    child: ButtonColorWidget(
                        child: BFlatButton(
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                    Padding(
                                        padding: EdgeInsets.only(right: 25.0, left: 25.0),
                                        child: Image.asset("assets/images/fb-icon.png"),
                                    ),
                                    Text(
                                        "Connect with Facebook",
                                        style: Theme.of(context).textTheme.display1,
                                    ),
                                    SizedBox(width: 30.0)
                                ],
                            ),
                            onPressed: (){},
                        ),
                        color: fbBrandColor
                    ),
                ),
                SizedBox(
                    height: 10.0
                ),
                SizedBox(
                    width: double.infinity,
                    child: ButtonColorWidget(
                        child: BFlatButton(
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                    Padding(
                                        padding: EdgeInsets.only
                                        (right: 25.0, left: 25.0),
                                        child: Image.asset("assets/images/twitter-icon.png"),
                                    ),
                                    Text(
                                        "Connect with Twitter",
                                        style: Theme.of(context).textTheme.display1,
                                    ),
                                    SizedBox(width: 30.0)
                                ],
                            ),
                            onPressed: (){},
                        ),
                        color: twitterBrandColor
                    ),
                ),
                SizedBox(
                    height: 10.0
                ),
                SizedBox(
                    width: double.infinity,
                    child: ButtonColorWidget(
                        child: BFlatButton(
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                    Padding(
                                        padding: EdgeInsets.only
                                        (right: 25.0, left: 25.0),
                                        child: Image.asset("assets/images/google-icon.png"),
                                    ),
                                    Text(
                                        "Connect with Google",
                                        style: Theme.of(context).textTheme.display2,
                                    ),
                                    SizedBox(width: 30.0)
                                ],
                            ),
                            onPressed: (){},
                        ),
                        color: googleBrandColor
                    ),
                ),
            ],
        );
    }
}

class ButtonColorWidget extends StatelessWidget {
    final Color color;
    final Widget child;
    
    ButtonColorWidget({Key key, this.color, this.child});

    @override
    Widget build(BuildContext context){
        return Theme(
            child: child,
            data: Theme.of(context).copyWith(buttonColor: color),
        );
    }
}