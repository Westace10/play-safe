import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:play_safe/ui/shared/border_radius.dart';
import 'package:play_safe/ui/shared/colors.dart';
import 'package:play_safe/ui/shared/edge_insets.dart';
import 'package:play_safe/ui/shared/spacing.dart';
import 'package:play_safe/ui/views/dashboard/dappspage/dapps_viewmodel.dart';
import 'package:play_safe/ui/widgets/app_spinner.dart';
import 'package:stacked/stacked.dart';

class DappsView extends StatelessWidget {
  const DappsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<DappsViewModel>.reactive(
      onModelReady: (model) => model.init(),
      builder: (context, model, child) => SafeArea(
        top: false,
        bottom: false,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: const Color(0xFF0F051D),
            iconTheme: const IconThemeData(
              color: Colors.white,
              size: 20,
            ),
            title: const Text(
              "Community",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
            centerTitle: true,
          ),
          body: SingleChildScrollView(
            child: Container(
              decoration: const BoxDecoration(gradient: kBckgrdGradient),
              height: MediaQuery.of(context).size.height,
              child: model.isBusy
                  ? Center(
                      child: AppSpinner(
                      color: kBckgrdGradient.colors[0],
                    ))
                  : ListView.builder(
                      shrinkWrap: true,
                      itemCount: model.postData!.length,
                      itemBuilder: ((context, index) => model.isBusy
                          ? Center(
                              child: AppSpinner(
                              color: kBckgrdGradient.colors[0],
                            ))
                          : InkWell(
                              onTap: (() =>
                                  model.onCardTap(model.postData![index])),
                              child: Container(
                                margin: kEdgeInsetsAllSmall,
                                width: MediaQuery.of(context).size.width * 0.85,
                                height: 280,
                                decoration: BoxDecoration(
                                  borderRadius: smallBorderRadius,
                                  color: kWhiteColor,
                                ),
                                child: Padding(
                                  padding: kEdgeInsetsAllNormal,
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      ListTile(
                                        contentPadding: kEdgeInsetsZero,
                                        isThreeLine: false,
                                        title: Text(
                                          model.postData![index]!.title!,
                                          style: GoogleFonts.familjenGrotesk(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16,
                                            height: 1.2,
                                            color: kBckgrdGradient.colors[0],
                                          ),
                                        ),
                                        subtitle: Text(
                                          "Posted: ${DateFormat('dd-MM-yyyy hh:mm').format(DateTime.parse(model.postData![index]!.createdAt!))}",
                                          style: GoogleFonts.familjenGrotesk(
                                            fontWeight: FontWeight.w300,
                                            fontSize: 16,
                                            height: 1.5,
                                            color: kBckgrdGradient.colors[0],
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.85,
                                        height: 100,
                                        child: Text(
                                          model.postData![index]!.text!,
                                          style: GoogleFonts.familjenGrotesk(
                                            fontWeight: FontWeight.normal,
                                            fontSize: 14,
                                            height: 1.3,
                                            color: kBckgrdGradient.colors[0],
                                          ),
                                          overflow: TextOverflow.fade,
                                        ),
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          InkWell(
                                            onTap: () {},
                                            child: Container(
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    mediumBorderRadius,
                                                color:
                                                    kBckgrdGradient.colors[0],
                                              ),
                                              child: Padding(
                                                padding: kEdgeInsetsAllMini,
                                                child: Row(
                                                  children: [
                                                    Wrap(
                                                      children: [
                                                        Text(
                                                          model
                                                              .postData![index]!
                                                              .views!
                                                              .toString(),
                                                          style: GoogleFonts
                                                              .familjenGrotesk(
                                                            fontWeight:
                                                                FontWeight
                                                                    .normal,
                                                            fontSize: 14,
                                                            height: 1.0,
                                                            color: kWhiteColor,
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                    horizontalSpaceTiny,
                                                    Text(
                                                      "Views",
                                                      style: GoogleFonts
                                                          .familjenGrotesk(
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        fontSize: 14,
                                                        height: 1.0,
                                                        color: kWhiteColor,
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                          Row(
                                            children: [
                                              IconButton(
                                                onPressed: () {},
                                                icon: const Icon(Icons.share),
                                              ),
                                              IconButton(
                                                onPressed: () {},
                                                icon:
                                                    const Icon(Icons.favorite),
                                              )
                                            ],
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            )),
                    ),
            ),
          ),
        ),
      ),
      viewModelBuilder: () => DappsViewModel(),
    );
  }
}
