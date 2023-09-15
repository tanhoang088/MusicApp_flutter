import 'package:flutter/material.dart';
import 'package:musicapp_flutter/home_page/home_page.dart';

class BottomBarMusic extends StatefulWidget {
  const BottomBarMusic({super.key});

  @override
  State<BottomBarMusic> createState() => _BottomBarMusicState();
}

class _BottomBarMusicState extends State<BottomBarMusic> {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: ListTile(
              leading: Image(
                image: AssetImage('assets/image/${listTrack.first}'),
              ),
              title: Text(
                listTitle.first,
                style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Colors.purple),
              ),
              subtitle: const Text(
                "Jazz",
                style: TextStyle(fontSize: 10),
              ),
            ),
          ),
          const SizedBox(
              width: 45,
              height: 35,
              child:
                  Icon(Icons.navigate_before, size: 35, color: Colors.purple)),
          const SizedBox(
              width: 45,
              height: 35,
              child: Icon(Icons.play_circle, size: 35, color: Colors.purple)),
          const SizedBox(
              width: 45,
              height: 35,
              child: Icon(Icons.navigate_next, size: 35, color: Colors.purple)),
        ],
      ),
    );
  }
}
