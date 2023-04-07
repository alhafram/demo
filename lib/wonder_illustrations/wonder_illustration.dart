import 'package:demo/wonder_illustrations/illustrations/base_illustration.dart';
import 'package:demo/wonder_illustrations/illustrations/view_models.dart';
import 'package:flutter/material.dart';

class WonderIllustration extends StatelessWidget {
  const WonderIllustration({Key? key, required this.viewModel})
      : super(key: key);
  final IllustrationViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    return BaseIllustration(illustrationViewModel: viewModel);
  }
}
