import 'package:counter/CounterModel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

class CounterApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return ScopedModel<CounterModel>(
        model: CounterModel(),
        child: Row(children: [
          Expanded(
            child: ScopedModelDescendant<CounterModel>(
              builder: (context, child, model) => Text('${model.counter}', textAlign: TextAlign.center,),
            ),
            flex: 8,
          ),
          Expanded(
            child: ScopedModelDescendant<CounterModel>(
              builder: (context, child, model) => RaisedButton(
                onPressed: model.increment,
                child: Text('+'),
              ),
            ),
            flex: 1,
          ),
          Expanded(
            child: ScopedModelDescendant<CounterModel>(
              builder: (context, child, model) => RaisedButton(
                onPressed: model.decrement,
                child: Text('-'),
              ),
            ),
            flex: 1,
          ),
        ])
    );
  }
}
