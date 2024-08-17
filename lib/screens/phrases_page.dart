import 'package:flutter/material.dart';
import 'package:toku/components/items_info.dart';
import 'package:toku/models/itemsModel.dart';

class PhrasesPage extends StatelessWidget {
  const PhrasesPage({Key? key}) : super(key: key);
  final List<ItemsModel> colors = const [
    ItemsModel(
        sound: 'sounds/phrases/are_you_coming.wav',
        jpName: 'Kimasu ka',
        enName: 'are you coming'),
    ItemsModel(
        sound: 'sounds/phrases/dont_forget_to_subscribe.wav',
        jpName: 'Kōdoku o wasurenaide kudasai',
        enName: 'dont forgetto subscribe'),
    ItemsModel(
        sound: 'sounds/phrases/how_are_you_feeling.wav',
        jpName: 'Go kibun wa ikagadesu ka',
        enName: 'how are you feeling'),
    ItemsModel(
        sound: 'sounds/phrases/i_love_anime.wav',
        jpName: 'Watashi wa anime ga daisukidesu',
        enName: 'i love anime'),
    ItemsModel(
        sound: 'sounds/phrases/i_love_programming.wav',
        jpName: 'Watashi wa anime ga daisukidesu',
        enName: 'i love programming'),
    ItemsModel(
        sound: 'sounds/phrases/what_is_your_name.wav',
        jpName: 'Anata no namae wa nandesuka',
        enName: 'what is your name'),
    ItemsModel(
        sound: 'sounds/phrases/are_you_coming.wav',
        jpName: 'Shiro',
        enName: 'white'),
    ItemsModel(
        sound: 'sounds/phrases/where_are_you_going.wav',
        jpName: 'Kiiro',
        enName: 'Doko ni iku no'),
    ItemsModel(
        sound: 'sounds/phrases/yes_im_coming.wav',
        jpName: 'Hai ikimasu',
        enName: 'yes im coming'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: const Color(0xff49332A),
        title: const Text(
          'Phrases',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView.builder(
        itemCount: colors.length,
        itemBuilder: (context, num) {
          return ItemsInfo(
              containerColor: Color(0xff47A5CB), item: colors[num]);
        },
      ),
    );
  }
}
