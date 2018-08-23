import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:furun/flutter_icons.dart';
import 'package:furun/widgets/base/BFlatButton.dart';
import 'package:latlong/latlong.dart';

class HomeScreen extends StatefulWidget {
    @override
    HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
    final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
    
    @override
    Widget build(BuildContext context){
        return DefaultTabController(
            length: 3,
            child: Scaffold(
                key: _scaffoldKey,
                appBar: AppBar(
                    leading: IconButton(
                        icon: Icon(FurunIcons.article),
                        onPressed: () => _scaffoldKey.currentState.openDrawer(),
                    ),
                    title: Text("Furun"),
                    actions: <Widget>[
                        IconButton(
                            icon: Icon(FurunIcons.basket_alt),
                            onPressed: (){},
                        )
                    ],
                ),
                drawer: Drawer(),
                bottomNavigationBar: BottomNavigationBar(
                    currentIndex: 1,
                    items: [
                        BottomNavigationBarItem(
                            title: Text("Map"),
                            icon: Icon(FurunIcons.location_1)
                        ),
                        BottomNavigationBarItem(
                            title: Text("Map"),
                            icon: Icon(FurunIcons.location_1)
                        ),
                        BottomNavigationBarItem(
                            title: Text("Map"),
                            icon: Icon(FurunIcons.location_1)
                        )
                    ],
                ),
                body: TabBarView(
                    children: <Widget>[
                        Stack(
                            children: <Widget>[
                                FlutterMap(
                                    options: MapOptions(
                                        center: LatLng(51.5, -0.09),
                                        zoom: 17.5
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
                                                child: Icon(FurunIcons.location_1, size: 50.0, color: Theme.of(context).primaryColor,),
                                            ),
                                            ),
                                        ],
                                        ),
                                    ]
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
                        Container(),
                        Container()
                    ],
                )
            ),
        );
    }
}