import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokedex/global/widget/global_svg_loader.dart';
import 'package:pokedex/utils/extension.dart';
import 'package:pokedex/utils/styles/k_assets.dart';
import 'package:pokedex/utils/styles/k_colors.dart';
import 'package:flutter/material.dart';

import 'components/pokemon_info_toolbar.dart';

class PokemonInfoScreen extends StatelessWidget {
  const PokemonInfoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    context.setSystemUIOverlay(statusBarVisible: true,navigationBarVisible: true,statusBarColor: KColor.fire.color,);
    "status bar height is : ${MediaQuery.of(context).padding.top}".log();
    return Scaffold(
      backgroundColor: KColor.fire.color,
      appBar: AppBar(
        toolbarHeight: 208.h,
        backgroundColor: KColor.fire.color,
        flexibleSpace: FlexibleSpaceBar(
          background: Stack(
            children: [
              Positioned(
                top: 0,
                child: PokemonInfoToolbar(
                  title: "Charmander",
                  serialTag: "#001",
                ),
              ),
              Positioned(
                right: 10.w,
                top: 28.h,
                child: Opacity(
                  opacity: 0.1,
                  child: GlobalSvgLoader(
                    imagePath: KAssetName.icPokeballSvg.imagePath,
                    width: 208.w,
                    height: 208.h,
                    color: KColor.white.color,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: Column(
        children: [],
      ),
    );
  }
}
