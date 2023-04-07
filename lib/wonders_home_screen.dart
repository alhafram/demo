import 'package:demo/colors.dart';
import 'package:demo/wonder_illustrations/animated_clouds.dart';
import 'package:demo/wonder_illustrations/illustrations/base_illustration.dart';
import 'package:demo/wonder_illustrations/wonder_illustration.dart';
import 'package:demo/wonder_illustrations/wonder_illustration_config.dart';
import 'package:demo/wonder_illustrations/sessions_data_source.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:get_it_mixin/get_it_mixin.dart';
import 'wonder_illustrations/illustrations/wonder_type.dart';

class HomeScreen extends StatefulWidget with GetItStatefulWidgetMixin {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late final PageController _pageController;
  SessionDataSource dataSource = SessionDataSource();

  List<SessionType> get _wonders => dataSource.all;

  late int _wonderIndex = 0;
  int get _numWonders => _wonders.length;
  bool _fadeInOnNextBuild = false;

  final _fadeAnims = <AnimationController>[];

  SessionType get currentSessionType => _wonders[_wonderIndex];

  bool _isSelected(SessionType t) => t == currentSessionType;

  @override
  void initState() {
    super.initState();
    final initialPage = _numWonders * 9999;
    _pageController =
        PageController(viewportFraction: 1, initialPage: initialPage);
    _wonderIndex = initialPage % _numWonders;
  }

  void _handlePageChanged(value) {
    setState(() {
      _wonderIndex = value % _numWonders;
    });
  }

  void _handleFadeAnimInit(AnimationController controller) {
    _fadeAnims.add(controller);
    controller.value = 1;
  }

  void _startDelayedFgFade() async {
    try {
      for (var a in _fadeAnims) {
        a.value = 0;
      }
      await Future.delayed(300.ms);
      for (var a in _fadeAnims) {
        a.forward();
      }
    } on Exception catch (e) {
      debugPrint(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    if (_fadeInOnNextBuild == true) {
      _startDelayedFgFade();
      _fadeInOnNextBuild = false;
    }
    return Container(
        color: AppColors().black,
        child: Stack(children: [
          Stack(children: [
            ..._buildBgAndClouds(),
            _buildMgPageView(),
            _buildFgAndGradients()
          ]).animate().fadeIn()
        ]));
  }

  Widget _buildMgPageView() {
    return ExcludeSemantics(
        child: PageView.builder(
            controller: _pageController,
            onPageChanged: _handlePageChanged,
            itemBuilder: (_, index) {
              final wonder = _wonders[index % _wonders.length];
              final wonderType = wonder;
              bool isShowing = _isSelected(wonderType);
              final config = WonderIllustrationConfig.mg(
                  isShowing: isShowing, zoom: .05 * 1);
              return WonderIllustration(
                  viewModel:
                      dataSource.getViewModelFor(wonderType, config, context));
            }));
  }

  List<Widget> _buildBgAndClouds() {
    return [
      ..._wonders.map((e) {
        final config = WonderIllustrationConfig.bg(isShowing: _isSelected(e));
        return WonderIllustration(
            viewModel: dataSource.getViewModelFor(e, config, context));
      }).toList(),
      FractionallySizedBox(
          widthFactor: 1,
          heightFactor: .5,
          child: AnimatedClouds(wonderType: currentSessionType, opacity: 1))
    ];
  }

  Widget _buildFgAndGradients() {
    Widget buildSwipeableBgGradient(Color fgColor) {
      return IgnorePointer(
          child: FractionallySizedBox(
              heightFactor: .6,
              child: Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  fgColor.withOpacity(0),
                  fgColor.withOpacity(.5 + fgColor.opacity * .25)
                ],
                stops: const [0, 1],
              )))));
    }

    final gradientColor = currentSessionType.bgColor;
    return Stack(children: [
      BottomCenter(
          child: buildSwipeableBgGradient(gradientColor.withOpacity(.65))),
      ..._wonders.map((e) {
        final config =
            WonderIllustrationConfig.fg(isShowing: _isSelected(e), zoom: .4);
        return Animate(
            effects: const [FadeEffect()],
            onPlay: _handleFadeAnimInit,
            child: IgnorePointer(
                child: BaseIllustration(
                    illustrationViewModel:
                        dataSource.getViewModelFor(e, config, context))));
      }).toList(),
      BottomCenter(child: buildSwipeableBgGradient(gradientColor))
    ]);
  }
}

class BottomCenter extends Align {
  const BottomCenter(
      {Key? key, double? widthFactor, double? heightFactor, Widget? child})
      : super(
            key: key,
            widthFactor: widthFactor,
            heightFactor: heightFactor,
            child: child,
            alignment: Alignment.bottomCenter);
}
