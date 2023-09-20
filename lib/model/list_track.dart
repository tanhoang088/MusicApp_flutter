import 'package:flutter/material.dart';
import 'package:musicapp_flutter/home_page/home_page.dart';

class ListTrack extends StatefulWidget {
  const ListTrack({Key? key}) : super(key: key);

  @override
  State<ListTrack> createState() => _ListTrackState();
}

class _ListTrackState extends State<ListTrack> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ReorderableListView.builder(
        onReorder: (int oldIndex, int newIndex) {
          setState(() {
            if (oldIndex < newIndex) {
              newIndex -= 1;
            }
            final item = listTrack.removeAt(oldIndex);
            listTrack.insert(newIndex, item);
            final item2 = listTitle.removeAt(oldIndex);
            listTitle.insert(newIndex, item2);
            final item3 = listDuration.removeAt(oldIndex);
            listDuration.insert(newIndex, item3);
          });
        },
        itemCount: listTrack.length,
        scrollDirection: Axis.vertical,
        itemBuilder: (BuildContext context, int index) {
          return Column(key: ValueKey(index), children: [
            Row(
              children: [
                Expanded(
                  child: ListTile(
                    leading: Image(
                      image: AssetImage('assets/image/${listTrack[index]}'),
                    ),
                    title: Text(
                      listTitle[index],
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                    subtitle: const Text(
                      "Jazz",
                      style: TextStyle(fontSize: 10),
                    ),
                    trailing: Text(listDuration[index]),
                  ),
                ),
                const SizedBox(
                    width: 43, height: 15, child: Icon(Icons.more_horiz)),
                const SizedBox(
                    width: 43, height: 15, child: Icon(Icons.drag_handle)),
              ],
            ),
          ]);
        },
      ),
    );
  }
}
