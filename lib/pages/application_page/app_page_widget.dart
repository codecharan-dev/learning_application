import 'package:flutter/material.dart';
import 'package:learning_app/pages/application_page/widgets/reusable_widgets.dart';
import 'package:learning_app/pages/home_page/home_page.dart';
import 'package:learning_app/pages/profile_page/proflie_page.dart';

Widget buildPage(int index) {
  List botNavBar = [
    const HomePage(),
    const Center(
      child: Text("search"),
    ),
    const Center(
      child: Text("Play Button"),
    ),
    const Center(
      child: Text("Chat"),
    ),
    const ProfliePage(),
  ];
  return botNavBar[index];
}

var botNavBarItems = [
  reusableBotNavBarItems(iconpath: "assets/icons/home.png", label: "Home"),
  reusableBotNavBarItems(iconpath: "assets/icons/search2.png", label: "Search"),
  reusableBotNavBarItems(iconpath: "assets/icons/play-circle1.png", label: "Course"),
  reusableBotNavBarItems(iconpath: "assets/icons/message-circle.png", label: "Chat"),
  reusableBotNavBarItems(iconpath: "assets/icons/person.png", label: "Profile"),
];
