import 'package:e_commerce_mobile/core/constants/ecm_dimensions.dart';
import 'package:flutter/material.dart';
/// This widget provides a vertical and horizontal spacing between widgets.

/// These widgets can be used in place of using hardcoded heights or widths for sized boxes.
/// For example, rather than declaring SizedBox(height: 20), we can declare EcmSpacing.height(20).
/// Or rather than declaring SizedBox(width: 8), we will declare EcmSpacing.smallWidth().
/// 

  class EcmSpacing extends StatelessWidget {
    const EcmSpacing.empty({super.key})
         :width = EcmDimensions.zero,
          height = EcmDimensions.zero;

    const EcmSpacing.xxxLargeWidth({Key? key})
         : this.width(EcmDimensions.xxxLarge, key: key);

    const EcmSpacing.xxLargeWidth({Key? key})
      : this.width(EcmDimensions.xxLarge, key: key);

  const EcmSpacing.xLargeWidth({Key? key})
      : this.width(EcmDimensions.xLarge, key: key);

  const EcmSpacing.largeWidth({Key? key})
      : this.width(EcmDimensions.large, key: key);

  const EcmSpacing.bigWidth({Key? key})
      : this.width(EcmDimensions.big, key: key);

  const EcmSpacing.mediumWidth({Key? key})
      : this.width(EcmDimensions.medium, key: key);

  const EcmSpacing.smallWidth({Key? key})
      : this.width(EcmDimensions.small, key: key);

  const EcmSpacing.xxxSmallWidth({Key? key})
      : this.width(EcmDimensions.xxxSmall, key: key);

  const EcmSpacing.xxSmallWidth({Key? key})
      : this.width(EcmDimensions.xxSmall, key: key);

  const EcmSpacing.xSmallWidth({Key? key})
      : this.width(EcmDimensions.xSmall, key: key);

  const EcmSpacing.tinyWidth({Key? key})
      : this.width(EcmDimensions.tiny, key: key);
  const EcmSpacing.xxxLargeHeight({Key? key})
      : this.height(EcmDimensions.xxxLarge, key: key);

  const EcmSpacing.xxLargeHeight({Key? key})
      : this.height(EcmDimensions.xxLarge, key: key);

  const EcmSpacing.xLargeHeight({Key? key})
      : this.height(EcmDimensions.xLarge, key: key);

  const EcmSpacing.largeHeight({Key? key})
      : this.height(EcmDimensions.large, key: key);

  const EcmSpacing.bigHeight({Key? key})
      : this.height(EcmDimensions.big, key: key);

  const EcmSpacing.mediumHeight({Key? key})
      : this.height(EcmDimensions.medium, key: key);

  const EcmSpacing.smallHeight({Key? key})
      : this.height(EcmDimensions.small, key: key);

  const EcmSpacing.xSmallHeight({Key? key})
      : this.height(EcmDimensions.xSmall, key: key);

  const EcmSpacing.xxSmallHeight({Key? key})
      : this.height(EcmDimensions.xxSmall, key: key);

  const EcmSpacing.xxxSmallHeight({Key? key})
      : this.height(EcmDimensions.xxxSmall, key: key);

  const EcmSpacing.tinyHeight({Key? key})
      : this.height(EcmDimensions.tiny, key: key);
     
     
    const EcmSpacing.width(this.width, {super.key}) 
      : height = EcmDimensions.zero;
    const EcmSpacing.height(this.height, {super.key})  
      : width = EcmDimensions.zero;
     /// The width of the spacing.
  final double height;

  /// The height of the spacing.
  final double width;
  
  
    @override
    Widget build(BuildContext context) {
      return SizedBox(
        key: key,
        height: height,
        width: width,
      );
    }
  }
