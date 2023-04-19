import 'package:demo/illustrations/data_source.dart';
import 'package:demo/illustrations/view_models.dart';
import 'package:flutter/material.dart';

class HomeScreenProvider extends ChangeNotifier {
  final DataSource _dataSource = DataSource();

  int _currentId = 0;

  bool isSelected(int id) => id == _currentId;

  late IllustrationViewModel selectedViewModel;

  List<IllustrationViewModel> get viewModels {
    return _dataSource.viewModels;
  }

  int get count {
    return viewModels.length;
  }

  setup() {
    selectedViewModel = viewModels[0];
  }

  void changeCurrentId(int newId) {
    _currentId = newId % viewModels.length;
    selectedViewModel = viewModels[_currentId];
    notifyListeners();
  }
}
