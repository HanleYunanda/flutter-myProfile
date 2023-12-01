import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SkillPage extends StatelessWidget {
  const SkillPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Skills"),
      ),
      body: Padding(
          padding: EdgeInsets.all(15.0),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: Color.fromARGB(255, 123, 102, 255)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 80,
                          height: 80,
                          child: CircleAvatar(
                            backgroundImage:
                                AssetImage("assets/images/Hanley.jpg"),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Hanley Yunanda Saputra",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500),
                            ),
                            Text(
                              "FullStack Developer",
                              style:
                                  TextStyle(fontSize: 14, color: Colors.white),
                            )
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        MainSkill(
                            title: "Frontend",
                            imgPath: "assets/images/main_skills/ui-design.png"),
                        MainSkill(
                            title: "Backend",
                            imgPath: "assets/images/main_skills/backend.png"),
                        MainSkill(
                            title: "MobileApp",
                            imgPath:
                                "assets/images/main_skills/smartphone.png"),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedCard(
                  title: "Bootstrap",
                  imgPath: "assets/images/detail_skills/bootstrap-5-1.svg",
                  percentage: 0.94),
              SizedBox(
                height: 15,
              ),
              ElevatedCard(
                  title: "Laravel",
                  imgPath: "assets/images/detail_skills/laravel-2.svg",
                  percentage: 0.88),
              SizedBox(
                height: 15,
              ),
              ElevatedCard(
                  title: "Vue JS",
                  imgPath: "assets/images/detail_skills/vue-9.svg",
                  percentage: 0.83),
              SizedBox(
                height: 15,
              ),
              ElevatedCard(
                  title: "Flutter",
                  imgPath: "assets/images/detail_skills/flutter.svg",
                  percentage: 0.75),
            ],
          )),
    );
  }
}

class MainSkill extends StatelessWidget {
  final String title;
  final String imgPath;

  const MainSkill({super.key, required this.title, required this.imgPath});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: Column(
        children: [
          Image.asset(
            this.imgPath,
            width: 40,
            height: 40,
          ),
          Text(
            this.title,
            style: TextStyle(fontSize: 12),
          ),
          Text(
            "Development",
            style: TextStyle(fontSize: 12),
          )
        ],
      ),
    );
  }
}

class ElevatedCard extends StatelessWidget {
  final String title;
  final String imgPath;
  final double percentage;

  const ElevatedCard(
      {super.key,
      required this.title,
      required this.imgPath,
      required this.percentage});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        color: Colors.white,
        child: Container(
          width: 350,
          height: 80,
          padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
          child: Row(
            children: [
              Container(
                width: 40,
                height: 40,
                child: SvgPicture.asset(this.imgPath),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    this.title,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  LinearPercentIndicator(
                    width: 250,
                    lineHeight: 14.0,
                    percent: this.percentage,
                    backgroundColor: Color.fromARGB(255, 240, 240, 240),
                    progressColor: Color.fromARGB(255, 123, 102, 255),
                    animation: true,
                    animationDuration: 2500,
                  )
                ],
              )),
            ],
          ),
        ),
      ),
    );
  }
}
