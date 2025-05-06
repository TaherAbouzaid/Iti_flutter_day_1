import 'package:flutter/material.dart';
import 'package:task_managment/widgets/task_card.dart';


class TaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        actions: [Icon(Icons.search)],
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          TaskCard(
            title: "VR Course",
            progress: "13/13 Tasks – 100%",
            backgroundColor: Color(0xFF61DE70),
            avatars: [
              "assets/images/avatar.png",
              "assets/images/avatar2.png",
            ],
            illustration: "assets/images/(1).png",
          ),
          TaskCard(
            title: "Community",
            progress: "2/8 Tasks – 35%",
            backgroundColor: Color(0xFF19173D),
            avatars: [
              "assets/images/avatar.png",
              "assets/images/avatar2.png",
              "assets/images/avatar.png",
            ],
            illustration: "assets/images/(2).png",
          ),
          TaskCard(
            title: "SMM Course",
            progress: "4/7 Tasks – 57%",
            backgroundColor: Color(0xFF9327F0),
            avatars: [
              "assets/images/avatar.png",
              "assets/images/avatar2.png",
              "assets/images/avatar.png",
            ],
            illustration: "assets/images/(3).png",
          ),
        ],
      ),
    );
  }
}