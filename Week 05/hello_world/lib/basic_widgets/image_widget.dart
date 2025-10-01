import 'package:flutter/material.dart';

class MyImageWidget extends StatelessWidget {
  const MyImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Image(image: AssetImage("assets/logo_polinema.png"), width: 200, height: 200);
  }
}
