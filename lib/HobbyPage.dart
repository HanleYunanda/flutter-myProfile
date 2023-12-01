import 'package:flutter/material.dart';

class HobbyPage extends StatelessWidget {
  const HobbyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Hobbies"),
      ),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 0,
                        blurRadius: 5,
                        offset: Offset(0, 3))
                  ]),
              child: CircleAvatar(
                  backgroundImage: AssetImage("assets/images/Hanley.jpg")),
            ),
            SizedBox(
              height: 45,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SkillCard(
                  title: "Coding",
                  imgPath: "assets/images/hobbies/code.png",
                ),
                SkillCard(
                  title: "Movie",
                  imgPath: "assets/images/hobbies/movie-clapper-open.png",
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SkillCard(
                  title: "Music",
                  imgPath: "assets/images/hobbies/music-note.png",
                ),
                SkillCard(
                  title: "Game",
                  imgPath: "assets/images/hobbies/console.png",
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class SkillCard extends StatelessWidget {
  final String title;
  final String imgPath;

  const SkillCard({super.key, required this.title, required this.imgPath});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Color.fromARGB(255, 123, 102, 255)),
      padding: EdgeInsets.all(25),
      child: Column(
        children: [
          Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(50)),
                color: Colors.white),
            padding: EdgeInsets.all(15),
            child: Image.asset(this.imgPath),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            this.title,
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.w500),
          )
        ],
      ),
    );
  }
}
