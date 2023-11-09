import 'package:closet/widgets/home_text_widget.dart';
import 'package:flutter/material.dart';

class JhIconButton extends StatefulWidget {
  const JhIconButton({super.key});

  @override
  State<JhIconButton> createState() => _JhIconButtonState();
}

class _JhIconButtonState extends State<JhIconButton> {
  late List temp;

  int _counter = 0;

  @override
  void initState() {
    temp = [];

    super.initState();
  }

  @override
  void setState(VoidCallback fn) {
    if(mounted){ super.setState(fn); }
  }

  void _decrementCounter() {
    /// setState의 기능을 수행하지 못한다면 stateless나 stateful이나 똑같음!
    setState(() {
      _counter--;
    });
  }

  void _incrementCounter() {
    /// setState의 기능을 수행하지 못한다면 stateless나 stateful이나 똑같음!
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        jhTextWidget(),
        sleepJhTextWidget(_counter),
        IconButton(
            onPressed: _decrementCounter,
            icon: Icon(Icons.remove)
        ),
        Text(_counter.toString()),
        IconButton(
            onPressed: _incrementCounter,
            icon: Icon(Icons.add)
        )
      ],
    );
  }
}
