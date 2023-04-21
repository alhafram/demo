import 'package:demo/illustrations/data_source.dart';
import 'package:demo/illustrations/view_models.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:ui' as ui show Image;

class HomeScreenProvider extends ChangeNotifier {
  final DataSource _dataSource = DataSource();

  int currentId = 0;

  bool isSelected(int id) => id == currentId;

  List<IllustrationViewModel> get viewModels {
    return _dataSource.viewModels;
  }

  int get count {
    return viewModels.length;
  }

  IllustrationViewModel get selectedViewModel {
    return viewModels[currentId];
  }

  void changeCurrentId(int newId) {
    currentId = newId % viewModels.length;
    notifyListeners();
  }
}

class IllustrationPieceProvider extends ChangeNotifier {
  double? aspectRatio;
  ui.Image? uiImage;

  Future<void> load(String fileName) async {
    var img = await rootBundle.load(fileName);
    var uiImage = await decodeImageFromList(img.buffer.asUint8List());
    this.uiImage = uiImage;
    aspectRatio = uiImage.width / uiImage.height;
  }
}
