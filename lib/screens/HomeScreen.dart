import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:furun/widgets/base/BFlatButton.dart';
import 'package:latlong/latlong.dart';

class HomeScreen extends StatefulWidget {
    @override
    HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
    @override
    Widget build(BuildContext context){
        return Scaffold(
            body: Stack(
                children: <Widget>[
                    FlutterMap(
                        options: MapOptions(
                            center: LatLng(51.5, -0.09),
                            zoom: 13.0
                        ),
                        layers: [
                            new TileLayerOptions(
                            urlTemplate: "https://api.tiles.mapbox.com/v4/"
                                "{id}/{z}/{x}/{y}@2x.png?access_token=pk.eyJ1IjoiY3JvdzE3OTYiLCJhIjoiY2prcW1vams0MWZ4ajN1dGRvYzFpbTEyMiJ9.mz2oEkcciISToIIR54q-aA",
                            additionalOptions: {
                                'accessToken': 'pk.eyJ1IjoiY3JvdzE3OTYiLCJhIjoiY2pqcXN1ZjFwMnl1cDNxbWRtZXI4Z2M1cSJ9.X4boJENMbxxk0oFuIw4T4A',
                                'id': 'mapbox.streets',
                            },
                            ),
                            new MarkerLayerOptions(
                            markers: [
                                new Marker(
                                width: 80.0,
                                height: 80.0,
                                point: new LatLng(51.5, -0.09),
                                builder: (ctx) =>
                                new Container(
                                    child: new FlutterLogo(),
                                ),
                                ),
                            ],
                            ),
                        ]
                    ),
                    Positioned(
                        left: 10.0,
                        top: 10.0,
                        child: FloatingActionButton(
                            child: Icon(Icons.menu, color: Colors.white),
                            onPressed: (){},
                            elevation: 0.0,
                        ),
                    ),
                    Positioned(
                        top: 80.0,
                        left: 20.0,
                        height: 120.0,
                        width: (MediaQuery.of(context).size.width - 40),
                        child: Container(
                            child: ListView(
                                padding: EdgeInsets.all(0.0),
                                children: <Widget>[
                                    ListTile(
                                        leading: Icon(Icons.location_on, color: Theme.of(context).primaryColor),
                                        title: Text("Pin location", style: TextStyle(color: Theme.of(context).primaryColor))
                                    ),
                                    Divider(height: 10.0),
                                    ListTile(
                                        leading: Icon(Icons.store),
                                        title: Text("Test")
                                    ),
                                ]
                            ),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(5.0)),
                                color: Colors.white
                            )
                        )
                    ),
                    Positioned(
                        bottom: 20.0,
                        left: 20.0,
                        child: Container(
                            width: (MediaQuery.of(context).size.width - 40),
                            child: BFlatButton(
                                child: Text(
                                    "Go to Menu",
                                    style: Theme.of(context).textTheme.display1,
                                ),
                                onPressed: (){},
                            ),
                        )
                    )
                ],
            ),
        );
    }
}