
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class DetailScreen extends StatefulWidget {

  const DetailScreen({required this.todo});


  final int todo;

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  late VideoPlayerController controller;

  @override

  void initState() {
    loadVideoPlayer();
    super.initState();
  }

  loadVideoPlayer(){
    controller = VideoPlayerController.asset('videos/video1.mp4');
    controller.addListener(() {
      // setState(() {});
    });
    controller.initialize().then((value){
      setState(() {});
    });

  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Course ${widget.todo}"),
        backgroundColor: Color(0xFFFFC701),
      ),
      backgroundColor: Color(0xFF0A1733),
      body: Container(

          child: Column(
              children:[
                AspectRatio(
                  aspectRatio: controller.value.aspectRatio,
                  child: VideoPlayer(controller),
                ),



                Container(
                    child: VideoProgressIndicator(
                        controller,
                        allowScrubbing: true,
                        colors:VideoProgressColors(
                          backgroundColor: Colors.redAccent,
                          playedColor: Colors.green,
                          bufferedColor: Colors.purple,
                        )
                    )
                ),

                Container(
                  child: Row(
                    children: [
                      IconButton(

                          onPressed: (){
                            if(controller.value.isPlaying){
                              controller.pause();
                            }else{
                              controller.play();
                            }

                            setState(() {

                            });
                          },
                          icon:Icon(controller.value.isPlaying?Icons.pause:Icons.play_arrow , color: Color(0xFFFFC701),)
                      ),

                      IconButton(
                          onPressed: (){
                            controller.seekTo(Duration(seconds: 0));

                            setState(() {

                            });
                          },
                          icon:Icon(Icons.stop , color: Color(0xFFFFC701),)
                      )
                    ],
                  ),
                ),

                SizedBox(height: 20,),

                Text("Course Description" ,style: TextStyle(color: Colors.white),),
                // SizedBox(height: 20,),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      foregroundColor:
                      MaterialStateProperty.all<Color>(Color(0xFFFFC701)),
                      backgroundColor:
                      MaterialStateProperty.all<Color>(Color(0xFF0A1733)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24.0),
                        ),
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(14.0),
                      child: Text(
                        'Buy Course',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ),
                ),
              ]
          )
      ),
    );
  }
}
