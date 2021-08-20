import 'package:flutter/material.dart';
import 'package:flutter_mvvm/ui/view/home_view_model.dart';
import 'package:stacked/stacked.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
        builder: (context, model, child) => Scaffold(
          body: Center(child: Text('${model.title} :: ${model.counter}')),
          floatingActionButton: FloatingActionButton(
            onPressed: model.updateCounter,
            child: Icon(Icons.add),
          ),
        ), viewModelBuilder: () => HomeViewModel());
  }
}
