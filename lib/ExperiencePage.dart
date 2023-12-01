import 'package:flutter/material.dart';

class ExperiencePage extends StatelessWidget {
  const ExperiencePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Experiences"),
      ),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ExperienceCard(
              organization: "HIMTI Binus Univeristy",
              position: "President Region Malang",
              period: "Feb 2022-Feb 2023",
              imgPath: "assets/images/experiences/Logo HIMTI - White.png",
            ),
            ExperienceCard(
              organization: "DTL Binus Malang",
              position: "Teaching Assistant",
              period: "Sep 2022-Jan 2023",
              imgPath: "assets/images/experiences/Logo Binus - White.png",
            ),
            ExperienceCard(
              organization: "FYP 2026",
              position: "Freshmen Leader",
              period: "Jul 2022-Sep 2022",
              imgPath: "assets/images/experiences/Logo Binus - White.png",
            ),
            ExperienceCard(
              organization: "FYP 2026",
              position: "Freshmen Partner",
              period: "Sep 2022-Sep 2023",
              imgPath: "assets/images/experiences/Logo Binus - White.png",
            ),
          ],
        ),
      ),
    );
  }
}

class ExperienceCard extends StatelessWidget {
  final String organization;
  final String position;
  final String period;
  final String imgPath;

  const ExperienceCard(
      {super.key,
      required this.organization,
      required this.position,
      required this.period,
      required this.imgPath});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(15)),
          color: Color.fromARGB(255, 123, 102, 255)),
      padding: EdgeInsets.all(30),
      child: Row(children: [
        Image.asset(
          this.imgPath,
          width: 80,
        ),
        SizedBox(
          width: 20,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              this.organization,
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.white),
            ),
            Text(
              this.position,
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Colors.white),
            ),
            Text(
              this.period,
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.italic,
                  color: Colors.white),
            )
          ],
        )
      ]),
    );
  }
}
