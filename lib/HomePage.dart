
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'DetailScreen.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0A1733),

      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("What are you going to learn today?",style: TextStyle(
          color: Colors.white,
        ),),
        backgroundColor: Color(0xFF0A1733),
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Align(
            child: Text(
              "   Courses",
              style: TextStyle(
                fontSize: 24,
                color: Colors.white,
              ),
            ),
            alignment: Alignment.centerLeft,
          ),
          CarouselSlider(
            items: [
              //1st Image of Slider
              Container(
                // color: Colors.black12,
                margin: EdgeInsets.all(6.0),
                //child: Text("Hello"),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: AssetImage('images/image1.jpeg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              //2nd Image of Slider
              Container(
                margin: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: AssetImage('images/image2.jpeg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              //3rd Image of Slider
              Container(
                margin: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: AssetImage('images/image3.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              //4th Image of Slider
              Container(
                margin: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: AssetImage('images/image4.jpeg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],

            //Slider Container properties
            options: CarouselOptions(
              height: 180.0,
              enlargeCenterPage: true,
              autoPlay: true,
              aspectRatio: 16 / 9,
              autoPlayCurve: Curves.fastOutSlowIn,
              enableInfiniteScroll: true,
              autoPlayAnimationDuration: Duration(milliseconds: 400),
              viewportFraction: 0.8,
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Align(
            child: Text(
              "   Feartured",
              style: TextStyle(
                fontSize: 24,
                color: Colors.white,
              ),
            ),
            alignment: Alignment.centerLeft,
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 200,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                SizedBox(
                  height: 200,
                  width: 30,
                ),
                ElevatedButton(
                  onPressed: () { 
                    print("Pressed");
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailScreen( todo: 1,),
                      ),
                    );
                    },
                  child: Container(
                    width: 200,
                    color: Color(0xFFFFC701),
                    // decoration: BoxDecoration(
                    //   borderRadius: BorderRadius.circular(8.0),
                    //   image: DecorationImage(
                    //     image: AssetImage('images/image1.jpeg'),
                    //     fit: BoxFit.cover,
                    //   ),
                    // ),

                    child: const Center(
                        child: Text(
                      'Course 1',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    )),
                  ),
                ),
                SizedBox(
                  height: 200,
                  width: 30,
                ),
                ElevatedButton(
                  onPressed: () {
                  print("Pressed");
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailScreen( todo: 2,),
                    ),
                  );
                  },
                  child: Container(
                    width: 200,
                    color: Color(0xFFFFC701),
                    child: const Center(
                        child: Text(
                      'Course 2',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    )),
                  ),
                ),
                SizedBox(
                  height: 200,
                  width: 30,
                ),
                ElevatedButton(
                  onPressed: () {

                    print("Pressed");
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailScreen( todo: 3,),
                      ),
                    );
                  },
                  child: Container(
                    width: 200,
                    color: Color(0xFFFFC701),
                    child: const Center(
                        child: Text(
                      'Course 3',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    )),
                  ),
                ),
                SizedBox(
                  height: 200,
                  width: 30,
                ),
                ElevatedButton(
                  onPressed: () {
                    print("Pressed");
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailScreen( todo: 4,),
                      ),
                    );
                  },
                  child: Container(
                    width: 200,
                    color: Color(0xFFFFC701),
                    child: const Center(
                        child: Text(
                      'Course 4',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    )),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      // backgroundColor: Colors.grey,
    );
  }
}


