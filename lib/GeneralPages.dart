import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

class GeneralPages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: GeneralPagesCatalog(title: 'Flutter Demo Home Page'),
    );
  }
}

class GeneralPagesCatalog extends StatefulWidget {
  GeneralPagesCatalog({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _GeneralPagesCatalogState createState() => _GeneralPagesCatalogState();
}

class _GeneralPagesCatalogState extends State<GeneralPagesCatalog> {
  final pages = [
    Container(
      color: Color(0xFFF5D6EB),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Center(
            child: Image.asset(
              "assets/images/vine.png",
              width: 250.0,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Вина к вашему столу",
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Color(0xFF0A0A0A),
                  ),
                ),
                Text(
                  "Красное и Белое",
                  style: TextStyle(
                      fontSize: 30.0,
                      color: Color(0xFF888C76),
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 20.0),
                Divider(color: Color(0xFF0C0C0C)),
                Text(
                  "Элитные вина из Японии и Европы,\n"
                  "Побалуйте себя в удовольствие\n"
                  "Гарантия отличного вкуса.",
                  style: TextStyle(
                      color: Color(0xFF272B35),
                      fontWeight: FontWeight.w300,
                      fontSize: 16.0),
                )
              ],
            ),
          )
        ],
      ),
    ),
    Container(
      color: Color(0xFF5F5733),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Center(
            child: Image.asset(
              "assets/images/whiskey.png",
              width: 350,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "К стейку и рыбе",
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Color(0xFFC1C1C2),
                  ),
                ),
                Text(
                  "Виски",
                  style: TextStyle(
                      fontSize: 35.0,
                      color: Color(0xFFCC8E57),
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 20.0),
                Divider(color: Color(0xFFD2F3F4)),
                Text(
                  "Выдержанный и глубокий вкус\n"
                  "Односолодовый шотландский виски\n"
                  "Дополнение к вашей любимой сигаре\n",
                  style: TextStyle(
                      color: Color(0xFFB4BCEB),
                      fontWeight: FontWeight.w300,
                      fontSize: 16.0),
                )
              ],
            ),
          )
        ],
      ),
    ),
    Container(
      color: Color(0xFF373550),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Center(
            child: Image.asset(
              "assets/images/vodka.png",
              width: 190,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "К любому застолью",
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Color(0xFFA1B6CC),
                  ),
                ),
                Text(
                  "Водка",
                  style: TextStyle(
                      fontSize: 30.0,
                      color: Color(0xFFD2F3F4),
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 20.0),
                Divider(color: Color(0xFFD2F3F4)),
                Text(
                  "Национальный напиток\n"
                  "Изысканно дополнит любое блюдо\n"
                  "Лекарство для души и тела",
                  style: TextStyle(
                      color: Color(0xFFA1B6CC),
                      fontWeight: FontWeight.w300,
                      fontSize: 16.0),
                )
              ],
            ),
          )
        ],
      ),
    ),
    Container(
      color: Color(0xFF382626),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Center(
            child: Image.asset(
              "assets/images/kognac.png",
              width: 400,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Для душевного вечера",
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Color(0xFFA1B6CC),
                  ),
                ),
                Text(
                  "Коньяк",
                  style: TextStyle(
                      fontSize: 28.0,
                      color: Color(0xFFE6EED1),
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 20.0),
                Divider(color: Color(0xFFB7BEA5)),
                Text(
                  "Коньяк - это культурное наследие\n"
                  "Сигары, коньяк и никакого спорта\n"
                  "(с) Уинстон Черчиль\n ",
                  style: TextStyle(
                      color: Color(0xFFB7BEA5),
                      fontWeight: FontWeight.w300,
                      fontSize: 16.0),
                )
              ],
            ),
          )
        ],
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LiquidSwipe(
        pages: pages,
        enableLoop: true,
        fullTransitionValue: 600,
        waveType: WaveType.liquidReveal,
        enableSlideIcon: true,
        slideIconWidget: Icon(Icons.arrow_back_ios, size: 34),
      ),
    );
  }
}
