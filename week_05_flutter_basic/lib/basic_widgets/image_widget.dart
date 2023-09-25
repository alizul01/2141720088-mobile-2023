import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return const Image(
      image: AssetImage('assets/logo.png'),
    );
  }
}
