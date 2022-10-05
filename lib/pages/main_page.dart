import 'package:flutter/material.dart';
import 'package:ui_sample/pages/direct.dart';
int selected=0;
class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        color: Colors.black,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(top: 50,left: 20,right: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Discover",style: TextStyle(fontWeight: FontWeight.w800,color: Colors.white,fontSize: 28),),
                  IconButton(onPressed: (){}, icon: Icon(Icons.search,color: Colors.white,size: 32,))
                ],
              ),
            ), //Discover search bar
            Container(
              height: 100,
              width: 400,
              child: ListView.builder(itemBuilder: (context, index) => stories(context,"someone"),
              itemCount: 10,
              physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
              ),

            ), // stories
            Container(
              margin: EdgeInsets.only(top: 20),
              height: 250,
              width: 400,
              child: ListView.builder(itemBuilder: (context, index) => Center(
                child: Container(
                  margin: EdgeInsets.only(left: 10),
                  height: 240,
                  width: 360,
                  decoration: BoxDecoration(
                      color: Colors.lightBlueAccent[200],
                      borderRadius: BorderRadius.circular(16)
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                          left: 30,
                          top: 30,
                          child: Text("Prepare for\nyour first\nskateboard\njump",
                            style: TextStyle(color: Colors.white,fontSize: 24,fontStyle: FontStyle.italic),)), //Prepare...
                      Positioned(
                          bottom: 50,
                          left: 30,
                          child: Text("Samandar Ahadjonov",style: TextStyle(color: Colors.white,fontSize: 16,fontStyle: FontStyle.italic))),
                      Positioned(
                          bottom: 30,
                          left: 30,
                          child: Text("2 weeks ago",style: TextStyle(color: Colors.white,fontSize: 12,fontStyle: FontStyle.normal))),
                      Positioned(
                          left: 180,
                          bottom: 0,
                          child: Container(
                            width: 180,
                            height: 260,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('assets/images/boy.png'),
                                    fit: BoxFit.cover
                                )
                            ),
                          ))
                    ],
                  ),


                ),
              ),
              scrollDirection: Axis.horizontal,
              itemCount: 2,
              physics: BouncingScrollPhysics(),)
            ), //scroll
            Container(
              margin: EdgeInsets.only(left: 20,top: 12),
              child: Text("Most Watched",style: TextStyle(fontWeight: FontWeight.w800,color: Colors.white,fontSize: 20),),
            ), //Most Watched
            Container(
              height: 260,
              width: 400,
              child: ListView.builder(itemBuilder: (context, index) => Container(
                child: Column(
                  children: [
                    Container(
                      margin: const  EdgeInsets.only(left: 20,top: 10),
                      child: Row(
                        children: [
                          Container(
                            height: 100,
                            width: 130,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                image: DecorationImage(
                                    image:AssetImage('assets/images/first.png'),
                                    fit: BoxFit.cover
                                )
                            ),
                          ),
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  child: Text("Prepare for your first\nskateboard jump",
                                    style: TextStyle(color: Colors.white,fontSize: 16,fontStyle: FontStyle.normal,fontWeight: FontWeight.w600),),
                                  margin: EdgeInsets.only(left: 18,top: 12),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 20,top: 8),
                                  child: Text('Jordan Wise',style: TextStyle(fontSize: 12,color: Colors.white.withOpacity(0.8)),),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 20,top: 12),
                                  child: Text('124,567 views - 2 days ago',style: TextStyle(fontSize: 12,color: Colors.white.withOpacity(0.8)),),
                                )
                              ],
                            ),
                          )

                        ],
                      ),
                      height: 120,
                      width: 360,
                    ),
                    Container(
                      margin: const  EdgeInsets.only(left: 20,top: 10),
                      child: Row(
                        children: [
                          Container(
                            height: 100,
                            width: 130,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                image: DecorationImage(
                                    image:AssetImage('assets/images/second.png'),
                                    fit: BoxFit.cover
                                )
                            ),
                          ),
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  child: Text("Prepare for your first\nskateboard jump",
                                    style: TextStyle(color: Colors.white,fontSize: 16,fontStyle: FontStyle.normal,fontWeight: FontWeight.w600),),
                                  margin: EdgeInsets.only(left: 18,top: 12),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 20,top: 8),
                                  child: Text('Jordan Wise',style: TextStyle(fontSize: 12,color: Colors.white.withOpacity(0.8)),),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 20,top: 12),
                                  child: Text('124,567 views - 2 days ago',style: TextStyle(fontSize: 12,color: Colors.white.withOpacity(0.8)),),
                                )
                              ],
                            ),
                          )

                        ],
                      ),
                      height: 120,
                      width: 360,
                    )
                  ],
                ),
              ),
              itemCount: 2,
              scrollDirection: Axis.horizontal,
              physics: BouncingScrollPhysics()),
            ),
          ],
        )
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex:selected,
        onTap: (value) => setState(() {
          selected=value;
        }),
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.black,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Discover"),
          BottomNavigationBarItem(icon: Icon(Icons.video_camera_back),label: "Browse"),
          BottomNavigationBarItem(icon: Icon(Icons.bookmark),label: "Bookmark"),
          BottomNavigationBarItem(icon: Icon(Icons.more_horiz),label: "More"),
        ],
      ),
    );
  }
}

Widget stories(BuildContext context,String name) {
  return InkWell(
    onTap: (){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>DirectPage()));
    },
    child: Container(
      margin: EdgeInsets.only(top: 10, right: 14),
      padding: EdgeInsets.only(left: 4),
      height: 94,
      width: 76,
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(3),
            height: 68,
            width: 68,
            decoration: const BoxDecoration(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.all(Radius.circular(50))),
            child: Container(
                height: 60,
                width: 60,
                padding: EdgeInsets.all(2),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                  color: Colors.black,
                ),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                      image: DecorationImage(
                        image: NetworkImage("https://source.unsplash.com/random"),
                        fit: BoxFit.cover,
                      )),
                )),
          ),
          Center(
              child: Text(
                name,
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 12,color: Colors.white),
              ))
        ],
      ),
    ),
  );
}
