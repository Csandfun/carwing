// ignore_for_file: use_key_in_widget_constructors, must_be_immutable, prefer_typing_uninitialized_variables, prefer_const_literals_to_create_immutables, unused_local_variable

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/appointment_controller.dart';

class AppointmentView extends GetView<AppointmentController> {
  // const AppointmentView({Key? key}) : super(key: key);

  List imgs = [
    "doc5.jpg",
    "doc4.jpg",
    "doc2.jpg",
    "doc3.jpg"
  ];
  @override
  Widget build(BuildContext context) {
    var index;
    return Scaffold(
      backgroundColor: Colors.green,
      body: SingleChildScrollView(
        child: Column(
          children: [
          SizedBox(height: 50,),
          Padding(
            padding:EdgeInsets.symmetric(horizontal: 20),
            child: Stack(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(Icons.arrow_back_ios_new,
                      color: Colors.black,
                      size: 30,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                      },
                      child: Icon(Icons.more_vert,
                      color: Colors.black,
                      size: 30,
                      ),
                    )
                  ],
                ),
                Padding(padding: EdgeInsets.symmetric(vertical: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CircleAvatar(
                      radius: 40,
                       backgroundImage: AssetImage("assets/doc5.jpg"),
                    ),
                    SizedBox(height: 15,),
                    Text("Dr.Doctor Name",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                      color: Colors.white
                    ),
                    ),
                    SizedBox(height: 5,),
                    Text("Therapoist",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                    ),),
                    SizedBox(height: 5,),
                    Row(
                      mainAxisAlignment:MainAxisAlignment.center,
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.green[400],
                            shape: BoxShape.circle,
                          ),
                          child: Icon(Icons.call,
                          color: Colors.white,
                          size: 30,
                          ),
                        ),
                        SizedBox(width: 20),
                        Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.green[400],
                            shape: BoxShape.circle,
                          ),
                          child: Icon(CupertinoIcons.chat_bubble_text_fill,
                          color: Colors.white,
                          size: 30,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                ),
              ],
            ), 
          ),
            SizedBox(height: 20,),
                Container(
                  height: MediaQuery.of(context).size.height / 1.5,
                  width: double.infinity,
                  padding: EdgeInsets.only(
                    top: 20,
                    left: 15,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)
                    )
                  ),
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text("About Doctor",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                      ),
                      ),
                      SizedBox(height: 8,),
                      Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitationk.",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.normal,
                        color: Colors.black54
                      ),
                      ),
                       SizedBox(height: 8,),
                       Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Reviews",
                          style: TextStyle(fontSize: 19,
                          fontWeight: FontWeight.w500
                          ),
                          ),
                           SizedBox(width: 6,),
                           Icon(Icons.star,
                           color:Colors.amber,
                           ),
                           Text("4.9",
                           style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 17
                           ),
                           ),
                            Text("(125)",
                           style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 17
                           ),
                           ),
                           Spacer(),
                           TextButton(
                            onPressed:(){}, 
                            child: Text("See all",
                            style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 18,
                             color: Colors.purple,
                            ),
                            ),
                            
                            )
                        ],
                       ),
                       SizedBox(
                        height: 160,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 4,
                          itemBuilder: (context,index){
                          return Container(
                            margin: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black38,
                                  blurRadius: 4,
                                  spreadRadius: 2,
                                )
                              ]
                            ),
                           child: SizedBox(
                            width: MediaQuery.of(context).size.width / 1.4,
                            child: Column(children: [
                              ListTile(
                                leading: CircleAvatar(
                                  radius: 27,
                                   backgroundImage: AssetImage("assets/${imgs[index]}"),
                                ),
                                title: Text("Dr.Doctor Name",
                                style: TextStyle(fontWeight: FontWeight.bold,
                                color: Colors.black,
                                ),
                                ),
                                subtitle: Text("1 day ago"),
                                trailing: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                     Icons.star,
                                     color: Colors.amber, 
                                    ),
                                    Text("4.9",
                                    style: TextStyle(
                                      color: Colors.black87
                                    ),)
                                  ]),
                              ),
                              SizedBox(height: 5,),
                              Padding(padding: EdgeInsets.symmetric(horizontal: 10),
                              child: Text(
                                maxLines:2,
                                overflow:TextOverflow.ellipsis,
                                "Many Thanks to Dr.Dear.He is a great and proffesional doctor",
                              style: TextStyle(
                                color: Colors.black,
                              ),
                              ),
                              ),
                            ]),
                           ), 
                          );
                        }),
                       ),
                       SizedBox(height: 10,),
                       Text(
                        "Location",
                       style: TextStyle(
                        fontSize: 21,
                        fontWeight: FontWeight.w500,
                       ),
                       ),
                       ListTile(
                        leading: Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            Icons.location_on,
                            color: Colors.green,
                            size: 30,
                            ),
                        ),
                        title:Text("Davangere City Hospital",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 19,
                        ),
                        ),
                        subtitle: Text("address line of the Hospital"),
                       )
                   ],
                    ),
                )
        ]),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(15),
        height: 130,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black45,
              blurRadius: 4,
              spreadRadius: 2,
            )
          ]
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Consulation price",
                style: TextStyle(
                  color:Colors.black87,
                  fontSize: 18,
                ),
                ),
                Text("Rs.100",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black87,
                  fontWeight: FontWeight.bold,
                ),
                )
              ],
            ),
            SizedBox(height: 15,),
            InkWell(
              onTap: () {
                
              },
              child: Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.symmetric(vertical: 18),
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Center(child: Text("Book appointment",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
