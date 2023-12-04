import 'package:flutter/material.dart';
import 'package:learning_flutter/horizontal_vertical_scroll.dart';

void main() {
  // run flutter app
  runApp(const LayerDesign());
}

class LayerDesign extends StatelessWidget {
  const LayerDesign({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: HorizontalVerticalScroll());
  }
}
