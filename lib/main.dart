import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  SizedBox(height: 60),
                  Image.asset("assets/images/pro-headshot-leke.jpg"),
                  SizedBox(height: 10),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white70,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.grey, width: .9),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          SizedBox(height: 30),
                          PersonalInformationCard(
                            title: "Name",
                            value: "Oluleke Odunuga",
                          ),
                          SizedBox(height: 10),
                          PersonalInformationCard(
                            title: "About",
                            value:
                                "An innovative and results driven solutions developer with experience designing creative business solutions.",
                          ),
                          SizedBox(height: 10),
                          PersonalInformationCard(
                            title: "Skills",
                            value:
                                "Languages: .NET(C#,VB,Asp.net,web form,MVC),Dart(Flutter),Good team player.",
                          ),
                          SizedBox(height: 10),
                          PersonalInformationCard(
                            title: "Phone Number",
                            value: "+2348 0647 0978",
                          ),
                          SizedBox(height: 10),
                          PersonalInformationCard(
                            title: "Location",
                            value: "Lagos, Nigeria",
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class PersonalInformationCard extends StatelessWidget {
  final String title;
  final String value;

  const PersonalInformationCard({
    super.key,
    required this.title,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.white24),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(
                  title,
                  style: TextStyle(color: Colors.black87, fontSize: 16),
                ),
              ),
              Expanded(
                child: Text(
                  value,
                  style: TextStyle(
                    color: Colors.purple,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          Divider(height: 20, color: Colors.black45, thickness: .27),
        ],
      ),
    );
  }
}
