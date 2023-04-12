import 'package:demo/wonder_illustrations/animated_clouds.dart';
import 'package:demo/wonder_illustrations/illustrations/base_illustration.dart';
import 'package:demo/wonder_illustrations/wonder_illustration.dart';
import 'package:demo/wonder_illustrations/wonder_illustration_config.dart';
import 'package:demo/wonder_illustrations/sessions_data_source.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late final PageController _pageController;
  SessionDataSource dataSource = SessionDataSource();

  @override
  void initState() {
    super.initState();
    final initialPage = dataSource.all.length * 9999;
    _pageController =
        PageController(viewportFraction: 1, initialPage: initialPage);
    dataSource.currentId = initialPage % dataSource.all.length;
  }

  void _handlePageChanged(value) {
    setState(() {
      dataSource.currentId = value % dataSource.all.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        color: const Color(0xFF1E1B18),
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
              final viewModel = dataSource.all[index % dataSource.all.length];
              bool isShowing = dataSource.isSelected(viewModel.id);
              final config = WonderIllustrationConfig.mg(
                  isShowing: isShowing, zoom: .05 * 1);
              return WonderIllustration(viewModel: viewModel, config: config);
            }));
  }

  List<Widget> _buildBgAndClouds() {
    return [
      ...dataSource.all.map((e) {
        final config =
            WonderIllustrationConfig.bg(isShowing: dataSource.isSelected(e.id));
        return WonderIllustration(
          viewModel: dataSource.all[e.id],
          config: config,
        );
      }).toList(),
      FractionallySizedBox(
          widthFactor: 1, heightFactor: .5, child: AnimatedClouds(opacity: 1))
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
                          stops: const [
                    0,
                    1
                  ])))));
    }

    Color gradientColor = dataSource.all[dataSource.currentId].bgColor;
    return Stack(children: [
      BottomCenter(
          child: buildSwipeableBgGradient(gradientColor.withOpacity(.65))),
      ...dataSource.all.map((e) {
        final config = WonderIllustrationConfig.fg(
            isShowing: dataSource.isSelected(e.id), zoom: .4);
        return Animate(
            effects: const [FadeEffect()],
            child: IgnorePointer(
                child: BaseIllustration(
              illustrationViewModel: dataSource.all[e.id],
              config: config,
            )));
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
