import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:play_safe/ui/shared/border_radius.dart';
import 'package:play_safe/ui/shared/colors.dart';
import 'package:play_safe/ui/shared/edge_insets.dart';
import 'package:play_safe/ui/shared/spacing.dart';

class GameSection extends StatelessWidget {
  const GameSection({
    Key? key,
    this.sectionTitle,
    this.onSeeAllTap,
    this.onCardTap,
    this.isPaid,
  }) : super(key: key);
  final String? sectionTitle;
  final Function? onSeeAllTap;
  final Function? onCardTap;
  final bool? isPaid;

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
                child: Stack(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 24),
                      decoration: BoxDecoration(
                          borderRadius: mediumBorderRadius,
                          color: kInputBoxColor),
                      height: 190,
                      width: 130,
                      child: Column(
                        children: [
                          Padding(
                            padding: kEdgeInsetsAllNormal,
                            child: Image.asset(
                              "assets/images/candycrush.png",
                            ),
                          ),
                          Padding(
                            padding: kEdgeInsetsHorizontalSmall,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Candy crush",
                                  style: GoogleFonts.familjenGrotesk(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 12,
                                    height: 1.5,
                                  ),
                                ),
                                Text(
                                  "Highest Earnings",
                                  style: GoogleFonts.familjenGrotesk(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 10,
                                    height: 1.5,
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Image.asset(
                                          "assets/images/bitcoin.png",
                                          height: 13,
                                        ),
                                        Padding(
                                          padding: kEdgeInsetsHorizontalTiny,
                                          child: Text(
                                            "2.2ETH",
                                            style: GoogleFonts.familjenGrotesk(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 12.5,
                                              height: 1.0,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const Icon(
                                      Icons.star_border_rounded,
                                      size: 18,
                                      color: Colors.white54,
                                    ),
                                    // Image.asset(
                                    //   "assets/images/bitcoin.png",
                                    //   height: 15,
                                    // ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          verticalSpaceMicroSmallie,
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
