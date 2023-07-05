import 'package:flutter/material.dart';
import 'image_switcher.dart';

class ContainerDecoration extends StatelessWidget {
  const ContainerDecoration({super.key});



  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 244, 126, 126),
            Colors.red,
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: ImageSwitcher(),
    );
  }
}
