import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:neuwall/fullwallpaperview.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  List<WallpaperData> popularData = [
    WallpaperData(
        wallUrl:
            "https://images.unsplash.com/photo-1575830626988-26074c6f8c85?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
        artistUrl:
            "https://images.unsplash.com/profile-1587107729110-463438ac695eimage?dpr=1&auto=format&fit=crop&w=32&h=32&q=60&crop=faces&bg=fff",
        artistName: "Peyman aaaFarmani"),
    WallpaperData(
        wallUrl:
            "https://images.unsplash.com/photo-1541447237128-f4cac6138fbe?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=318&q=80",
        artistUrl:
            "https://images.unsplash.com/profile-fb-1492858524-ea03e636311d.jpg?dpr=1&auto=format&fit=crop&w=32&h=32&q=60&crop=faces&bg=fff",
        artistName: "willian justen"),
    WallpaperData(
        wallUrl:
            "https://images.unsplash.com/photo-1576405515541-cb47b7da4fa7?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=334&q= 80",
        artistUrl:
            "https://images.unsplash.com/profile-1574972452774-d244fd66514cimage?dpr=1&auto=format&fit=crop&w=32&h=32&q=60&crop=faces&bg=fff ",
        artistName: "Massimiliano Morosinotto"),
    WallpaperData(
        wallUrl:
            "https://images.unsplash.com/photo-1565176083871-abc1508bd064?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=375&q=80",
        artistUrl:
            "https://images.unsplash.com/profile-1561817656715-f27480c9bafa?dpr=1&auto=format&fit=crop&w=32&h=32&q=60&crop=faces&bg=fff",
        artistName: "Darshan Gajara"),
    WallpaperData(
        wallUrl:
            "https://images.unsplash.com/photo-1518891130017-d5a42dc99521?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=334&q=80",
        artistUrl:
            "https://images.unsplash.com/profile-1572299392726-a7e48483eea4image?dpr=1&auto=format&fit=crop&w=32&h=32&q=60&crop=faces&bg=fff",
        artistName: "Fabrizio Conti"),
  ];

  List<WallpaperData> newData = [
    WallpaperData(
        wallUrl:
            "https://images.unsplash.com/photo-1586972161369-9661ee10aae9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=375&q=80",
        artistUrl:
            "https://images.unsplash.com/profile-1564588312690-56e9bb3a6dd3?dpr=1&auto=format&fit=crop&w=32&h=32&q=60&crop=faces&bg=fff",
        artistName: "Prateek Katyal"),
    WallpaperData(
        wallUrl:
            "https://images.unsplash.com/photo-1546299428-1d800272dc97?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=334&q=80",
        artistUrl:
            "https://images.unsplash.com/profile-1507501774788-63c27e271a2a?dpr=1&auto=format&fit=crop&w=32&h=32&q=60&crop=faces&bg=fff",
        artistName: "Joakim Honkasalo"),
    WallpaperData(
        wallUrl:
            "https://images.unsplash.com/photo-1587390307730-1bd1b1925f02?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=282&q=80",
        artistUrl:
            "https://images.unsplash.com/profile-1560475939350-899ff5be2363?dpr=1&auto=format&fit=crop&w=32&h=32&q=60&crop=faces&bg=fff",
        artistName: "Chirag Saini"),
    WallpaperData(
        wallUrl:
            "https://images.unsplash.com/photo-1537541366012-ea7c3c38321e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=334&q=80",
        artistUrl:
            "https://images.unsplash.com/profile-1532966191428-b37169ee64c3?dpr=1&auto=format&fit=crop&w=32&h=32&q=60&crop=faces&bg=fff",
        artistName: "lf.Franciz !!!"),
    WallpaperData(
        wallUrl:
            "https://images.unsplash.com/photo-1539818892248-fb65dfa701fd?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=346&q=80",
        artistUrl:
            "https://images.unsplash.com/profile-1563590033524-dd85cbdc94ac?dpr=1&auto=format&fit=crop&w=32&h=32&q=60&crop=faces&bg=fff",
        artistName: "x o p i t o"),
  ];

  List<String> categories = [
    "Food & Drinks",
    "Travel ",
    "Art",
    "Abstract",
    "Minimal",
    "Neumorphic",
    "Technology",
    "Animals",
    "Nature",
  ];

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xFFEBEEFF),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
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
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: SizedBox(
                child: Text(
                  "Hi Raj!",
                  style: TextStyle(
                    color: Color(0xff46567A),
                    fontWeight: FontWeight.w600,
                    fontSize: 28,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: SizedBox(
                child: Text(
                  "Best Wallpapers for you.",
                  style: TextStyle(
                    color: Color(0xff415FFF),
                    fontWeight: FontWeight.w600,
                    fontSize: 24,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: height * 0.03,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Neumorphic(
                boxShape:
                    NeumorphicBoxShape.roundRect(BorderRadius.circular(16)),
                style: NeumorphicStyle(
                  color: Color(0xFFEBEEFF),
                  depth: -3,
                  shadowLightColorEmboss: Colors.white,
                  shadowDarkColorEmboss: Color(0xFF415FFF).withOpacity(0.8),
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
                        onPressed: () {},
                        icon: Icon(Icons.search,
                            size: 30, color: Color(0xff415FFF)),
                      ),
                      hintText: "Search for wallpapers",
                      hintStyle: TextStyle(
                          color: Color(0xff46567A),
                          fontSize: 18,
                          fontWeight: FontWeight.w500)),
                ),
              ),
            ),
            SizedBox(
              height: height * 0.03,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: SizedBox(
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
            ),
            SizedBox(
              height: height * 0.01,
            ),
            SizedBox(
              height: height * 0.3,
              child: Center(
                child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: popularData.length,
                  itemBuilder: (BuildContext context, int index) {
                    return NeumorphicButton(
                      padding: EdgeInsets.all(0),
                      onClick: () {
                        print(index);
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => WallpaperView(
                                data: popularData[index],
                                tag: "hero1" + index.toString(),
                              ),
                            ));
                      },
                      margin: (index != 0)
                          ? EdgeInsets.only(
                              left: 8,
                              right: (index == popularData.length - 1) ? 20 : 8,
                              top: 8,
                              bottom: 8)
                          : EdgeInsets.only(
                              left: 20, right: 8, top: 8, bottom: 8),
                      boxShape: NeumorphicBoxShape.roundRect(
                          BorderRadius.circular(16)),
                      style: NeumorphicStyle(
                          color: Color(0xFFEBEEFF),
                          depth: 3,
                          shadowLightColor: Color(0xFFFFFFFF),
                          shadowDarkColor: Color(0xFF415FFF).withOpacity(0.6),
                          intensity: 5,
                          lightSource: LightSource.topLeft,
                          shape: NeumorphicShape.flat),
                      child: Container(
                        color: Color(0xFFEBEEFF),
                        width: width * 0.5,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                color: Color(0xFFEBEEFF),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8.0),
                                  child: Hero(
                                    tag: "hero1" + index.toString(),
                                    child: Image.network(
                                      popularData[index].wallUrl,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                              height: height * 0.3 * 0.7,
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 8),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Neumorphic(
                                    padding: EdgeInsets.all(0),
                                    boxShape: NeumorphicBoxShape.circle(),
                                    style: NeumorphicStyle(
                                        color: Color(0xFFE4E6F5),
                                        depth: 2,
                                        shape: NeumorphicShape.flat),
                                    child: CircleAvatar(
                                      backgroundColor: Color(0xFFE4E6F5),
                                      child: Neumorphic(
                                        padding: EdgeInsets.all(0),
                                        style: NeumorphicStyle(
                                            color: Color(0xFFEBEEFF),
                                            depth: 0,
                                            shape: NeumorphicShape.flat),
                                        boxShape: NeumorphicBoxShape.circle(),
                                        child: Hero(
                                          tag: "a" + "hero1" + index.toString(),
                                          child: Image.network(
                                            popularData[index].artistUrl,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: width * 0.5 * 0.05,
                                  ),
                                  Flexible(
                                    child: Text(
                                      popularData[index].artistName,
                                      style: TextStyle(
                                        color: Color(0xff46567A),
                                        fontWeight: FontWeight.w600,
                                        fontSize: 18,
                                        fontStyle: FontStyle.italic,
                                      ),
                                      overflow: TextOverflow.ellipsis,
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
            SizedBox(
              height: height * 0.03,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: SizedBox(
                child: Text(
                  "Categories",
                  style: TextStyle(
                    color: Color(0xff46567A),
                    fontWeight: FontWeight.w600,
                    fontSize: 24,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            SizedBox(
              height: height * 0.06,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                physics: BouncingScrollPhysics(),
                itemCount: categories.length,
                itemBuilder: (BuildContext context, int index) {
                  return NeumorphicButton(
                      padding: EdgeInsets.all(0),
                      onClick: () {
                        print(categories[index]);
                      },
                      style: NeumorphicStyle(
                          //  color: Color(0xFFECECF6),
                          color: Color(0xFFEBEEFF),
                          depth: 2,
                          shadowDarkColor: Color(0xFF415FFF).withOpacity(0.6),
                          intensity: 5,
                          shape: NeumorphicShape.flat),
                      margin: (index != 0)
                          ? EdgeInsets.only(
                              left: 8,
                              right: (index == categories.length - 1) ? 20 : 8,
                              top: 8,
                              bottom: 8)
                          : EdgeInsets.only(
                              left: 20, right: 8, top: 8, bottom: 8),
                      boxShape: NeumorphicBoxShape.roundRect(
                          BorderRadius.circular(8)),
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 6),
                        child: Center(
                          child: Text(
                            categories[index],
                            style: TextStyle(
                                color: Color(0xFF415FFF),
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ));
                },
              ),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: SizedBox(
                child: Text(
                  "New",
                  style: TextStyle(
                    color: Color(0xff46567A),
                    fontWeight: FontWeight.w600,
                    fontSize: 24,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: height * 0.01,
            ),
            SizedBox(
              height: height * 0.3,
              child: Center(
                child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: newData.length,
                  itemBuilder: (BuildContext context, int index) {
                    return NeumorphicButton(
                      padding: EdgeInsets.all(0),
                      onClick: () {
                        print(index);
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => WallpaperView(
                                data: newData[index],
                                tag: "hero2" + index.toString(),
                              ),
                            ));
                      },
                      margin: (index != 0)
                          ? EdgeInsets.only(
                              left: 8,
                              right: (index == newData.length - 1) ? 20 : 8,
                              top: 8,
                              bottom: 8)
                          : EdgeInsets.only(
                              left: 20, right: 8, top: 8, bottom: 8),
                      boxShape: NeumorphicBoxShape.roundRect(
                          BorderRadius.circular(16)),
                      style: NeumorphicStyle(
                          color: Color(0xFFEBEEFF),
                          depth: 3,
                          shadowLightColor: Color(0xFFFFFFFF),
                          //shadowDarkColor: Color(0xff46567A),
                          shadowDarkColor: Color(0xFF415FFF).withOpacity(0.6),
                          intensity: 5,
                          lightSource: LightSource.topLeft,
                          shape: NeumorphicShape.flat),
                      child: Container(
                        color: Color(0xFFEBEEFF),
                        width: width * 0.5,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                color: Color(0xFFEBEEFF),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8.0),
                                  child: Hero(
                                    tag: "hero2" + index.toString(),
                                    child: Image.network(
                                      newData[index].wallUrl,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                              height: height * 0.3 * 0.7,
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 8),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Neumorphic(
                                    padding: EdgeInsets.all(0),
                                    boxShape: NeumorphicBoxShape.circle(),
                                    style: NeumorphicStyle(
                                        color: Color(0xFFE4E6F5),
                                        depth: 2,
                                        shape: NeumorphicShape.flat),
                                    child: CircleAvatar(
                                      backgroundColor: Color(0xFFE4E6F5),
                                      child: Neumorphic(
                                        padding: EdgeInsets.all(0),
                                        style: NeumorphicStyle(
                                            color: Color(0xFFEBEEFF),
                                            depth: 0,
                                            shape: NeumorphicShape.flat),
                                        boxShape: NeumorphicBoxShape.circle(),
                                        child: Hero(
                                          tag: "a" + "hero2" + index.toString(),
                                          child: Image.network(
                                            newData[index].artistUrl,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: width * 0.5 * 0.05,
                                  ),
                                  Flexible(
                                    child: Text(
                                      newData[index].artistName,
                                      style: TextStyle(
                                        color: Color(0xff46567A),
                                        fontWeight: FontWeight.w600,
                                        fontSize: 18,
                                        fontStyle: FontStyle.italic,
                                      ),
                                      overflow: TextOverflow.ellipsis,
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
            SizedBox(
              height: height * 0.03,
            )
          ],
        ),
      ),
    );
  }
}

class WallpaperData {
  String wallUrl;
  String artistUrl;
  String artistName;

  WallpaperData({
    @required this.wallUrl,
    @required this.artistUrl,
    @required this.artistName,
  });
}
