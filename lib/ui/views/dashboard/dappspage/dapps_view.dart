import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:play_safe/ui/shared/colors.dart';
import 'package:play_safe/ui/shared/spacing.dart';
import 'package:play_safe/ui/views/dashboard/dappspage/dapps_viewmodel.dart';
import 'package:play_safe/ui/widgets/app_button.dart';
import 'package:play_safe/ui/widgets/text_field.dart';
import 'package:stacked/stacked.dart';

class DappsView extends StatelessWidget {
  const DappsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<DappsViewModel>.reactive(
      // onModelReady: (model) => model.init(),
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
              "Create an Account",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
            centerTitle: true,
            leading: IconButton(
              icon: const Icon(Icons.chevron_left),
              onPressed: () {},
            ),
            automaticallyImplyLeading: true,
          ),
          body: Container(
            decoration: const BoxDecoration(gradient: kBckgrdGradient),
            height: MediaQuery.of(context).size.height,
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 32.0,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    verticalSpaceSmall,
                    Text(
                      "Complete the details to create an account and get started with cryptowallet",
                      style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.w400,
                        fontSize: 12.5,
                        height: 1.5,
                      ),
                    ),
                    verticalSpaceSmall,
                    const InputField(
                      labelText: "Game ID",
                      hintText: "Enter a unique ID",
                      kPadding: 0.0,
                      suffixIcon: true,
                    ),
                    verticalSpaceMicroSmall,
                    const InputField(
                      labelText: "Email",
                      hintText: "Enter email address",
                      kPadding: 0.0,
                      autoFocus: true,
                    ),
                    verticalSpaceMini,
                    Text(
                      "By signing up, you agree to Cryptowatch Terms and Privacy Policy and we ensure your data is safe and secure",
                      style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.w400,
                        fontSize: 12.5,
                        height: 1.5,
                      ),
                    ),
                    verticalSpaceSmall,
                    AppButton(
                      backgroundColor: kPrimaryColor,
                      title: 'Done',
                      height: 45,
                      width: double.infinity,
                      // disabled: model.disableCreateButton,
                      isBusy: model.isBusy,
                      // onTap: model.goToCreatePin,
                    ),
                    // verticalSpaceMassive,
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
      viewModelBuilder: () => DappsViewModel(),
    );
  }
}
