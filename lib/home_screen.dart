import 'package:demo/home_screen_provider.dart';
import 'package:demo/illustrations/animated_clouds.dart';
import 'package:demo/illustrations/base_illustration.dart';
import 'package:demo/illustrations/illustration_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  late PageController _pageController;

  @override
  Widget build(BuildContext context) {
    var provider = context.read<HomeScreenProvider>();
    _pageController =
        PageController(viewportFraction: 1, initialPage: provider.count * 9999);
    return Container(
        color: const Color(0xFF1E1B18),
        child: Stack(children: [
          Stack(children: [
            ..._buildBgAndClouds(context),
            _buildMgPageView(context),
            _buildFgAndGradients(context)
          ]).animate().fadeIn()
        ]));
  }

  Widget _buildMgPageView(BuildContext context) {
    var provider = context.watch<HomeScreenProvider>();
    return ExcludeSemantics(
        child: PageView.builder(
            controller: _pageController,
            onPageChanged: (value) => provider.changeCurrentId(value),
            itemBuilder: (_, index) {
              final viewModel = provider.viewModels[index % provider.count];
              bool isShowing = provider.isSelected(viewModel.id);
              final config =
                  IllustrationConfig.mg(isShowing: isShowing, zoom: .05 * 1);
              return BaseIllustration(
                  illustrationViewModel: viewModel, config: config);
            }));
  }

  List<Widget> _buildBgAndClouds(BuildContext context) {
    var provider = context.watch<HomeScreenProvider>();
    return [
      ...provider.viewModels.map((e) {
        var config =
            IllustrationConfig.bg(isShowing: provider.isSelected(e.id));
        return BaseIllustration(
            illustrationViewModel: provider.viewModels[e.id], config: config);
      }).toList(),
      FractionallySizedBox(
          widthFactor: 1,
          heightFactor: .5,
          child: AnimatedClouds(
              opacity: 1, cloudSeed: provider.selectedViewModel.cloudSeed))
    ];
  }

  Widget _buildFgAndGradients(BuildContext context) {
    var provider = context.watch<HomeScreenProvider>();
    Widget buildSwipeableBgGradient(Color fgColor) {
      List<double> stops = [0, 1];
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
                          stops: stops)))));
    }

    Color gradientColor = provider.selectedViewModel.bgColor;
    return Stack(children: [
      BottomCenter(
          child: buildSwipeableBgGradient(gradientColor.withOpacity(.65))),
      ...provider.viewModels.map((e) {
        final config = IllustrationConfig.fg(
            isShowing: provider.isSelected(e.id), zoom: .4);
        return Animate(
            effects: const [FadeEffect()],
            child: IgnorePointer(
                child: BaseIllustration(
                    illustrationViewModel: provider.viewModels[e.id],
                    config: config)));
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
