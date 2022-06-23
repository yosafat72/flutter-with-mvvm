import 'package:flutter/material.dart';

class HomePlayingScreen extends StatefulWidget{
  const HomePlayingScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _HomePlayingScreen();

}

class _HomePlayingScreen extends State<HomePlayingScreen>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: 300,
        child: _listMovie(),
      )
    );
  }

  Widget _listMovie(){
    return ListView(
      scrollDirection: Axis.horizontal,
      children: [
        Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            children: [
              SizedBox(
                width: 165,
                height: 200,
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10)),
                  child: Image.asset("lib/res/images/movie_playing_01.jpg", fit: BoxFit.fill),
                ),
              ),
              Expanded(
                child: Container(
                  margin: const EdgeInsets.only(top: 10, left: 10, right: 10),
                  child: const Text("The Black Phone", style: TextStyle(fontWeight: FontWeight.bold), ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 10),
                child: SizedBox(
                  height: 35,
                  width: 75,
                  child: OutlinedButton(onPressed: (){}, child: const Text("Pesan")),
                ),
              )
            ],
          )
        ),
        Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                SizedBox(
                  width: 165,
                  height: 200,
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10)),
                    child: Image.asset("lib/res/images/movie_playing_02.jpg", fit: BoxFit.fill),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.only(top: 10, left: 10, right: 10),
                    child: const Text("Keluarga Cemara 2", style: TextStyle(fontWeight: FontWeight.bold), ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 10),
                  child: SizedBox(
                    height: 35,
                    width: 75,
                    child: OutlinedButton(onPressed: (){}, child: const Text("Pesan")),
                  ),
                )
              ],
            )
        ),
        Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                SizedBox(
                  width: 165,
                  height: 200,
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10)),
                    child: Image.asset("lib/res/images/movie_playing_03.jpg", fit: BoxFit.fill),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.only(top: 10, left: 10, right: 10),
                    child: const Text("See For Me", style: TextStyle(fontWeight: FontWeight.bold), ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 10),
                  child: SizedBox(
                    height: 35,
                    width: 75,
                    child: OutlinedButton(onPressed: (){}, child: const Text("Pesan")),
                  ),
                )
              ],
            )
        ),
        Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                SizedBox(
                  width: 165,
                  height: 200,
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10)),
                    child: Image.asset("lib/res/images/movie_playing_04.jpg", fit: BoxFit.fill),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.only(top: 10, left: 10, right: 10),
                    child: const Text("Satria Dewa : Gatotkaca", style: TextStyle(fontWeight: FontWeight.bold), ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 10),
                  child: SizedBox(
                    height: 35,
                    width: 75,
                    child: OutlinedButton(onPressed: (){}, child: const Text("Pesan")),
                  ),
                )
              ],
            )
        ),
        Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                SizedBox(
                  width: 165,
                  height: 200,
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10)),
                    child: Image.asset("lib/res/images/movie_playing_06.jpg", fit: BoxFit.fill),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.only(top: 10, left: 10, right: 10),
                    child: const Text("Jurassic World Dominion", style: TextStyle(fontWeight: FontWeight.bold), ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 10),
                  child: SizedBox(
                    height: 35,
                    width: 75,
                    child: OutlinedButton(onPressed: (){}, child: const Text("Pesan")),
                  ),
                )
              ],
            )
        ),
      ],
    );
  }

}