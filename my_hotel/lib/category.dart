

import 'package:flutter/material.dart';

class Categorey extends StatelessWidget {
  final IconData icon;
  final String title;
  final Color backgroundColor;
  const Categorey({super.key, required this.icon, required this.title, required this.backgroundColor});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {

      },
      child: Container(
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: const BorderRadius.all(Radius.circular(5.0)),
        ),
        margin: const EdgeInsets.symmetric(vertical: 10),
        //padding: const EdgeInsets.all(10.0),
        width: 100,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: Colors.white,
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              title,
              style: const TextStyle(
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}