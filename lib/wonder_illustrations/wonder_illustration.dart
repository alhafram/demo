import 'package:demo/wonder_illustrations/illustrations/base_illustration.dart';
import 'package:demo/wonder_illustrations/illustrations/view_models.dart';
import 'package:demo/wonder_illustrations/wonder_illustration_config.dart';
import 'package:flutter/material.dart';

class WonderIllustration extends StatelessWidget {
  const WonderIllustration(
      {Key? key, required this.viewModel, required this.config})
      : super(key: key);
  final WonderIllustrationConfig config;
  final IllustrationViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    return BaseIllustration(illustrationViewModel: viewModel, config: config);
  }
}
