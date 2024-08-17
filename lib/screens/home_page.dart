import 'package:flutter/material.dart';
import 'package:toku/components/category_item.dart';
import 'package:toku/screens/colors_page.dart';
import 'package:toku/screens/family_page.dart';
import 'package:toku/screens/number_page.dart';
import 'package:toku/screens/phrases_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFF4D9),
      appBar: AppBar(
        title: const Text(
          'Toku',
          style: TextStyle(fontSize: 32.0, color: Colors.white),
        ),
        backgroundColor: const Color(0xff49332A),
      ),
      body: Column(
        children: [
          CategoryItem(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return NumbersPage();
              }));
            },
            text: 'Numbers',
            color: Color(0xFFF99531),
          ),
          CategoryItem(
            text: 'Family Members',
            color: Color(0xFF528032),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return FamilyMembers();
              }));
            },
          ),
          CategoryItem(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return ColorsPage();
                }));
              },
              text: 'Colors',
              color: Color(
                0xFF7D40A2,
              )),
          CategoryItem(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return PhrasesPage();
                },
              ));
            },
            text: 'Phrases',
            color: Color(0xFF47A5CB),
          ),
        ],
      ),
    );
  }
}
