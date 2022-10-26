import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  const SliderPage({super.key});

  @override
  State<SliderPage> createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _currentValue = 1;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          Text(_currentValue.toString()),
          const SizedBox(
            height: 50,
          ),
          CupertinoSlider(
            value: _currentValue,
            min: 0,
            max: 10,
            divisions: 10,
            onChanged: (selectedValue) {
              setState(() {
                _currentValue = selectedValue;
              });
            },
          )
        ],
      ),
    );
  }
}
