import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:play_safe/core/contants/constants.dart';
import 'package:play_safe/core/models/chart_data.dart';
import 'package:play_safe/ui/shared/border_radius.dart';
import 'package:play_safe/ui/shared/colors.dart';
import 'package:play_safe/ui/shared/edge_insets.dart';
import 'package:play_safe/ui/shared/spacing.dart';
import 'package:play_safe/ui/views/dashboard/walletpage/tokenview/tokendetails/tokendetails_viewmodel.dart';
import 'package:stacked/stacked.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class TokenDetailsView extends StatelessWidget {
  const TokenDetailsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<TokenDetailsViewModel>.reactive(
      // onModelReady: (model) => model.init(),
      builder: (context, model, child) => SafeArea(
        top: false,
        bottom: false,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: const Color(0xFF0F051D),
            automaticallyImplyLeading: true,
            centerTitle: true,
            iconTheme: const IconThemeData(
              color: Colors.white,
              size: 20,
            ),
            title: SizedBox(
              width: MediaQuery.of(context).size.width * 0.5,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/images/bitcoin.png",
                    scale: 1.0,
                  ),
                  horizontalSpaceTiny,
                  Text(
                    "Binance Coin (BNB)",
                    style: GoogleFonts.familjenGrotesk(
                      fontWeight: FontWeight.w700,
                      fontSize: 18,
                      height: 1.0,
                      color: kWhiteColor,
                    ),
                  ),
                ],
              ),
            ),
            actions: [
              IconButton(
                icon: const Icon(
                  Icons.star,
                  color: kPrimaryColor,
                  size: 32,
                ),
                onPressed: () {},
              ),
            ],
          ),
          body: Container(
            decoration: const BoxDecoration(gradient: kBckgrdGradient),
            height: MediaQuery.of(context).size.height,
            child: SingleChildScrollView(
              // physics: const NeverScrollableScrollPhysics(),
              child: Padding(
                padding: kEdgeInsetsAllNormal,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: mediumBorderRadius,
                        color: kChartColor,
                      ),
                      child: Column(
                        children: [
                          verticalSpaceMicroSmall,
                          Row(
                            children: [
                              Padding(
                                padding: kEdgeInsetsHorizontalSmall,
                                child: Text(
                                  "\u0024613.6",
                                  style: GoogleFonts.familjenGrotesk(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 18,
                                    height: 1.5,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: kEdgeInsetsZero,
                                child: Text(
                                  "+54(9.77%)",
                                  style: GoogleFonts.familjenGrotesk(
                                    color: Colors.green,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 12,
                                    height: 1.0,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          verticalSpaceSmall,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Padding(
                                padding: kEdgeInsetsHorizontalSmall,
                                child: Text(
                                  "\u0024613.6",
                                  style: GoogleFonts.familjenGrotesk(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12,
                                    height: 1.5,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          verticalSpaceMicroSmall,
                          SfCartesianChart(
                              primaryXAxis: CategoryAxis(),
                              // primaryYAxis:
                              //     NumericAxis(minimum: 0, maximum: 100, interval: 10),
                              tooltipBehavior: model.toolTip,
                              series: <ChartSeries<ChartData, String>>[
                                CandleSeries<ChartData, String>(
                                    dataSource: chartdata,
                                    xValueMapper: (ChartData data, _) => data.x,
                                    lowValueMapper: (ChartData data, _) =>
                                        data.low,
                                    highValueMapper: (ChartData data, _) =>
                                        data.high,
                                    openValueMapper: (ChartData data, _) =>
                                        data.open,
                                    closeValueMapper: (ChartData data, _) =>
                                        data.close,
                                    name: 'Bitcoin',
                                    bearColor: Colors.green,
                                    bullColor: Colors.red),
                              ]),
                        ],
                      ),
                    ),
                    verticalSpaceTiny,
                    Text(
                      "Period",
                      style: GoogleFonts.familjenGrotesk(
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                        height: 1.0,
                      ),
                    ),
                    verticalSpaceMicro,
                    SizedBox(
                      width: double.infinity,
                      height: 25,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemBuilder: ((context, index) => Container(
                                width: 65,
                                margin: kEdgeInsetsHorizontalThin,
                                decoration: BoxDecoration(
                                  borderRadius: normalBorderRadius,
                                  color: index == 0
                                      ? kPrimaryColor
                                      : Colors.transparent,
                                ),
                                child: Center(
                                  child: Padding(
                                    padding: kEdgeInsetsHorizontalTiny,
                                    child: Text(
                                      "${index + 1} hour${index > 0 ? "s" : ""}",
                                      style: GoogleFonts.familjenGrotesk(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 10,
                                        height: 1.5,
                                      ),
                                    ),
                                  ),
                                ),
                              ))),
                    ),
                    verticalSpaceSmall,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Data",
                          style: GoogleFonts.familjenGrotesk(
                            fontWeight: FontWeight.w700,
                            fontSize: 18,
                            height: 1.0,
                          ),
                        ),
                        InkWell(
                          // onTap: onSeeAllTap == null ? null : (() => onSeeAllTap!()),
                          child: Text(
                            "See All",
                            style: GoogleFonts.familjenGrotesk(
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                              height: 1.0,
                              color: kPrimaryColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                    verticalSpaceMicro,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            const Icon(
                              Icons.trending_up,
                              color: kPrimaryColor,
                            ),
                            Padding(
                              padding: kEdgeInsetsHorizontalTiny,
                              child: Text(
                                "Market Cap",
                                style: GoogleFonts.familjenGrotesk(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  height: 1.0,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Text(
                          "\u002489.3 billion",
                          style: GoogleFonts.familjenGrotesk(
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                            height: 1.0,
                          ),
                        ),
                      ],
                    ),
                    verticalSpaceMicroSmall,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            const Icon(
                              Icons.signal_cellular_alt,
                              color: kPrimaryColor,
                            ),
                            Padding(
                              padding: kEdgeInsetsHorizontalTiny,
                              child: Text(
                                "Volume",
                                style: GoogleFonts.familjenGrotesk(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  height: 1.0,
                                ),
                              ),
                            ),
                          ],
                        ),
                        InkWell(
                          // onTap: onSeeAllTap == null ? null : (() => onSeeAllTap!()),
                          child: Text(
                            "\u00244.1 billion",
                            style: GoogleFonts.familjenGrotesk(
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                              height: 1.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                    verticalSpaceMicroSmall,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            const Icon(
                              Icons.tonality,
                              color: kPrimaryColor,
                            ),
                            Padding(
                              padding: kEdgeInsetsHorizontalTiny,
                              child: Text(
                                "Circulating Supply",
                                style: GoogleFonts.familjenGrotesk(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  height: 1.0,
                                ),
                              ),
                            ),
                          ],
                        ),
                        InkWell(
                          // onTap: onSeeAllTap == null ? null : (() => onSeeAllTap!()),
                          child: Text(
                            "166.8M BNB",
                            style: GoogleFonts.familjenGrotesk(
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                              height: 1.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                    verticalSpaceMicroSmall,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            const Icon(
                              Icons.star_half,
                              color: kPrimaryColor,
                            ),
                            Padding(
                              padding: kEdgeInsetsHorizontalTiny,
                              child: Text(
                                "Popularity",
                                style: GoogleFonts.familjenGrotesk(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  height: 1.0,
                                ),
                              ),
                            ),
                          ],
                        ),
                        InkWell(
                          // onTap: onSeeAllTap == null ? null : (() => onSeeAllTap!()),
                          child: Text(
                            "#3",
                            style: GoogleFonts.familjenGrotesk(
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                              height: 1.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                    verticalSpaceMini,
                    SizedBox(
                      width: double.infinity,
                      height: 0.8,
                      child: ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        itemBuilder: ((context, index) => Container(
                              width: 4,
                              margin: kEdgeInsetsHorizontalThinner,
                              decoration:
                                  const BoxDecoration(color: kInputBoxColor),
                            )),
                      ),
                    ),
                    verticalSpaceMini,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "About",
                          style: GoogleFonts.familjenGrotesk(
                            fontWeight: FontWeight.w700,
                            fontSize: 18,
                            height: 1.0,
                          ),
                        ),
                      ],
                    ),
                    verticalSpaceMicro,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.9,
                          child: Text(
                            "Launched in July 2017, Binance is the biggest cryptocurrency exchange globally based on daily trading volume. Binance aims to bring cryptocurrency exchanges to the forefront of financial activity globally. The idea behind Binance’s name is to show this new paradigm in global finance — Binary Finance, or Binance.",
                            style: GoogleFonts.familjenGrotesk(
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              height: 1.5,
                            ),
                          ),
                        ),
                      ],
                    ),
                    verticalSpaceMicro,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        InkWell(
                          // onTap: onSeeAllTap == null ? null : (() => onSeeAllTap!()),
                          child: Text(
                            "Read More...",
                            style: GoogleFonts.familjenGrotesk(
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                              height: 1.0,
                              color: kPrimaryColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
      viewModelBuilder: () => TokenDetailsViewModel(),
    );
  }
}
