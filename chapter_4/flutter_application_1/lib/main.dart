import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

void main() => runApp(CounterApp());

// 4-2-2 Scoped Model
class CounterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => ScopedModel<CounterModel>(
        model: CounterModel(),
        child: Column(
          children: [
            ScopedModelDescendant<CounterModel>(
                builder: (context, child, model) => Text('${model.counter}')),
            ScopedModelDescendant<CounterModel>(
                builder: (context, child, model) => ElevatedButton(
                      onPressed: model.increment,
                      child: const Text('Plus Button'),
                    )),
          ],
        ),
      );
}

class CounterModel extends Model {
  int _counter = 0;
  int get counter => _counter;

  void increment() {
    _counter++;
    notifyListeners();
  }
}
