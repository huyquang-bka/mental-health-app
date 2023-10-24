import 'package:flutter/material.dart';

class FeelingCard extends StatelessWidget {
  final feelingIcon;
  final String text;
  const FeelingCard({
    super.key,
    required this.feelingIcon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 12),
      child: Column(
        children: [
          Container(
            height: 70,
            width: 70,
            decoration: BoxDecoration(
              color: Colors.blue[600],
              borderRadius: const BorderRadius.all(Radius.circular(12)),
            ),
            padding: const EdgeInsets.all(12),
            //feeling
            child: Icon(
              feelingIcon,
              color: Colors.yellow,
              size: 40,
            ),
          ),
          const SizedBox(height: 10),
          Text(text,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 12,
              )),
        ],
      ),
    );
  }
}
