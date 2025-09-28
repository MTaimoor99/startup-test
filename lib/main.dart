import 'dart:ffi';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:startup_test/bell_clipper.dart';
import 'package:startup_test/double_slant_clipper.dart';
import 'package:startup_test/points_clipper.dart';
import 'package:startup_test/slanted_left_clipper.dart';

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
  List<String> _liveStreamImagePaths = [
    'assets/images/live_streams_pic1.png',
    'assets/images/live_streams_pic2.png',
    'assets/images/live_streams_pic2.png',
    'assets/images/live_streams_pic2.png',
    'assets/images/live_streams_pic2.png',
    'assets/images/live_streams_pic2.png',
    'assets/images/live_streams_pic2.png',
    'assets/images/live_streams_pic2.png',
    'assets/images/live_streams_pic2.png',
    'assets/images/live_streams_pic2.png',
  ];

  List<String> _liveStreamCaptions = [
    'Rali Serras De Fafe - Europe 2025',
    'Rali Serras De Fafe - Europe 2025 - Historic Special Rally',
    'Rali Serras De Fafe',
    'Rali Serras De Fafe',
    'Rali Serras De Fafe',
    'Rali Serras De Fafe',
    'Rali Serras De Fafe',
    'Rali Serras De Fafe',
    'Rali Serras De Fafe',
    'Rali Serras De Fafe',
  ];

  List<String> _highlightsCaptions = [
    'Rali Serras De Fafe',
    'Rali Serras De Fafe',
    'Rali Serras De Fafe',
    'Rali Serras De Fafe',
    'Rali Serras De Fafe',
    'Rali Serras De Fafe',
    'Rali Serras De Fafe',
    'Rali Serras De Fafe',
    'Rali Serras De Fafe',
    'Rali Serras De Fafe',
  ];

  List<String> _highlightsImagePaths = [
    'assets/images/highlights_image_path1.png',
    'assets/images/highlights_image_path2.png',
    'assets/images/highlights_image_path2.png',
    'assets/images/highlights_image_path2.png',
    'assets/images/highlights_image_path2.png',
    'assets/images/highlights_image_path2.png',
    'assets/images/highlights_image_path2.png',
    'assets/images/highlights_image_path2.png',
    'assets/images/highlights_image_path2.png',
    'assets/images/highlights_image_path2.png',
  ];

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
            right: 0,
            left:0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Row(
                  children: [
                    ClipPath(
                      clipper: SlantedLeftClipper(),
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                        child: Row(
                          children: [
                            Container(
                              padding: EdgeInsets.only(left:12,bottom:16,right:32),
                              height: 118.26,
                              decoration: BoxDecoration(
                                color: Color(0xffe000ac).withValues(alpha:0.5),
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  SvgPicture.asset('assets/icons/hamburger.svg'),
                                  SizedBox(width:8),
                                  SvgPicture.asset('assets/icons/pineamite.svg'),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Transform.translate(
                    offset: Offset(-30, 0), // Move left by the slant amount (30px)
                    child: ClipPath(
                      clipper: DoubleSlantClipper(),
                      child: Container(
                        height: 118.26,
                        width: 60, // Your desired width
                        decoration: BoxDecoration(
                          color: Color(0xffff1fbc).withValues(alpha: 0.25), // Your desired color
                        ),
                        // Add your content here
                      ),
                    ),
                  ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ClipPath(
                      clipper: BellClipper(),
                      child: Container(
                        padding: EdgeInsets.all(12),
                        height: 47.7,
                        width: 60, // Your desired width
                        decoration: BoxDecoration(
                          color: Color(0xffff1fbc).withValues(alpha: 0.25), // Your desired color
                        ),
                        child: SvgPicture.asset('assets/icons/bell-dot.svg',
                        fit: BoxFit.scaleDown,
                        ),
                      ),
                    ),
                    Transform.translate(
                      offset: Offset(-15, 0),
                      child: ClipPath(
                        clipper: PointsClipper(),
                        child: Container(
                          padding: const EdgeInsets.only(top:4.0,bottom:4.0,left:14.0,right: 14.0),
                          height: 47.7, // Your desired width
                          decoration: BoxDecoration(
                            color: Color(0xffe000ac).withValues(alpha:0.5),// Your desired color
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Flexible(
                                child: Text('2500',style:TextStyle(
                                  color:Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                  height: 1.25,
                                )),
                              ),
                              Flexible(
                                child: Text('points earned',style:TextStyle(
                                  color:Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                  height: 1.25,
                                )),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  
                  ],
                  ),
              ],
              
            ),
          ),
          Positioned(
            bottom: 30,
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
          padding: EdgeInsets.only(left:20,right:12,top:8,bottom:8),
          child: Row(
            spacing: 4,
            children: List.generate(_liveStreamImagePaths.length, (index){
              return Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 96,
                    width: 170,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      image: DecorationImage(
                        image: AssetImage(
                        _liveStreamImagePaths[index]
                      )),
                    ),
                    
                  ),
                  SizedBox(height:8),
                  SizedBox(
                  width: 170,
                  height: 47,
                  child: Text(_liveStreamCaptions[index],
                  style:TextStyle(
                  color:Colors.white,
                  fontFamily: 'Kunaari',
                  fontWeight: FontWeight.w700,
                  fontSize:17),maxLines:2,overflow:TextOverflow.ellipsis)),
                ],
              );
            })
          ),
        ),
        Container(
          padding: EdgeInsets.only(top: 12,right:12,bottom:12,left:20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children:[
                  Text('Highlights',
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
                  Text('View More Clips',
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
          padding: EdgeInsets.only(left:20,right:12,top:8,bottom:8),
          child: Row(
            spacing: 4,
            children: List.generate(_highlightsImagePaths.length, (index){
              return Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 96,
                    width: 170,
                    padding:EdgeInsets.only(right:8,top:8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      image: DecorationImage(
                        image: AssetImage(
                        _highlightsImagePaths[index]
                      )),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(vertical: 3,horizontal: 10),
                          decoration: BoxDecoration(
                            color: Color(0xffa3ffff),
                            borderRadius: BorderRadius.all(Radius.circular(24))
                          ),
                          child: Text('Maximilian Fischer',
                          style: TextStyle(
                            color: Color(0xff09001a),
                            fontWeight: FontWeight.w500,
                            fontSize: 11,
                          ),
                          ),
                        ),
                        SizedBox(height: 8,),
                        Container(
                          padding: EdgeInsets.symmetric(vertical: 3,horizontal: 10),
                          decoration: BoxDecoration(
                            color: Color(0xfffd8cee),
                            borderRadius: BorderRadius.all(Radius.circular(24))
                          ),
                          child: Text('Elena Martinez',
                          style: TextStyle(
                            color: Color(0xff09001a),
                            fontWeight: FontWeight.w500,
                            fontSize: 11,
                          ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height:8),
                  SizedBox(
                  height: 47,
                  width: 170,
                  child: Text(_highlightsCaptions[index],style: TextStyle(
                  color:Colors.white,
                  fontFamily: 'Kunaari',
                  fontWeight: FontWeight.w700,
                  fontSize:17),
                  maxLines:2,
                  overflow:TextOverflow.ellipsis)),
                ],
              );
            })
          ),
        ),
      ],
    ));
  }
}
