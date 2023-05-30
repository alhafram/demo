import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:page_controller/asset_view_model.dart';
import 'package:page_controller/page_controller_delegate.dart';
import 'package:page_controller/swipeable_widget.dart';

// ignore: must_be_immutable
class HomeScreen extends StatelessWidget implements PageControllerDelegate {
  HomeScreen({super.key});

  late BuildContext _buildContext;

  @override
  Widget build(BuildContext context) {
    _buildContext = context;
    return HomeScreenSwipeableWidget();
  }

  @override
  void pageDidOpenDetailScreen(PageType pageType) {
    GoRouter.of(_buildContext).push('/details');
    print('Open details $pageType');
  }

  @override
  void pageDidOpened(PageType pageType) {
    print('Open page $pageType');
  }

  @override
  void pageDidTapMainButton(PageType pageType) {
    print('Tap main button $pageType');
  }
}
