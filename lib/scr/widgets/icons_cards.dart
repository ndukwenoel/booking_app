import 'package:flutter/material.dart';

class IconCard extends StatelessWidget {

   final IconData iconData;
   final String text;

  const IconCard({required this.iconData, required this.text});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                color: Colors.pink[50],
                borderRadius: BorderRadius.circular(10)),
            child: IconButton(onPressed:(){},
                icon: Icon(iconData, size: 30, color: Colors.pink[400],)),),
          Text(text, style: const TextStyle(fontSize: 10),)
        ],
      ),
    );
  }
}
