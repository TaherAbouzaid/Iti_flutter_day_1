import 'package:flutter/material.dart';
import 'package:task_managment/widgets/project_card.dart';

class ProjectsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        title: Text("TAYO'S Projects"),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Filter Buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround, 
              children: [
                FilterButton(
                  label: "All",
                  count: 17,
                  color: Colors.blue,
                  isSelected: true,
                ),
                FilterButton(
                  label: "To Do",
                  count: 5,
                  color: Colors.purple[300]!,
                  isSelected: true,
                ),
                FilterButton(
                  label: "In Progress",
                  count: 3,
                  color: Colors.yellow[700]!,
                  isSelected: true,
                ),
                FilterButton(
                  label: "Done",
                  count: 0,
                  color: Colors.grey[300]!,
                  isSelected: true,
                ),
              ],
            ),
            SizedBox(height: 16),
            // Projects List
            Expanded(
              child: ListView(
                children: [
                  ProjectCard(
                    title: "CREATE AD BANNER",
                    time: "2 hours ago",
                    avatars: [
                      "assets/images/avatar.png",
                      "assets/images/avatar2.png",
                    ],
                    dotColor: Colors.purple,
                  ),
                  ProjectCard(
                    title: "CREATE NEW BLOG POST",
                    time: "2 hours ago",
                    avatars: [
                      "assets/images/avatar.png",
                      "assets/images/avatar.png",
                      "assets/images/avatar.png",
                     
                  
                    ],
                    dotColor: Colors.yellow[700]!,
                  ),
                  ProjectCard(
                    title: "ONLINE COURSE",
                    time: "2 hours ago",
                    avatars: [
                      "assets/images/avatar.png",
                    ],
                    dotColor: Colors.blue[300]!,
                  ),
                  ProjectCard(
                    title: "COMPLETE PARTFOLIO",
                    time: "2 hours ago",
                    avatars: [
                      "assets/images/avatar.png",
                      "assets/images/avatar2.png",
                      "assets/images/avatar2.png",
                    ],
                    dotColor: Colors.grey[300]!,
                  ),
                  ProjectCard(
                    title: "PLAN FOR NEXT WEEK",
                    time: "2 hours ago",
                    avatars: [
                      "assets/images/avatar2.png",
                      "assets/images/avatar.png",
                    ],
                    dotColor: Colors.yellow[700]!,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


class FilterButton extends StatelessWidget {
  final String label;
  final int count;
  final Color color;
  final bool isSelected;

  FilterButton({
    required this.label,
    required this.count,
    required this.color,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: isSelected ? color : Colors.grey[200],
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
       
        children: [
          Text(
            label,
            style: TextStyle(
              color: isSelected ? Colors.white : Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(width: 4),
          Text(
            count.toString(),
            style: TextStyle(
              color: isSelected ? Colors.white : Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}

