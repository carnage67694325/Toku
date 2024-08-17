import 'package:flutter/material.dart';
import 'package:toku/models/itemsModel.dart';
import 'package:audioplayers/audioplayers.dart';

class ItemsInfo extends StatelessWidget {
  ItemsInfo({Key? key, required this.item, required this.containerColor})
      : super(key: key);
  final ItemsModel item;
  final Color containerColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: containerColor,
      height: 100,
      child: Row(
        children: [
          if (item.image != null)
            Container(
              color: const Color(0xFFFFF4D9),
              child: Image.asset(item.image!),
            ),
          SizedBox(width: 16.0), // Add some space between the image and text
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(
                  right: 16.0), // Ensure some space on the right
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment:
                    CrossAxisAlignment.start, // Align text to the start
                children: [
                  Text(
                    item.jpName,
                    style: const TextStyle(color: Colors.white, fontSize: 24),
                  ),
                  Text(
                    item.enName,
                    style: const TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ],
              ),
            ),
          ),
          IconButton(
            splashColor: Colors.white,
            onPressed: () {
              item.playSound();
            },
            icon: Icon(
              Icons.play_arrow,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
