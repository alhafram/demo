import 'package:demo/home_screen_provider.dart';
import 'package:demo/illustrations/animated_clouds.dart';
import 'package:demo/illustrations/base_illustration.dart';
import 'package:demo/illustrations/illustration_config.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class IllustrationCloudsView extends StatelessWidget {
  const IllustrationCloudsView({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = context.watch<HomeScreenProvider>();
    return Stack(children: [
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
    ]);
  }
}
