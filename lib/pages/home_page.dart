import 'package:flutter/material.dart';
import 'package:mental_health_app/models/exercise_tile.dart';
import 'package:mental_health_app/models/feeling_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final DateTime dateTimeToday = DateTime.now();
  final List listFeelingCard = [
    {
      'icon': Icons.sentiment_very_satisfied,
      'text': 'Very Good',
    },
    {
      'icon': Icons.sentiment_satisfied,
      'text': 'Good',
    },
    {
      'icon': Icons.sentiment_neutral,
      'text': 'Neutral',
    },
    {
      'icon': Icons.sentiment_dissatisfied,
      'text': 'Bad',
    },
    {
      'icon': Icons.sentiment_very_dissatisfied,
      'text': 'Very Bad',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[800],
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
      ]),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                children: [
                  //greeting
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          //Hi Quang
                          const Text(
                            'Hi, Quang!',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          //Get date time today and display in Text
                          Text(
                            '${dateTimeToday.day}/${dateTimeToday.month}/${dateTimeToday.year}',
                            style: TextStyle(
                              color: Colors.white.withOpacity(0.5),
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                      //notification
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.blue[600],
                            borderRadius:
                                const BorderRadius.all(Radius.circular(12)),
                          ),
                          padding: const EdgeInsets.all(12.0),
                          child: const Icon(
                            Icons.notifications,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                  //Search bar
                  Padding(
                    padding: const EdgeInsets.only(top: 25.0, bottom: 25.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.blue[600],
                        borderRadius:
                            const BorderRadius.all(Radius.circular(12)),
                      ),
                      padding: const EdgeInsets.all(12.0),
                      child: const Row(
                        children: [
                          //search icon
                          Icon(
                            Icons.search,
                            color: Colors.white,
                          ),
                          SizedBox(width: 8),
                          //search text
                          Text(
                            "Search",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  //How do you feel today?
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //how do you feel today?
                      Text("How do you feel today?",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          )),
                      //icon
                      Icon(
                        Icons.more_horiz,
                        color: Colors.white,
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),
                  //ListView Feeling card
                  SizedBox(
                    height: 100,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: listFeelingCard.length,
                      itemBuilder: (context, index) {
                        return FeelingCard(
                          feelingIcon: listFeelingCard[index]['icon'],
                          text: listFeelingCard[index]['text'],
                        );
                      },
                    ),
                  ),
                  //
                ],
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(25),
                color: Colors.white,
                child: Center(
                  child: Column(
                    children: [
                      //exercises header
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Exercises",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Icon(Icons.more_horiz),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      //exercises list
                      Expanded(
                        child: ListView(
                          children: const [
                            ExerciseTile(
                              color: Colors.orange,
                              icon: Icons.favorite,
                              exerciseName: "Speaking Skills",
                              numExercise: 16,
                            ),
                            ExerciseTile(
                              color: Colors.blue,
                              icon: Icons.person,
                              exerciseName: "Reading Skills",
                              numExercise: 10,
                            ),
                            ExerciseTile(
                              color: Colors.green,
                              icon: Icons.star,
                              exerciseName: "Writing Skills",
                              numExercise: 8,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
