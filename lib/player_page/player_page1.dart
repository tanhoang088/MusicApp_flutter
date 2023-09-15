import 'package:flutter/material.dart';
import 'package:musicapp_flutter/home_page/home_page.dart';
import 'package:musicapp_flutter/model/audio_waveform.dart';
import 'package:musicapp_flutter/model/bottom_bar.dart';
import 'package:musicapp_flutter/model/list_track.dart';

class PlayerPage extends StatefulWidget {
  const PlayerPage({super.key});

  @override
  State<PlayerPage> createState() => _PlayerPageState();
}

class _PlayerPageState extends State<PlayerPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Music Player"),
          centerTitle: true,
          titleTextStyle: TextStyle(
              fontWeight: FontWeight.bold, color: Colors.black, fontSize: 25),
          actions: <Widget>[
            IconButton(
                onPressed: () {},
                icon: Icon(
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
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  width: double.infinity,
                  height: 250,
                  decoration: const BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(150),
                      bottomRight: Radius.circular(150),
                    ),
                  ),
                  child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Wrap(children: [
                        Container(
                            width: 200,
                            height: 200,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                image: DecorationImage(
                                    image: AssetImage(
                                        'assets/image/${listImage.first}'),
                                    fit: BoxFit.cover),
                                boxShadow: [
                                  BoxShadow(
                                      color: listColor.first,
                                      blurRadius: 20,
                                      offset: Offset(1, 10))
                                ]))
                      ]))),
              const ListTile(
                title: Center(
                  child: Text(
                    "Hip Hop",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ),
                subtitle: Center(
                  child: Text("ABHIFLIX",
                      style: TextStyle(fontSize: 12, color: Colors.black)),
                ),
              ),
              const AudioWaveform(),
              const Text(
                "Recommended",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 190, child: ListTrack()),
            ],
          ),
        ),
        bottomNavigationBar: BottomBarMusic(),
      ),
    );
  }
}
