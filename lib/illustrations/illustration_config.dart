class IllustrationConfig {
  static const double _defaultZoom = 1;

  const IllustrationConfig(
      {this.zoom = _defaultZoom,
      this.isShowing = true,
      this.enableFg = true,
      this.enableBg = true,
      this.enableMg = true,
      this.enableHero = true,
      this.enableAnims = true});
  final double zoom;
  final bool isShowing;
  final bool enableFg;
  final bool enableBg;
  final bool enableMg;
  final bool enableHero;
  final bool enableAnims;

  factory IllustrationConfig.fg(
          {double zoom = _defaultZoom,
          bool isShowing = true,
          bool enableHero = true,
          bool enableAnims = true}) =>
      IllustrationConfig(
          zoom: zoom,
          isShowing: isShowing,
          enableHero: enableHero,
          enableAnims: enableAnims,
          enableBg: false,
          enableMg: false);
  factory IllustrationConfig.bg(
          {double zoom = _defaultZoom,
          bool isShowing = true,
          bool enableHero = true,
          bool enableAnims = true}) =>
      IllustrationConfig(
          zoom: zoom,
          isShowing: isShowing,
          enableHero: enableHero,
          enableAnims: enableAnims,
          enableFg: false,
          enableMg: false);
  factory IllustrationConfig.mg(
          {double zoom = _defaultZoom,
          bool isShowing = true,
          bool enableHero = true,
          bool enableAnims = true}) =>
      IllustrationConfig(
          zoom: zoom,
          isShowing: isShowing,
          enableHero: enableHero,
          enableAnims: enableAnims,
          enableBg: false,
          enableFg: false);
}
