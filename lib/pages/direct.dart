import 'package:flutter/material.dart';

class DirectPage extends StatefulWidget {
  const DirectPage({Key? key}) : super(key: key);

  @override
  State<DirectPage> createState() => _DirectPageState();
}

class _DirectPageState extends State<DirectPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        physics: BouncingScrollPhysics(),
        child: Container(
          height: 900,
          color: Colors.black,
          child: Column(
            children: [
              Container(
                height: 60,
                width: 400,
                margin: EdgeInsets.only(left: 4,top: 38),
                child: Row(
                  children: [
                    IconButton(onPressed: (){
                      Navigator.pop(context);
                    }, icon: Icon(Icons.arrow_back,color: Colors.white,size: 30,)),
                    Container(
                      margin: EdgeInsets.only(left: 12),
                      padding: EdgeInsets.all(3),
                      height: 50,
                      width: 53,
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
                    Container(
                      margin: EdgeInsets.only(top: 14,left: 12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Someone',style: TextStyle(fontSize: 14,color: Colors.white),),
                          Text('123,567 subscribers',style: TextStyle(fontSize: 14,color: Colors.white.withOpacity(0.7)),)
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: 55,
                width: 400,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(28),
                  color: Colors.grey.withOpacity(0.6),
                ),
                margin: EdgeInsets.only(left: 12,right: 12,top: 660),
                padding: EdgeInsets.only(left: 4),
                child: Center(
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.more_horiz_sharp,color: Colors.white),
                      suffixIcon: Icon(Icons.send),
                      hintText: "Write your message",
                      border: InputBorder.none
                    ),
                  ),
                ),
              )
            ],
          )
        ),
      ),
    );
  }
}
