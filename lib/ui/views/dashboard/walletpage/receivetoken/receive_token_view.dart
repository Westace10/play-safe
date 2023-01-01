import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:play_safe/ui/shared/colors.dart';
import 'package:play_safe/ui/shared/spacing.dart';
import 'package:play_safe/ui/views/dashboard/walletpage/receivetoken/receive_token_viewmodel.dart';
import 'package:play_safe/ui/widgets/app_button.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:stacked/stacked.dart';

class ReceiveTokenView extends StatelessWidget {
  const ReceiveTokenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ReceiveTokenViewModel>.reactive(
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
            title: Text(
              "Receive Bitcoin",
              style: GoogleFonts.familjenGrotesk(
                fontWeight: FontWeight.w700,
                fontSize: 18,
                height: 1.5,
                color: kWhiteColor,
              ),
            ),
          ),
          body: Container(
            decoration: const BoxDecoration(gradient: kBckgrdGradient),
            height: MediaQuery.of(context).size.height,
            child: SingleChildScrollView(
              physics: const NeverScrollableScrollPhysics(),
              child: Column(
                children: [
                  verticalSpaceMini,
                  Center(
                    child: QrImage(
                      backgroundColor: kWhiteColor,
                      data: "1234567890",
                      version: QrVersions.auto,
                      size: 250.0,
                    ),
                  ),
                  verticalSpaceMini,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Wallet (Euhdhchjd...)",
                        style: GoogleFonts.familjenGrotesk(
                          fontWeight: FontWeight.w600,
                          fontSize: 24,
                          height: 1.5,
                        ),
                      ),
                      horizontalSpaceMedium,
                      const AppButton(
                        title: "Copy",
                        width: 45,
                        size: AppButtonSize.small,
                      )
                    ],
                  ),
                  verticalSpaceMini,
                  SizedBox(
                    width: 250,
                    child: Text(
                      "This addess can only be use to receive ETH token on chia network.\nCopy the link and send to the sender or scan the barcode",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.familjenGrotesk(
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        height: 1.8,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      viewModelBuilder: () => ReceiveTokenViewModel(),
    );
  }
}
