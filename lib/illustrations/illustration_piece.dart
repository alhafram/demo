import 'dart:math';
import 'dart:ui' as ui;
import 'package:demo/illustrations/view_models.dart';
import 'package:demo/illustrations/illustration_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:sized_context/sized_context.dart';

class IllustrationPiece extends StatefulWidget {
  const IllustrationPiece(
      {Key? key,
      required this.fileName,
      required this.heightFactor,
      this.alignment = Alignment.center,
      this.minHeight,
      this.offset = Offset.zero,
      this.fractionalOffset,
      this.zoomAmt = 0,
      this.initialOffset = Offset.zero,
      this.initialScale = 1,
      this.dynamicHzOffset = 0})
      : super(key: key);

  factory IllustrationPiece.withViewModel(
      {required IllustrationPieceViewModel viewModel}) {
    return IllustrationPiece(
        fileName: viewModel.fileName,
        heightFactor: viewModel.heightFactor,
        alignment: viewModel.alignment,
        minHeight: viewModel.minHeight,
        offset: viewModel.offset,
        fractionalOffset: viewModel.fractionalOffset,
        zoomAmt: viewModel.zoomAmt,
        initialOffset: viewModel.initialOffset,
        initialScale: viewModel.initialScale,
        dynamicHzOffset: viewModel.dynamicHzOffset);
  }

  final String fileName;

  final Alignment alignment;

  /// Will animate from this position to Offset.zero, eg is value is Offset(0, 100), the piece will slide up vertically 100px as it enters the screen
  final Offset initialOffset;

  /// Will animate from this scale to 1, eg if scale is .7, the piece will scale from .7 to 1.0 as it enters the screen.
  final double initialScale;

  /// % height, will be overridden by minHeight
  final double heightFactor;

  /// min height in pixels, piece will not be allowed to go below this height in px, unless it has to (available height is too small)
  final double? minHeight;

  /// px offset for this piece
  final Offset offset;

  /// offset based on a fraction of the piece size
  final Offset? fractionalOffset;

  /// The % amount that this object should scale up as the user drags their finger up the screen
  final double zoomAmt;

  /// Max px offset of the piece as the screen size grows horizontally
  final double dynamicHzOffset;

  @override
  State<IllustrationPiece> createState() => _IllustrationPieceState();
}

class _IllustrationPieceState extends State<IllustrationPiece> {
  double? aspectRatio;
  ui.Image? uiImage;
  @override
  Widget build(BuildContext context) {
    final builder = context.watch<IllustrationBuilderState>();
    final imgPath = widget.fileName;
    // Dynamically determine the aspect ratio of the image, so we can more easily position it
    if (aspectRatio == null) {
      aspectRatio == 0; // indicates load has started, so we don't run twice
      rootBundle.load(widget.fileName).then((img) async {
        uiImage = await decodeImageFromList(img.buffer.asUint8List());
        if (!mounted) return;
        setState(() => aspectRatio = uiImage!.width / uiImage!.height);
      });
    }
    return Align(
        alignment: widget.alignment,
        child: LayoutBuilder(
            key: ValueKey(aspectRatio),
            builder: (_, constraints) {
              final anim = builder.anim;
              final curvedAnim = Curves.easeOut.transform(anim.value);
              final config = builder.widget.config;
              Widget img =
                  Image.asset(imgPath, opacity: anim, fit: BoxFit.fitHeight);
              // Add overflow box so image doesn't get clipped as we translate it around
              img = OverflowBox(maxWidth: 2500, child: img);

              final double introZoom =
                  (widget.initialScale - 1) * (1 - curvedAnim);

              /// Determine target height
              final double height = max(widget.minHeight ?? 0,
                  constraints.maxHeight * widget.heightFactor);

              /// Combine all the translations, initial + offset + dynamicHzOffset + fractionalOffset
              Offset finalTranslation = widget.offset;
              // Initial
              if (widget.initialOffset != Offset.zero) {
                finalTranslation += widget.initialOffset * (1 - curvedAnim);
              }
              // Dynamic
              final dynamicOffsetAmt =
                  ((context.widthPx - 400) / 1100).clamp(0, 1);
              finalTranslation +=
                  Offset(dynamicOffsetAmt * widget.dynamicHzOffset, 0);
              // Fractional
              final width = height * (aspectRatio ?? 0);
              if (widget.fractionalOffset != null) {
                finalTranslation += Offset(widget.fractionalOffset!.dx * width,
                    height * widget.fractionalOffset!.dy);
              }
              Widget? content;
              if (uiImage != null) {
                content = Transform.translate(
                    offset: finalTranslation,
                    child: Transform.scale(
                        scale: 1 + (widget.zoomAmt * config.zoom) + introZoom,
                        child: SizedBox(
                            height: height,
                            width: height * aspectRatio!,
                            child: img)));
              }

              return Stack(children: [
                if (uiImage != null) ...[content!]
              ]);
            }));
  }
}
