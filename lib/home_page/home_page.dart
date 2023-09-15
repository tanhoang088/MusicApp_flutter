import 'package:flutter/material.dart';
import 'package:musicapp_flutter/model/bottom_bar.dart';
import 'package:musicapp_flutter/model/list_track.dart';
import 'package:musicapp_flutter/player_page/player_page1.dart';

const List<String> listImage = <String>[
  'Album.png',
  'Album2.png',
  'Album.png',
  'Album2.png',
  'Album.png'
];
const List<Color> listColor = <Color>[
  Colors.amber,
  Colors.orange,
  Colors.red,
  Colors.orange,
  Colors.red
];
const List<String> listTrack = <String>[
  'Music1.png',
  'Music2.png',
  'Music3.png',
  'Music1.png',
  'Music2.png',
  'Music3.png',
  'Music1.png',
  'Music2.png',
  'Music3.png'
];
const List<String> listTitle = <String>[
  'The Last beat',
  'See you again',
  'You are my sunshine',
  'The Last beat',
  'See you again',
  'You are my sunshine',
  'The Last beat',
  'See you again',
  'You are my sunshine'
];
const List<String> listDuration = <String>[
  '3:30',
  '3:45',
  '5:00',
  '3:30',
  '3:45',
  '5:00',
  '3:30',
  '3:45',
  '5:00'
];

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: Text("Music Player"),
            centerTitle: true,
            titleTextStyle: const TextStyle(
                fontWeight: FontWeight.bold, color: Colors.black, fontSize: 25),
            actions: <Widget>[
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.search,
                    color: Colors.black,
                  ))
            ],
          ),
          drawer: Drawer(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                const DrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.blue,
                  ),
                  child: Text(
                    'Music App',
                    style: TextStyle(fontSize: 50, color: Colors.yellow),
                  ),
                ),
                ListTile(
                  leading: const Icon(Icons.album),
                  title: const Text('Albums'),
                  onTap: () {},
                ),
              ],
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.all(10),
            child: SizedBox(
              width: double.infinity,
              height: double.infinity,
              child: Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Top Album",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 250,
                      child: ListView.builder(
                        itemCount: listImage.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (BuildContext context, int index) {
                          return Stack(children: [
                            Container(
                              width: 150,
                              height: 25,
                              decoration: BoxDecoration(boxShadow: [
                                BoxShadow(
                                  color: listColor[index],
                                  spreadRadius: 2,
                                  blurRadius: 20,
                                  offset: const Offset(20, 200),
                                )
                              ]),
                            ),
                            Card(
                              child: InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              (const PlayerPage())));
                                },
                                child: Container(
                                  width: 170,
                                  height: 180,
                                  margin: const EdgeInsets.only(right: 10),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    image: DecorationImage(
                                        image: AssetImage(
                                            'assets/image/${listImage[index]}'),
                                        fit: BoxFit.cover),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              top: 130,
                              left: 0,
                              right: 0,
                              bottom: 0,
                              child: Container(
                                height: double.infinity,
                                width: double.infinity,
                                decoration: const BoxDecoration(
                                  color: Color.fromRGBO(255, 255, 255, 0.65),
                                ),
                                child: const ListTile(
                                  title: Text(
                                    "Hip Hop",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black),
                                  ),
                                  subtitle: Text("ABHIFLIX",
                                      style: TextStyle(
                                          fontSize: 15, color: Colors.black)),
                                ),
                              ),
                            ),
                          ]);
                        },
                      ),
                    ),
                    const Text(
                      "Recommended",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 360, child: ListTrack()),
                  ],
                ),
              ),
            ),
          ),
          bottomNavigationBar: const BottomBarMusic()),
    );
  }
}
