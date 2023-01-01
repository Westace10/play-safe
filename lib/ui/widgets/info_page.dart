import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:play_safe/core/contants/constants.dart';
import 'package:play_safe/ui/shared/colors.dart';
import 'package:play_safe/ui/shared/spacing.dart';

class InfoPage extends StatelessWidget {
  const InfoPage({
    Key? key,
    this.imageUrl,
    this.subtitle,
    this.title,
    this.onTap,
  }) : super(key: key);

  final String? imageUrl;
  final String? subtitle;
  final String? title;
  final Function? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 40,
      ),
      decoration: const BoxDecoration(gradient: kBckgrdGradient),
      child: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              verticalSpaceMicro,
              SizedBox(
                height: 150,
                child: Image.asset(
                  kOnboardingImages[1],
                ),
              ),
              verticalSpaceNormal,
              Text(
                title!,
                textAlign: TextAlign.center,
                style: GoogleFonts.familjenGrotesk(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                ),
              ),
              verticalSpaceMicroSmall,
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.5,
                child: Text(
                  subtitle!,
                  textAlign: TextAlign.center,
                  softWrap: true,
                  style: GoogleFonts.familjenGrotesk(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              verticalSpaceMedium,
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.8,
                child: TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    backgroundColor: kPrimaryColor,
                    // foregroundColor: kWhiteColor,
                  ),
                  child: Text(
                    "",
                    style: GoogleFonts.familjenGrotesk(
                      fontSize: 16,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
