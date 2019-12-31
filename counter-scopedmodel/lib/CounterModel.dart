import 'package:flutter/cupertino.dart';
import 'package:scoped_model/scoped_model.dart';

class CounterModel extends Model {
  int _counter = 0;
  int get counter => _counter;

  static CounterModel of(BuildContext context) =>
      ScopedModel.of<CounterModel>(context);

  void increment() {
    _counter++;
    notifyListeners();
  }

  void decrement() {
    _counter--;
    notifyListeners();
  }
}