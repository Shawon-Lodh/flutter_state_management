import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokedex/utils/extension.dart';

import '../../../global/widget/global_svg_loader.dart';
import '../../../utils/app_routes.dart';
import '../../../utils/navigation.dart';
import '../../../utils/styles/k_assets.dart';
import '../../../utils/styles/k_colors.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: Future.delayed(const Duration(seconds: 3)),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            WidgetsBinding.instance.addPostFrameCallback((_) {
              Navigation.pushAndRemoveUntil(
                context,
                appRoutes: AppRoutes.dashboard,
              );
            });
          }

          // Show splash screen UI
          return Container(
            width: context.width,
            height: context.height,
            color: KColor.primary.color,
            child: Center(
              child: GlobalSvgLoader(
                imagePath: KAssetName.icPokeballSvg.imagePath,
                width: 186.w,
                height: 90.h,
                color: KColor.white.color,
              ),
            ),
          );
        });
  }
}



