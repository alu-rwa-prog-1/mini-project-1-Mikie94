import 'dart:ui';
import 'package:alu_rwa_miniproject1_wk3/form.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  List topList = [];
  List productList = [];

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    topList = [];

    // assets/icons8-diamond-96.png
    // assets/icons8-mobile-payment-96.png
    // assets/icons8-movie-96.png
    // assets/icons8-statistics-report-96.png
    // assets/icons8-take-away-food-96.png

    topList.add(_getTitleButton(
        Image.asset(
          'assets/delivery.png',
          fit: BoxFit.fill,
          height: 40,
        ),
        'Delivery'));
    topList.add(_getTitleButton(
        Image.asset(
          'assets/icons8-kawaii-bread-96.png',
          fit: BoxFit.fill,
          height: 40,
        ),
        'Bread'));
    topList.add(_getTitleButton(
        Image.asset(
          'assets/icons8-kawaii-coffee-96 (1).png',
          fit: BoxFit.fill,
          height: 40,
        ),
        'Coffee'));

    topList.add(_getTitleButton(
        Image.asset(
          'assets/icons8-debt-96.png',
          fit: BoxFit.fill,
          height: 40,
        ),
        'Loan'));
    topList.add(_getTitleButton(
        Image.asset(
          'assets/icons8-mobile-payment-96.png',
          fit: BoxFit.fill,
          height: 40,
        ),
        'Payments'));
    topList.add(_getTitleButton(
        Image.asset(
          'assets/icons8-movie-96.png',
          fit: BoxFit.fill,
          height: 40,
        ),
        'Movie'));
    topList.add(_getTitleButton(
        Image.asset(
          'assets/icons8-statistics-report-96.png',
          fit: BoxFit.fill,
          height: 40,
        ),
        'Report'));
    topList.add(_getTitleButton(
        Image.asset(
          'assets/icons8-take-away-food-96.png',
          fit: BoxFit.fill,
          height: 40,
        ),
        'Take Away'));

    // productList   .add(_getTitleButton(Image.asset('assets/icons8-take-away-food-96.png',fit: BoxFit.fill,height: 40,),'Take Away'));
    // productList   .add(_getTitleButton(Image.asset('assets/icons8-take-away-food-96.png',fit: BoxFit.fill,height: 40,),'Take Away'));
    // productList   .add(_getTitleButton(Image.asset('assets/icons8-take-away-food-96.png',fit: BoxFit.fill,height: 40,),'Take Away'));
    // productList   .add(_getTitleButton(Image.asset('assets/icons8-take-away-food-96.png',fit: BoxFit.fill,height: 40,),'Take Away'));
    // topList = [];
    productList = [];
    productList.add(_getproduct('9566', 'Potatoes',
        'https://media.gettyimages.com/photos/three-potatoes-picture-id157430678?s=2048x2048'));
    productList.add(_getproduct('7800', 'Java Beans ',
        'https://media.gettyimages.com/photos/full-frame-shot-of-white-beans-in-wooden-spoon-picture-id995373888?s=2048x2048'));
    productList.add(_getproduct('5000', 'Rice',
        'https://media.gettyimages.com/photos/raw-rice-grain-and-dry-rice-plant-on-wooden-table-picture-id872343048?s=2048x2048'));
    productList.add(_getproduct('8211', 'Jasmine-Rice',
        'https://media.gettyimages.com/photos/jasmine-rice-picture-id183328028?s=2048x2048'));
    productList.add(_getproduct('985', 'Petit pois ',
        'https://media.gettyimages.com/photos/green-pea-picture-id155431404?s=2048x2048'));
    productList.add(_getproduct('555', 'Haricots Yummie ',
        'https://media.gettyimages.com/photos/yummie-beans-picture-id168282108?s=2048x2048'));

    // topList.add(_getTitleButton(Image.asset('assets/icons8-kawaii-coffee-96 (1).png',fit: BoxFit.fill,height: 30,),'Coffee'));
    // topList.add(_getTitleButton(Image.asset('assets/icons8-kawaii-coffee-96 (1).png',fit: BoxFit.fill,height: 30,),'Coffee'));

    return SafeArea(
      child: Scaffold(
        drawer: Container(
          width: MediaQuery.of(context).size.width * 0.6,
          child: Drawer(
            child: ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
                _createHeader(),
                _createDrawerItem(
                  icon: Icons.home,
                  text: 'Home',
                ),
                _createDrawerItem(
                  icon: Icons.add_shopping_cart,
                  text: 'Cart',
                ),
                _createDrawerItem(
                  icon: Icons.note,
                  text: 'Notes',
                ),
                Divider(),
                _createDrawerItem(
                    icon: Icons.bug_report, text: 'Report an issue'),
                ListTile(
                  title: Text('0.0.1'),
                  onTap: () {},
                ),
              ],
            ),
          ),
        ),
        appBar: AppBar(
          backgroundColor: Colors.teal,
          centerTitle: true,
          title: Row(
            mainAxisAlignment:MainAxisAlignment.spaceBetween,

            children: [


              Text(
                'Grocers',
                style: GoogleFonts.sahitya(
                    fontStyle: FontStyle.normal,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              Row(
                mainAxisAlignment:MainAxisAlignment.end ,
                children: [
                  Icon(Icons.search),
Container(width: 5,),
Icon(Icons.add_shopping_cart),


                ],
              )
            ],
          )
          // leading:           Text('Grocers',style: GoogleFonts.sahitya(fontStyle: FontStyle.normal,fontSize: 18,fontWeight: FontWeight.bold,color: HexColor('#A934DB')),),
        ),
        body: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              Container(
                // color: Colors.black,
                height: MediaQuery.of(context).size.height * 0.18,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: topList.length,
                  itemBuilder: (context, index) {
                    return topList[index];
                  },
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.65,
                child: GridView.builder(
                  itemCount: productList.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: EdgeInsets.all(5),
                      child: new Card(
                        elevation: 12,
                        child: RaisedButton(
                          child: productList[index],
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => from(),
                                ));
                          },
                        ),
                      ),
                    );
                  },
                ),
              )

              // Container()
            ],
          ),
        ),
      ),
    );
  }

  _createDrawerItem({IconData icon, String text}) {
    return Row(
      children: [
        Icon(icon),
        Container(
          width: 10,
        ),
        Text(text)
      ],
    );
  }

  topWidget({IconData icon, String text}) {
    return Row(
      children: [
        Icon(icon),
        Container(
          width: 10,
        ),
        Text(text)
      ],
    );
  }

  _createHeader() {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.4,
      child: Stack(
        children: [
          Image.network(
            'https://morrismuseum.org/wp-content/uploads/2019/09/Elan.-Out-of-Place-2019.-Photo-by-Cameran-Ko.-Smaller-1.jpg',
            fit: BoxFit.fill,
          ),
          Positioned(
              bottom: 63,
              left: 1,
              child: Container(
                child: ClipRRect(
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                    child: Text(
                      'Potato App',
                      style: TextStyle(
                          fontSize: 30,
                          color: Colors.tealAccent,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ))
        ],
      ),
    );
  }

  _getTitleButton(img, txt) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Card(
              elevation: 18.0,
              shape: CircleBorder(),
              child: CircleAvatar(
                minRadius: 25,
                backgroundColor: Colors.white,
                child: img,
              ),
            ),
          ),
          Text(
            txt,
            style: GoogleFonts.sahitya(
                fontStyle: FontStyle.normal,
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: HexColor('#A934DB')),
          )
        ],
      ),
    );
  }

  _getproduct(prc, title, imglink) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            imglink,
            height: 100,
          ),
          Text(
            title,
            style: GoogleFonts.sahitya(
                fontStyle: FontStyle.normal,
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.teal),
          ),
          Text(
            'Frw ' + prc,
            style: GoogleFonts.sahitya(
                fontStyle: FontStyle.italic,
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black),
          )
        ],
      ),
    );
  }
}
