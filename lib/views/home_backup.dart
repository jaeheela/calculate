import 'package:closet/widgets/home_icon_button.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late List temp;

  int _counter = 0;

  final _counter2 = 0;

  @override
  void initState() {
    temp = [];

    super.initState();
  }

  @override
  void setState(VoidCallback fn) {
    if(mounted){ super.setState(fn); }
  }

  void _incrementCounter() {
    // _counter++;
    /// setState의 기능을 수행하지 못한다면 stateless나 stateful이나 똑같음!
    setState(() {
      _counter++;
    });
  }

  void testFunc(){
    List lst = [];
    List<String> lst2 = [];
    Map m = {};
    Map<String, dynamic> m2 = {};

    for(int i=0; i<10; i++){

    }
    print("HERE!?!?!adsd");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(child: testWidget()),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }

  Widget testWidget(){
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        const Text(
          'You have pushed the button this many times:',
        ),
        Text(
          '$_counter',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        Container(
          child: Text("야!!"),
        ),
        Container(
          height: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("야!!"),
              Text("야!!"),
              Text("야!!"),
              Text("야!!"),
              TextButton(
                //onPressed: testFunc,
                // onPressed: () => testFunc,
                // onPressed: () => testFunc(),
                  onPressed: () { print("천재"); },
                  // onLongPress: () {
                  //   print("길게 누르지마라^^");
                  // },
                  onHover: (e) {

                    print("뭔데? $e");
                  },
                  child: Text("헤헤")
              ),
              Expanded(child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("야!!"),
                  Text("야!!"),
                  Text("야!!"),
                  Text("야!!"),
                ],
              ))
            ],
          ),
        ),
      ],
    );
  }
}
