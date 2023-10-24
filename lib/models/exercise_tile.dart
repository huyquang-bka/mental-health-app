import 'package:flutter/material.dart';

class ExerciseTile extends StatelessWidget {
  final icon;
  final color;
  final String exerciseName;
  final int numExercise;
  const ExerciseTile({
    super.key,
    required this.icon,
    required this.color,
    required this.exerciseName,
    required this.numExercise,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(12),
        ),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Container(
                  padding: const EdgeInsets.all(16),
                  color: color,
                  child: Icon(
                    icon,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(width: 20),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //title
                      Text(
                        exerciseName,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 5),
                      //subtitle
                      Text("$numExercise exercises",
                          style: const TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                          )),
                    ],
                  ),
                ],
              ),
            ],
          ),
          //icon more horiz
          const Icon(Icons.more_horiz),
        ]),
      ),
    );
  }
}
