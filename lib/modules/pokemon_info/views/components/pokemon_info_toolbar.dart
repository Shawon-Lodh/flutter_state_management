import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokedex/global/widget/global_svg_loader.dart';
import 'package:pokedex/utils/extension.dart';
import 'package:pokedex/utils/styles/k_assets.dart';

import '../../../../utils/styles/k_colors.dart';
import '../../../../global/widget/global_text.dart';

class PokemonInfoToolbar extends StatelessWidget {
  const PokemonInfoToolbar({Key? key, required this.title, this.serialTag})
      : super(key: key);
  final String? title;
  final String? serialTag;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.width,
      padding:
          EdgeInsets.only(left: 24.w, right: 20.w, top: (MediaQuery.of(context).padding.top), bottom: 24.h),
      child: Row(
        children: [
          GlobalSvgLoader(
            imagePath: KAssetName.icArrowBackSvg.imagePath,
            width: 32.w,
            height: 32.h,
            color: KColor.white.color,
          ),
          SizedBox(width: 6.w),
          Expanded(
            child: GlobalText(
              str: title ?? "",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w500,
                color: KColor.white.color,
              ),
            ),
          ),
          GlobalText(
            str: serialTag ?? "",
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              color: KColor.white.color,
            ),
          ),
        ],
      ),
    );
  }
}
