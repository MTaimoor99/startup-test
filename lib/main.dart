import 'dart:ffi';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:startup_test/bell_clipper.dart';
import 'package:startup_test/double_slant_clipper.dart';
import 'package:startup_test/drawer_containers.dart';
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

class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin{
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

  late TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 5,initialIndex: 2,vsync:this);
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return SafeArea(
      child: Scaffold(
        drawer: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10,sigmaY: 10),
          child: Container(
            width: (300/402) * MediaQuery.sizeOf(context).width,
            decoration: BoxDecoration(
              gradient: LinearGradient(
              begin: Alignment.bottomCenter, // 0deg = bottom to top
              end: Alignment.topCenter,
              stops: [0.2845, 1.0], // 28.45% and 100%
              colors: [
                Color(0xFF09001A), // #09001A
                Color(0x8C2C1C4A), // rgba(44, 28, 74, 0.55)
              ],
            ),
            ),
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height:80),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:[
                      CircleAvatar(
                        radius: 32,
                        backgroundImage: AssetImage('assets/images/emily_carter.png'),
                      ),
                      SizedBox(width:16),
                      Flexible(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children:[
                            Text('Emily Carter',
                            style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontFamily: 'Kunaari',
                            fontWeight: FontWeight.w700,)
                            ),
                            Text('2500 Points Earned',
                            style: TextStyle(
                            color: Colors.white,
                            fontSize: 13,
                            fontWeight: FontWeight.w700,)
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height:24),
                  DrawerContainers(
                    containerColor: Color(0xff503bd8).withValues(alpha:0.5),
                    textColor: Color(0xffE7E7F9),
                    textContent: 'Pineamite Home',
                  ),
                  SizedBox(height:8),
                  DrawerContainers(
                    containerColor: Color(0xff503bd8).withValues(alpha:0.5),
                    textColor: Color(0xffE7E7F9),
                    textContent: 'Find Rallies',
                  ),
                  SizedBox(height:8),
                  DrawerContainers(
                    containerColor: Color(0xff503bd8).withValues(alpha:0.5),
                    textColor: Color(0xffE7E7F9),
                    textContent: 'Rewards & Points',
                  ),
                  SizedBox(height:8),
                  DrawerContainers(
                    containerColor: Color(0xff503bd8).withValues(alpha:0.5),
                    textColor: Color(0xffE7E7F9),
                    textContent: 'Profile',
                  ),
                  SizedBox(height:16),
                  DrawerContainers(
                    containerColor: Color(0xffc000a3),
                    textColor: Color(0xfffee0f9),
                    textContent: 'Start Recording',
                    svgPath: 'assets/icons/camera.svg',
                  ),
                  SizedBox(height:16),
                  DrawerContainers(
                    containerColor: Color(0xff392a56),
                    textColor: Color(0xffE7E7F9),
                    textContent: 'How Pineamite works',
                  ),
                  SizedBox(height:8),
                  DrawerContainers(
                    containerColor: Color(0xff392a56),
                    textColor: Color(0xffE7E7F9),
                    textContent: 'Terms And Conditions',
                  ),
                  SizedBox(height:8),
                  DrawerContainers(
                    containerColor: Color(0xff392a56),
                    textColor: Color(0xffE7E7F9),
                    textContent: 'Privacy Policy',
                  ),
                  SizedBox(height:36),
                  Container(width: double.infinity,height: 1.5,color: Color(0xff473A60)),
                  SizedBox(height:24),
                  DrawerContainers(
                    containerColor: Color(0xff80002f),
                    textColor: Color(0xfffce3e7),
                    textContent: 'Sign Out',
                    svgPath: 'assets/icons/log-out.svg',
                  ),
                  SizedBox(height:48),
              
                ],
              ),
            ),
          ),
        ),
        backgroundColor: Color(0xff09001a),
        body: Builder(
          builder: (context) {
            return Stack(
              children: [
                SingleChildScrollView(
                  child: Column(
                    children:[
                    Stack(children: [
                      Image.asset('assets/images/car.png'),
                
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
                      ),
                ),
                Positioned(
                    right: 0,
                    left:0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        GestureDetector(
                          onTap:(){
                          Scaffold.of(context).openDrawer();
                          },
                          child: Row(
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
              ],
                  );
          }
        ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color:Color(0xff09001a)
        ),
        child: TabBar(
          controller: _tabController,
          tabs: [
          SvgPicture.asset('assets/icons/home.svg'),
          SvgPicture.asset('assets/icons/race_flag.svg'),
          SvgPicture.asset('assets/icons/camera.svg'),
          SvgPicture.asset('assets/icons/trophy.svg'),
          SvgPicture.asset('assets/icons/user.svg'),
        ]),
      ),
      ),
    );
  }
}
