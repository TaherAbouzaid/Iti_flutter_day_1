import 'package:flutter/material.dart';
import '../widgets/header.dart';
import '../widgets/task_banner.dart';
import '../widgets/section_title.dart';
import '../widgets/todo_item.dart';
import '../widgets/progress_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: ListView(
            children: [
              const SizedBox(height: 20),
              const Header(),
              const SizedBox(height: 20),
              const TaskBanner(),
              const SizedBox(height: 25),
              const SectionTitle(title: "To Do", count: 3),
              const SizedBox(height: 15),
              _buildTodoList(),
              const SizedBox(height: 25),
              const SectionTitle(title: "In progress", count: 3),
              const SizedBox(height: 15),
              _buildInProgressList(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTodoList() {
    return SizedBox(
      height: 160,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          TodoItem(
            title: "Redesign Homescreen",
            tag: "Project",
            date: DateTime(2025, 4, 25),
          ),
          TodoItem(
            title: "Ux Reserch Sample",
            tag: "Practise",
            date: DateTime(2025, 7, 17),
          ),
          TodoItem(
            title: "Blog Post Design",
            tag: "Duplicate",
            date: DateTime(2025, 10, 21),
          ),
        ],
      ),
    );
  }

  Widget _buildInProgressList() {
    return Column(
      children: [
        ProgressCard(
          tag: "Tommy max’s Project",
          title: "Create Ad Banner",
          time: "2 hours ago",
          progress: 0.7,
        ),
        const SizedBox(height: 15),
        ProgressCard(
          tag: "Personal Work",
          title: "Create New Blog Post",
          time: "2 Days ago",
          progress: 0.45,
        ),
      ],
    );
  }
}