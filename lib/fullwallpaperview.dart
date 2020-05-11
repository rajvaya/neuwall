import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:neuwall/dashboard.dart';

class WallpaperView extends StatefulWidget {
  final WallpaperData data;
  final String tag;
  const WallpaperView({Key key, this.data, this.tag}) : super(key: key);
  @override
  _WallpaperViewState createState() => _WallpaperViewState();
}

class _WallpaperViewState extends State<WallpaperView> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        Positioned(
          child: Container(
            width: width,
            height: height * 0.82,
            child: Hero(
              tag: widget.tag,
              child: Image.network(
                widget.data.wallUrl,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Positioned(
          top: MediaQuery.of(context).padding.top + 24,
          left: 24,
          width: width * 0.12,
          height: width * 0.12,
          child: Container(
            decoration: new BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                gradient: new LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: [0.0, 1.0],
                  colors: [
                    Color(0xffE6E7ED),
                    Color(0xffF7F8FA),
                  ],
                )),
            child: NeumorphicButton(
              padding: EdgeInsets.all(0),
              child: Icon(
                Icons.arrow_back,
                size: width * 0.08,
              ),
              onClick: () => Navigator.of(context).pop(),
              boxShape: NeumorphicBoxShape.circle(),
              style: NeumorphicStyle(
                  depth: 4,
                  intensity: 0.4,
                  shape: NeumorphicShape.flat,
                  color: Colors.transparent,
                  shadowDarkColor: Color(0xFF415FFF).withOpacity(1),
                  shadowLightColor: Colors.white),
            ),
          ),
        ),
        Positioned(
          bottom: 0.0,
          child: Container(
            decoration: new BoxDecoration(
                gradient: new LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: [0.0, 1.0],
              colors: [
                Color(0xffF8F9FF),
                Color(0xffE5E6F1),
              ],
            )),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      width: 32,
                    ),
                    Transform.scale(
                      child: Neumorphic(
                        padding: EdgeInsets.all(0),
                        margin: EdgeInsets.all(0),
                        boxShape: NeumorphicBoxShape.circle(),
                        style: NeumorphicStyle(
                            color: Color(0xFFEBEEFF),
                            depth: 2,
                            shape: NeumorphicShape.flat),
                        child: CircleAvatar(
                          backgroundColor: Color(0xFFEBEEFF),
                          child: Neumorphic(
                            margin: EdgeInsets.all(0),
                            padding: EdgeInsets.all(0),
                            style: NeumorphicStyle(
                                color: Color(0xFFEBEEFF),
                                depth: 0,
                                shape: NeumorphicShape.flat),
                            boxShape: NeumorphicBoxShape.circle(),
                            child: Hero(
                              tag: "a" + widget.tag,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(100),
                                child: Image.network(
                                  widget.data.artistUrl,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      scale: 1.2,
                    ),
                    SizedBox(
                      width: 24,
                    ),
                    Center(
                      child: Material(
                        color: Colors.transparent,
                        child: Text(
                          widget.data.artistName,
                          style: TextStyle(
                            fontSize: width * 0.04,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF46547B),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      width: 24,
                    ),
                    Container(
                      decoration: new BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          gradient: new LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            stops: [0.0, 1.0],
                            colors: [
                              Color(0xffE6E7ED),
                              Color(0xffF7F8FA),
                            ],
                          )),
                      width: width * 0.14,
                      height: width * 0.14,
                      child: NeumorphicButton(
                        padding: EdgeInsets.all(0),
                        child: Icon(
                          Icons.favorite,
                          color: Color(0xFF415FFF),
                          size: width * 0.08,
                        ),
                        onClick: () => print("LOL"),
                        boxShape: NeumorphicBoxShape.circle(),
                        style: NeumorphicStyle(
                          depth: 5,
                          color: Colors.transparent,
                          shape: NeumorphicShape.flat,
                          shadowDarkColor: Color(0xFF415FFF).withOpacity(0.8),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 24,
                    ),
                    Container(
                      decoration: new BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          gradient: new LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            stops: [0.0, 1.0],
                            colors: [
                              Color(0xffE6E7ED),
                              Color(0xffF7F8FA),
                            ],
                          )),
                      width: width * 0.14,
                      height: width * 0.14,
                      child: NeumorphicButton(
                        padding: EdgeInsets.all(0),
                        child: Icon(
                          Icons.arrow_downward,
                          size: width * 0.10,
                          color: Color(0xFF415FFF),
                        ),
                        onClick: () => print("LOL"),
                        boxShape: NeumorphicBoxShape.circle(),
                        style: NeumorphicStyle(
                          depth: 5,
                          shadowDarkColor: Color(0xFF415FFF).withOpacity(0.8),
                          color: Colors.transparent,
                          shape: NeumorphicShape.flat,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    SizedBox(
                      width: width * 0.5,
                      height: width * 0.12,
                      child: NeumorphicButton(
                        padding: EdgeInsets.all(0),
                        child: Center(
                          child: Text(
                            'Apply Wallpaper',
                            style: TextStyle(
                                fontSize: width * 0.04, color: Colors.white),
                          ),
                        ),
                        onClick: () => print("LOL"),
                        boxShape: NeumorphicBoxShape.roundRect(
                            BorderRadius.circular(10)),
                        style: NeumorphicStyle(
                          depth: 5,
                          color: Color(0xFF415FFF),
                          shadowDarkColor: Color(0xFF415FFF).withOpacity(1),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
            width: width,
            height: height * 0.18,
          ),
        )
      ],
    );
  }
}
