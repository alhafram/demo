import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:page_controller/components/data_source.dart';
import 'package:page_controller/components/view_models.dart';
import 'package:page_controller/swipeable_widget.dart';

class HomeScreen extends StatelessWidget implements DataSourceDelegate {
  HomeScreen({super.key});

  late BuildContext _buildContext;

  @override
  Widget build(BuildContext context) {
    _buildContext = context;
    return HomeScreenSwipeableWidget();
  }

  @override
  void pageDidOpenDetailScreen(Type pageType) {
    GoRouter.of(_buildContext).push('/details');
    print('Open details $pageType');
  }

  @override
  void pageDidOpened(Type pageType) {
    print('Open page $pageType');
  }

  @override
  void pageDidTapMainButton(Type pageType) {
    print('Tap main button $pageType');
  }
}
