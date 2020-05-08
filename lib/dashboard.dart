import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  List<String> img = [
    "https://images.unsplash.com/photo-1581665269479-57504728e479?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=401&q=80",
  ];

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xFFF2F2FA),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: MediaQuery.of(context).padding.top,
              ),
              SizedBox(
                height: height * 0.05,
              ),
              SizedBox(
                child: Text(
                  "Hi Raj!",
                  style: TextStyle(
                    color: Color(0xff46567A),
                    fontWeight: FontWeight.w600,
                    fontSize: 28,
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              SizedBox(
                child: Text(
                  "Best Wallpapers for you.",
                  style: TextStyle(
                    color: Color(0xff415FFF),
                    fontWeight: FontWeight.w600,
                    fontSize: 24,
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.03,
              ),
              Neumorphic(
                boxShape:
                    NeumorphicBoxShape.roundRect(BorderRadius.circular(16)),
                style: NeumorphicStyle(
                  color: Color(0xFFFEBEEFF),
                  depth: -2,
                ),
                padding: EdgeInsets.symmetric(vertical: 6, horizontal: 20),
                child: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      errorBorder: InputBorder.none,
                      disabledBorder: InputBorder.none,
                      suffixIcon: IconButton(
                        icon: Icon(Icons.search,
                            size: 30, color: Color(0xff46567A)),
                      ),
                      hintText: "Search for wallpapers",
                      hintStyle: TextStyle(
                          color: Color(0xff46567A),
                          fontSize: 18,
                          fontWeight: FontWeight.w500)),
                ),
              ),
              SizedBox(
                height: height * 0.03,
              ),
              SizedBox(
                child: Text(
                  "Popular",
                  style: TextStyle(
                    color: Color(0xff46567A),
                    fontWeight: FontWeight.w600,
                    fontSize: 24,
//                  shadows: [
//                    Shadow(
//                        color: Color(0xff46567A),
//                        offset: Offset(1.0, 1.0),
//                        blurRadius: 2)
//                  ],
                    // color: NeumorphicTheme.defaultTextColor(context),
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.3,
                child: Center(
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: 10,
                    itemBuilder: (BuildContext context, int index) {
                      return Neumorphic(
                        margin:
                            EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                        boxShape: NeumorphicBoxShape.roundRect(
                            BorderRadius.circular(16)),
                        style: NeumorphicStyle(
                            depth: 5,
                            shadowLightColor: Color(0xFFFFFFFF),
                            lightSource: LightSource.topLeft,
                            shape: NeumorphicShape.flat),
                        child: Container(
                          color: Color(0xFFEBEBF5),
                          width: width * 0.5,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            mainAxisAlignment: MainAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(16)),
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(8.0),
                                    child: Image.network(
                                      img[0],
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                height: height * 0.3 * 0.7,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Neumorphic(
                                      boxShape: NeumorphicBoxShape.roundRect(
                                          BorderRadius.circular(100)),
                                      child: CircleAvatar(
                                        radius: height * 0.032,
                                        backgroundColor: Color(0xFFF0F0F8),
                                        child: Padding(
                                          padding: const EdgeInsets.all(5.0),
                                          child: Neumorphic(
                                            style: NeumorphicStyle(
                                                color: Color(0xFFFEBEEFF),
                                                depth: 0,
                                                shape: NeumorphicShape.flat),
                                            boxShape:
                                                NeumorphicBoxShape.roundRect(
                                                    BorderRadius.circular(100)),
//                                    child: Container(
//                                      color: Colors.yellow,
//
                                            child: Image.network(
                                              "https://assets.website-files.com/5e51c674258ffe10d286d30a/5e5357079588e00bb27e9058_peep-46.png",
                                              fit: BoxFit.fitWidth,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: width * 0.5 * 0.05,
                                    ),
                                    Text(
                                      "Rajvaya!",
                                      style: TextStyle(
                                        color: Color(0xff46567A),
                                        fontWeight: FontWeight.w600,
                                        fontSize: 20,
                                        fontStyle: FontStyle.italic,
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
