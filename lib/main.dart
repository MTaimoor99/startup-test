import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
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

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      backgroundColor: Color(0xff09001a),
      body: Column(
        children:[
        Stack(children: [
          Image.asset('assets/images/car.png'),
          Positioned(
            bottom: 50,
            left:24,
            right: 24,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Saturday Morning Recap',
                    style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 28,
                    color: Colors.white,
                    fontFamily: 'Kunaari')
                    ),
                    Row(
                      children: [
                        Text('Delfi Rally Estonia 2025',
                        style: TextStyle(
                          color: Colors.white,
                    
                        ),),
                        const SizedBox(width:8),
                        Container(height:16,width: 1.5,color: Color(0xfffd54cb)),
                        const SizedBox(width:8),
                        Text('5 min',
                        style: TextStyle(
                          color: Colors.white,
                    
                        ),
                        )
                      ],
                    ),
                    SizedBox(height: 8,),
                    Row(
                    spacing: 4,
                    children: [
                      Container(
                        width: 32,
                        height:5,
                        decoration: BoxDecoration(
                          color: Color(0xffff1fbc),
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                        ),
                      ),
                      Container(
                        width:5,
                        height: 5,
                        decoration: BoxDecoration(
                          color: Color(0xffFEE0F9),
                          shape: BoxShape.circle,
                        ),
                      ),
                      Container(
                        width:5,
                        height: 5,
                        decoration: BoxDecoration(
                          color: Color(0xffFEE0F9),
                          shape: BoxShape.circle,
                        ),
                      ),
                      Container(
                        width:5,
                        height: 5,
                        decoration: BoxDecoration(
                          color: Color(0xffFEE0F9),
                          shape: BoxShape.circle,
                        ),
                      ),
                      Container(
                        width:5,
                        height: 5,
                        decoration: BoxDecoration(
                          color: Color(0xffFEE0F9),
                          shape: BoxShape.circle,
                        ),
                      ),
                    ],
                  ),
                  ],
                ),
                SvgPicture.asset('assets/icons/play_icon.svg'),
                
                
              ],
            ),
            
          )
        ],),
        Container(
          padding: EdgeInsets.only(top: 12,right:12,bottom:12,left:20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children:[
                  SvgPicture.asset('assets/icons/record.svg'),
                  const SizedBox(width:8),
                  Text('Live Streams',
                  style: TextStyle(
                    fontFamily: 'Kunaari',
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: 24,
                    height: 24/28,
                  ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('View All',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Kunaari',
                    fontWeight: FontWeight.w700,
                    fontSize: 14,
                    height:14/14
                  ),
                  ),
                  SvgPicture.asset('assets/icons/chevron-right.svg'),
                ],
              ),
            ],
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.only(left:20,right:12,top:8),
          child: Row(
            spacing: 4,
            children: List.generate(10, (index){
              return Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 96,
                    width: 170,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(12),

                    ),
                    
                  ),
                  SizedBox(height:8),
                  Text(index.toString(),style: TextStyle(color:Colors.white),maxLines:2,overflow:TextOverflow.ellipsis),
                ],
              );
            })
          ),
        ),
      ],
    ));
  }
}
