import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';


class BlueTextWidget extends StatelessWidget {
  final String text;
  const BlueTextWidget({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AutoSizeText(
      text,
      style: const TextStyle(color: Colors.blue, fontSize: 14),
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
    );
  }
}