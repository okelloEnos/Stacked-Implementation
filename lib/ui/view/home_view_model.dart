import 'package:stacked/stacked.dart';

class HomeViewModel extends BaseViewModel{

  String _title;
  int _counter = 0;

  String get title => _title;
  int get counter => _counter;

  void updateCounter(){
    _counter++;
    notifyListeners();
  }
}