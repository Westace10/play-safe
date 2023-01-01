import 'package:flutter/material.dart';
import 'package:play_safe/ui/shared/border_radius.dart';
import 'package:play_safe/ui/shared/colors.dart';
import 'package:play_safe/ui/shared/styles.dart';

class InfoCard extends StatelessWidget {
  const InfoCard({
    Key? key,
    this.imageUrl,
    this.subtitle,
    this.title,
    this.width,
    this.height,
    this.onTap,
  }) : super(key: key);

  final String? imageUrl;
  final String? subtitle;
  final String? title;
  final double? width;
  final double? height;
  final Function? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap == null ? null : (() => onTap!()),
      child: Container(
        decoration: BoxDecoration(
          color: kInputBoxColor,
          borderRadius: normalBorderRadius,
        ),
        width: width ?? 300,
        height: height ?? 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            imageUrl!.isEmpty ? Container() : Image.asset(imageUrl!),
            Text(
              subtitle ?? '',
              style: kHeadingSubTitle,
            ),
            Text(
              title ?? '',
              style: kHeadingTitle,
            ),
          ],
        ),
      ),
    );
  }
}
