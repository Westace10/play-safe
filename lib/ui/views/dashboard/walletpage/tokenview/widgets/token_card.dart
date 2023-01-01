import 'package:chart_sparkline/chart_sparkline.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:play_safe/core/contants/constants.dart';
import 'package:play_safe/ui/shared/colors.dart';
import 'package:play_safe/ui/shared/edge_insets.dart';
import 'package:play_safe/ui/shared/spacing.dart';

class TokenCard extends StatelessWidget {
  const TokenCard({Key? key, this.onTap}) : super(key: key);

  final Function? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: kEdgeInsetsAllNormal,
      child: ListView.builder(
        itemBuilder: ((context, index) => Column(
              children: [
                Padding(
                  padding: kEdgeInsetsHorizontalSmall,
                  child: InkWell(
                    onTap: (() => onTap!.call()),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Image.asset("assets/images/bitcoin.png"),
                            Padding(
                              padding: kEdgeInsetsHorizontalTiny,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text("Bitcoin"),
                                  verticalSpaceMicroSmallie,
                                  Row(
                                    children: [
                                      const Text("BTC"),
                                      Padding(
                                        padding: kEdgeInsetsHorizontalTiny,
                                        child: const Icon(
                                          Icons.star,
                                          size: 10,
                                          color: kPrimaryColor,
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 35,
                          width: 100,
                          child: Sparkline(
                            data: data,
                            lineColor: kGainLineColor,
                            fillMode: FillMode.below,
                            fillGradient: kGainShadeGradient,
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            const Text("0 BTC"),
                            verticalSpaceMicroSmallie,
                            const Text("\u00240.00"),
                            verticalSpaceMicroSmallie,
                            Row(
                              children: [
                                Padding(
                                  padding: kEdgeInsetsHorizontalTiny,
                                  child: const Icon(
                                    Icons.arrow_upward,
                                    size: 10,
                                    color: kGainLineColor,
                                  ),
                                ),
                                Text(
                                  "2.76%",
                                  style: GoogleFonts.familjenGrotesk(
                                    color: kGainLineColor,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12.5,
                                    height: 1.5,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const Divider(
                  thickness: 2,
                ),
              ],
            )),
      ),
    );
  }
}
