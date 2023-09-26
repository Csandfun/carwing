import 'package:flutter/material.dart';

import 'package:get/get.dart';


import '../controllers/chatsample_controller.dart';

class ChatsampleView extends GetView<ChatsampleController> {
  const ChatsampleView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var MessageType;
    return Column(
     crossAxisAlignment: CrossAxisAlignment.start,
     children: [
      Padding(padding: EdgeInsets.only(right: 80),
      child: ClipPath(
        clipper: UpperNipMessageClipper(MessageType.receive),
        child: Container(
           padding: EdgeInsets.all(20),
           decoration: BoxDecoration(
            color: Colors.grey[300],
           ),
           child: Text("Hello,What i can do for you,You can Book appointment directly",
           style: TextStyle(fontSize: 16),
           ),

        ),
      ),
      )
     ],
    );
  }
}

UpperNipMessageClipper(receive) {
}
