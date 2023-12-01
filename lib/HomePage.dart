import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Profile"),
      ),
      body: Padding(
        padding: EdgeInsets.all(15.0),
        child: Center(
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(50.0)),
                    image: DecorationImage(
                        image: AssetImage("assets/images/Hanley.jpg"),
                        fit: BoxFit.cover),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 0,
                          blurRadius: 5,
                          offset: Offset(0, 3))
                    ]),
                width: 200,
                height: 200,
              ),
              SizedBox(
                height: 25,
              ),
              Text(
                "Hanley Yunanda Saputra",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(
                "hanley.saputra@binus.ac.id",
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.normal),
              ),
              SizedBox(
                height: 25,
              ),
              DoB_section(),
              SizedBox(
                height: 30,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, "/skill");
                },
                child: ElevatedCard(
                    title: "My Skills",
                    imgPath: "assets/images/homepage/creative-thinking.png"),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, "/experience");
                },
                child: ElevatedCard(
                    title: "My Experiences",
                    imgPath: "assets/images/homepage/quality.png"),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, "/hobby");
                },
                child: ElevatedCard(
                    title: "My Hobbies",
                    imgPath: "assets/images/homepage/hobbies.png"),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class DoB_section extends StatelessWidget {
  const DoB_section({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      // DOB Section
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          width: 90,
          height: 100,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              color: Color.fromARGB(255, 123, 102, 255)),
          child: Column(
            children: [
              Text(
                "25",
                style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "Date",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                    color: Colors.white),
              )
            ],
            mainAxisAlignment: MainAxisAlignment.center,
          ),
        ),
        Container(
          width: 90,
          height: 100,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              color: Color.fromARGB(255, 123, 102, 255)),
          child: Column(
            children: [
              Text(
                "June",
                style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "Month",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                    color: Colors.white),
              )
            ],
            mainAxisAlignment: MainAxisAlignment.center,
          ),
        ),
        Container(
          width: 90,
          height: 100,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              color: Color.fromARGB(255, 123, 102, 255)),
          child: Column(
            children: [
              Text(
                "2003",
                style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "Year",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                    color: Colors.white),
              )
            ],
            mainAxisAlignment: MainAxisAlignment.center,
          ),
        )
      ],
    );
  }
}

class ElevatedCard extends StatelessWidget {
  final String title;
  final String imgPath;

  const ElevatedCard({super.key, required this.title, required this.imgPath});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        color: Colors.white,
        child: SizedBox(
          width: 350,
          height: 80,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: 40,
                height: 40,
                child: Image.asset(this.imgPath),
              ),
              Container(
                child: Text(
                  this.title,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              Icon(Icons.arrow_forward)
            ],
          ),
        ),
      ),
    );
  }
}
