import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:play_safe/ui/shared/border_radius.dart';
import 'package:play_safe/ui/shared/colors.dart';
import 'package:play_safe/ui/shared/edge_insets.dart';
import 'package:play_safe/ui/shared/spacing.dart';
import 'package:play_safe/ui/views/dashboard/settingspage/settings_viewmodel.dart';
import 'package:stacked/stacked.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SettingsViewModel>.reactive(
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
          ),
          body: Container(
            decoration: const BoxDecoration(gradient: kBckgrdGradient),
            height: MediaQuery.of(context).size.height,
            child: SingleChildScrollView(
              physics: const NeverScrollableScrollPhysics(),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const CircleAvatar(
                    backgroundColor: kWhiteColor,
                    radius: 45,
                    child: Icon(
                      Icons.person,
                      size: 48,
                    ),
                  ),
                  verticalSpaceMicro,
                  Text(
                    "John Doe",
                    style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.w400,
                      fontSize: 24,
                      height: 1.0,
                    ),
                  ),
                  verticalSpaceMicro,
                  Text(
                    "#009128378",
                    style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      height: 1.0,
                    ),
                  ),
                  verticalSpaceSmall,
                  Container(
                    height: MediaQuery.of(context).size.height * 0.5,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xFFB840AE),
                          spreadRadius: 1.0,
                          blurRadius: 30,
                          offset: Offset(0, -10),
                        ),
                        BoxShadow(
                          color: kSecondaryColor,
                          spreadRadius: 0,
                          blurRadius: 0,
                          offset: Offset(0, 5),
                        ),
                      ],
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50),
                      ),
                      gradient: kBckgrdGradientInverse,
                    ),
                    child: Padding(
                      padding: kEdgeInsetsHorizontalMedium,
                      child: Column(
                        children: [
                          verticalSpaceSmall,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Settings",
                                style: GoogleFonts.montserrat(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 24,
                                  height: 1.0,
                                ),
                              ),
                              // Text(
                              //   "Logout",
                              //   style: GoogleFonts.montserrat(
                              //     fontWeight: FontWeight.w400,
                              //     fontSize: 14,
                              //     height: 1.0,
                              //     color: Colors.red,
                              //   ),
                              // ),
                            ],
                          ),
                          verticalSpaceSmall,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      Container(
                                        height: 25,
                                        width: 25,
                                        decoration: BoxDecoration(
                                            borderRadius: mediumBorderRadius,
                                            gradient: kPaidGradient),
                                      ),
                                      const Icon(
                                        Icons.notifications,
                                        size: 14,
                                      )
                                    ],
                                  ),
                                  horizontalSpaceTiny,
                                  horizontalSpaceTiny,
                                  Text(
                                    "Notifications",
                                    style: GoogleFonts.montserrat(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 16,
                                      height: 1.0,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    "On",
                                    style: GoogleFonts.montserrat(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 16,
                                      height: 1.0,
                                    ),
                                  ),
                                  horizontalSpaceTiny,
                                  const Icon(
                                    Icons.chevron_right,
                                    size: 24,
                                  )
                                ],
                              ),
                            ],
                          ),
                          verticalSpaceMicro,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      Container(
                                        height: 25,
                                        width: 25,
                                        decoration: BoxDecoration(
                                            borderRadius: mediumBorderRadius,
                                            gradient: kPaidGradient),
                                      ),
                                      const Icon(
                                        Icons.privacy_tip,
                                        size: 14,
                                      )
                                    ],
                                  ),
                                  horizontalSpaceTiny,
                                  horizontalSpaceTiny,
                                  Text(
                                    "Privacy",
                                    style: GoogleFonts.montserrat(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 16,
                                      height: 1.0,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: const [
                                  Icon(
                                    Icons.chevron_right,
                                    size: 24,
                                  )
                                ],
                              ),
                            ],
                          ),
                          verticalSpaceMicro,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      Container(
                                        height: 25,
                                        width: 25,
                                        decoration: BoxDecoration(
                                            borderRadius: mediumBorderRadius,
                                            gradient: kPaidGradient),
                                      ),
                                      const Icon(
                                        Icons.security,
                                        size: 14,
                                      )
                                    ],
                                  ),
                                  horizontalSpaceTiny,
                                  horizontalSpaceTiny,
                                  Text(
                                    "Security",
                                    style: GoogleFonts.montserrat(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 16,
                                      height: 1.0,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: const [
                                  Icon(
                                    Icons.chevron_right,
                                    size: 24,
                                  )
                                ],
                              ),
                            ],
                          ),
                          verticalSpaceMicro,
                          verticalSpaceMicro,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      Container(
                                        height: 25,
                                        width: 25,
                                        decoration: BoxDecoration(
                                            borderRadius: mediumBorderRadius,
                                            gradient: kTrendCardGradient),
                                      ),
                                      const Icon(
                                        Icons.help,
                                        size: 14,
                                      )
                                    ],
                                  ),
                                  horizontalSpaceTiny,
                                  horizontalSpaceTiny,
                                  Text(
                                    "Help",
                                    style: GoogleFonts.montserrat(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 16,
                                      height: 1.0,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: const [
                                  Icon(
                                    Icons.chevron_right,
                                    size: 24,
                                  )
                                ],
                              ),
                            ],
                          ),
                          verticalSpaceMicro,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      Container(
                                        height: 25,
                                        width: 25,
                                        decoration: BoxDecoration(
                                            borderRadius: mediumBorderRadius,
                                            gradient: kTrendCardGradient),
                                      ),
                                      const Icon(
                                        Icons.info_outlined,
                                        size: 14,
                                      )
                                    ],
                                  ),
                                  horizontalSpaceTiny,
                                  horizontalSpaceTiny,
                                  Text(
                                    "About",
                                    style: GoogleFonts.montserrat(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 16,
                                      height: 1.0,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: const [
                                  Icon(
                                    Icons.chevron_right,
                                    size: 24,
                                  )
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      viewModelBuilder: () => SettingsViewModel(),
    );
  }
}
