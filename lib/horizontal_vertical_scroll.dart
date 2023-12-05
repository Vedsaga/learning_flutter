import 'dart:math';

import 'package:flutter/material.dart';

class HorizontalVerticalScroll extends StatefulWidget {
  const HorizontalVerticalScroll({super.key});

  @override
  State<HorizontalVerticalScroll> createState() =>
      _HorizontalVerticalScrollState();
}

class _HorizontalVerticalScrollState extends State<HorizontalVerticalScroll> {
  // randomaize color generator
  Color _randomColor() {
// Bits 24-31 are the alpha value.
// Bits 16-23 are the red value.
// Bits 8-15 are the green value.
// Bits 0-7 are the blue value.
    final randomInstance = Random();
    final opacity = randomInstance.nextDouble();
    final randomR = randomInstance.nextInt(255);
    final randomG = randomInstance.nextInt(255);
    final randomB = randomInstance.nextInt(255);

    return Color.fromRGBO(randomR, randomG, randomB, opacity);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Demo Learning',
          style: TextStyle(
            fontSize: 21,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ...List.generate(
                5,
                (index) => Padding(
                  padding: const EdgeInsets.only(bottom: 23),
                  child: ColoredBox(
                    color: _randomColor(),
                    child: const SizedBox(height: 89, width: 89),
                  ),
                ),
              ),
              SizedBox(
                height: 89,
                child: ListView.builder(
                    itemCount: 10,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (_, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 28),
                        child: ColoredBox(
                            color: _randomColor(),
                            child: const SizedBox(
                              height: 89,
                              width: 89,
                            )),
                      );
                    }),
              ),
              ...List.generate(
                  5,
                  (index) => Padding(
                      padding: const EdgeInsets.only(top: 23),
                      child: ColoredBox(
                        color: _randomColor(),
                        child: const SizedBox(height: 89, width: 89),
                      )))
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        onPressed: () {
          setState(() {});
        },
        child: const Icon(Icons.color_lens_outlined, color: Colors.white),
      ),
    );
  }
}
