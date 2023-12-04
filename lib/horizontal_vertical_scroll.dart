import 'package:flutter/material.dart';

class HorizontalVerticalScroll extends StatelessWidget {
  const HorizontalVerticalScroll({super.key});

  Color _getColumnColor1(int index) {
    switch (index) {
      case 0:
        return Colors.orange;
      case 1:
        return Colors.red;
      case 2:
        return Colors.lightBlue;

      default:
        return Colors.black;
    }
  }

  Color _getColumnColor2(int index) {
    switch (index) {
      case 0:
        return Colors.black;
      case 1:
        return Colors.purple;
      default:
        return Colors.black;
    }
  }

  Color _getRowColor(int index) {
    switch (index) {
      case 0:
        return Colors.lightGreen;
      case 1:
        return Colors.grey;
      case 2:
        return Colors.lightGreen;
      default:
        return Colors.lightGreen;
    }
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
                      color: _getColumnColor1(index),
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
                              color: _getRowColor(index),
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
                          color: _getColumnColor2(index),
                          child: const SizedBox(height: 89, width: 89),
                        )))
              ],
            ),
          ),
        ));
  }
}
