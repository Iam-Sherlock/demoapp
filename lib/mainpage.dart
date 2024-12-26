import 'dart:io';

import 'package:demoapp/adminPanel.dart';
import 'package:demoapp/contentDetail.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Mainpage extends StatelessWidget {
  Mainpage({super.key});
  List contentTitle = [
    "Phineas And Ferb",
    "Vikramadithyan Vedhalam",
    "Jackie Chan",
    "Paati Vaadi Kathai",
    "Kanna Nee Thoongada"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // bottomNavigationBar: NavigationBar(destinations: [
      //   NavigationDestination(icon: Icons.home_filled,label: ,),
      //   Container(color: Colors.blue,height: 80,),
      //   Container(color: Colors.black,height: 80,),
      // ],),
      appBar: AppBar(
        // backgroundColor: Colors.blueAccent,
        title: Text("HomePage"),
        shadowColor: Colors.blue,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AdminPanel()));
              },
              icon: Icon(Icons.admin_panel_settings)),
        ],
      ),
      body: Column(
        children: [
          const Center(
            child: Text(
              "Trending",
              style: TextStyle(
                fontSize: 40.0,
                fontWeight: FontWeight.bold,
                color: Color(0xff529d97),
                fontFamily: 'Roboto-bold',
                fontStyle: FontStyle.normal,
              ),
            ),
          ),
          Expanded(
              child: ListView.builder(
            itemCount: contentTitle.length,
            itemBuilder: (Context, index) {
              return Padding(
                padding: EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {
                    // print("Tapping $index");
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ContentDetail(
                                  conTitle: contentTitle[index],
                                  imgName: "1",
                                )));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Row(
                          children: [
                            Expanded(
                              child: Container(
                                height: 100,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: Theme.of(context).primaryColorLight,
                                    image: DecorationImage(
                                        image: FileImage(File(
                                            "assets/${contentTitle[index]}.jpg")),
                                        fit: BoxFit.fitWidth,
                                        opacity: 0.3)),
                                child: Stack(
                                  children: [
                                    Container(
                                      padding:
                                          EdgeInsets.only(top: 25, left: 5),
                                      child: Text(
                                        contentTitle[index],
                                        style: const TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 22.0,
                                        ),
                                      ),
                                    ),
                                    Positioned.fill(
                                      child: Padding(
                                        padding: EdgeInsets.all(8),
                                        child: Container(
                                            alignment: Alignment.centerRight,
                                            padding: EdgeInsets.all(8.0),
                                            height: 100,
                                            width: 100,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(15)),
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                              child: Image.asset(
                                                "assets/${contentTitle[index]}.jpg",
                                                fit: BoxFit.cover,
                                              ),
                                            )),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      // Padding(
                      //   padding: EdgeInsets.all(8),
                      //   child: Container(
                      //       padding: EdgeInsets.all(8.0),
                      //       height: 100,
                      //       width: 100,
                      //       decoration: BoxDecoration(
                      //           borderRadius: BorderRadius.circular(15)),
                      //       child: ClipRRect(
                      //         borderRadius: BorderRadius.circular(15),
                      //         child: Image.asset(
                      //           "assets/${contentTitle[index]}.jpg",
                      //           fit: BoxFit.cover,
                      //         ),
                      //       )),
                      // )
                    ],
                  ),
                ),
              );
            },
          ))

          // child: ListView.builder(itemCount: 5, itemBuilder: (Context,index){
          //   return Padding(padding: const EdgeInsets.all(8),
          //   child: Container(
          //     color: Colors.cyanAccent,
          //     height: 100,
          //     child: Center(child: Text("item $index"),),
          //   ),);
          // }),
        ],
      ),
    );
  }
}
