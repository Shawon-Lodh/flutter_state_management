enum KAssetName {
  icArrowBackSvg,
  icChevronLeftSvg,
  icChevronRightSvg,
  icCloseSvg,
  icPokeballSvg,
  icScaleSvg,
  icSearchSvg,
  icSortSvg,
  icTagSvg,
  icTextFormatSvg,
  icWeightSvg,
}

extension AssetsExtension on KAssetName {
  String get imagePath {
    const String _rootPath = 'assets';
  const String _svgDir = '$_rootPath/svg';
    switch (this) {
      case KAssetName.icArrowBackSvg:
        return '$_svgDir/ic_arrow_back.svg';
      case KAssetName.icChevronLeftSvg:
        return '$_svgDir/ic_chevron_left.svg';
      case KAssetName.icChevronRightSvg:
        return '$_svgDir/ic_chevron_right.svg';
      case KAssetName.icCloseSvg:
        return '$_svgDir/ic_close.svg';
      case KAssetName.icPokeballSvg:
        return '$_svgDir/ic_pokeball.svg';
      case KAssetName.icScaleSvg:
        return '$_svgDir/ic_scale.svg';
      case KAssetName.icSearchSvg:
        return '$_svgDir/ic_search.svg';
      case KAssetName.icSortSvg:
        return '$_svgDir/ic_sort.svg';
      case KAssetName.icTagSvg:
        return '$_svgDir/ic_tag.svg';
      case KAssetName.icTextFormatSvg:
        return '$_svgDir/ic_text_format.svg';
      case KAssetName.icWeightSvg:
        return '$_svgDir/ic_weight.svg';
    }
  }
}
