import 'package:chart_sparkline/chart_sparkline.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:play_safe/core/contants/constants.dart';
import 'package:play_safe/ui/shared/border_radius.dart';
import 'package:play_safe/ui/shared/colors.dart';
import 'package:play_safe/ui/shared/edge_insets.dart';
import 'package:play_safe/ui/shared/spacing.dart';

class TokenSection extends StatelessWidget {
  const TokenSection(
      {Key? key, this.sectionTitle, this.onSeeAllTap, this.onCardTap})
      : super(key: key);
  final String? sectionTitle;
  final Function? onSeeAllTap;
  final Function? onCardTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: kEdgeInsetsHorizontalNormal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                sectionTitle!,
                style: GoogleFonts.familjenGrotesk(
                  fontWeight: FontWeight.w400,
                  fontSize: 12.5,
                  height: 1.5,
                ),
              ),
              InkWell(
                onTap: onSeeAllTap == null ? null : (() => onSeeAllTap!()),
                child: Text(
                  "See All",
                  style: GoogleFonts.familjenGrotesk(
                    fontWeight: FontWeight.w400,
                    fontSize: 12.5,
                    height: 1.5,
                    color: kPrimaryColor,
                  ),
                ),
              ),
            ],
          ),
        ),
        verticalSpaceMini,
        SizedBox(
          height: 200,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: onCardTap == null ? null : (() => onCardTap!.call()),
                child: Container(
                  margin: const EdgeInsets.only(left: 24),
                  decoration: BoxDecoration(
                      borderRadius: mediumBorderRadius,
                      gradient: kTrendCardGradient),
                  height: 190,
                  width: 130,
                  child: Stack(
                    children: [
                      Padding(
                        padding: kEdgeInsetsAllSmall,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Image.asset("assets/images/bitcoin.png"),
                                Padding(
                                  padding: kEdgeInsetsHorizontalTiny,
                                  child: Text(
                                    "BTC",
                                    style: GoogleFonts.familjenGrotesk(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14,
                                      height: 1.0,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            verticalSpaceMicroSmall,
                            Padding(
                              padding: kEdgeInsetsHorizontalTiny,
                              child: Text(
                                "Bitcoin",
                                style: GoogleFonts.familjenGrotesk(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 15,
                                  height: 1.5,
                                ),
                              ),
                            ),
                            verticalSpaceMicroSmall,
                            Padding(
                              padding: kEdgeInsetsHorizontalTiny,
                              child: Text(
                                "\u002450,892.42",
                                style: GoogleFonts.familjenGrotesk(
                                  fontWeight: FontWeight.w800,
                                  fontSize: 18,
                                  height: 1.5,
                                ),
                              ),
                            ),
                            verticalSpaceMicroSmallest,
                            Row(
                              children: [
                                const Icon(Icons.arrow_drop_up_rounded),
                                Text(
                                  "+0.05%",
                                  style: GoogleFonts.familjenGrotesk(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 10,
                                    height: 1.5,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: SizedBox(
                          height: 75,
                          child: Sparkline(
                            data: data,
                            lineColor: kLossLineColor,
                            fillMode: FillMode.below,
                            fillGradient: kLossShadeGradient,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
