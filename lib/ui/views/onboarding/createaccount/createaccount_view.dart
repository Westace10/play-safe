import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:play_safe/ui/shared/colors.dart';
import 'package:play_safe/ui/shared/spacing.dart';
import 'package:play_safe/ui/views/onboarding/createaccount/createaccount_view.form.dart';
import 'package:play_safe/ui/views/onboarding/createaccount/createaccount_viewmodel.dart';
import 'package:play_safe/ui/widgets/app_button.dart';
import 'package:play_safe/ui/widgets/text_field.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';

@FormView(
  fields: [
    FormTextField(name: 'gamerId'),
    FormTextField(name: 'gamerEmail'),
  ],
)
class CreateAccountView extends StatelessWidget with $CreateAccountView {
  CreateAccountView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<CreateAccountModel>.reactive(
      onModelReady: ((model) => syncFormWithViewModel(model)),
      onDispose: (_) => disposeForm(),
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
              onPressed: model.goBack,
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
                child: SizedBox(
                  height: MediaQuery.of(context).size.height,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // verticalSpaceSmall,
                          Text(
                            "Complete the details to create an account and get started with cryptowallet",
                            style: GoogleFonts.montserrat(
                              fontWeight: FontWeight.w400,
                              fontSize: 12.5,
                              height: 1.5,
                            ),
                          ),
                          verticalSpaceSmall,
                          InputField(
                            labelText: "Game ID",
                            hintText: "Enter a unique ID",
                            kPadding: 0.0,
                            // suffixIcon: true,
                            // autoFocus: true,
                            inputController: gamerIdController,
                            hasValidationMessage:
                                model.hasGamerIdValidationMessage,
                            validationMessage: model.hasGamerIdValidationMessage
                                ? model.gamerIdValidationMessage
                                : null,
                          ),
                          verticalSpaceMicroSmall,
                          InputField(
                            labelText: "Email",
                            hintText: "Enter email address",
                            kPadding: 0.0,
                            // autoFocus: true,
                            // suffixIcon: true,
                            inputController: gamerEmailController,
                            hasValidationMessage:
                                model.hasGamerEmailValidationMessage,
                            validationMessage:
                                model.hasGamerEmailValidationMessage
                                    ? model.gamerEmailValidationMessage
                                    : null,
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            "By signing up, you agree to Cryptowatch Terms and Privacy Policy and we ensure your data is safe and secure",
                            style: GoogleFonts.montserrat(
                              fontWeight: FontWeight.w400,
                              fontSize: 12.5,
                              height: 1.5,
                            ),
                          ),
                          verticalSpaceMicroSmall,
                          AppButton(
                            backgroundColor: kPrimaryColor,
                            title: 'Next',
                            height: 45,
                            width: double.infinity,
                            disabled: model.disableCreateButton,
                            isBusy: model.isBusy,
                            onTap: model.onNextButton,
                          ),
                          verticalSpaceSmall,
                          verticalSpaceLarge,
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
      viewModelBuilder: () => CreateAccountModel(),
    );
  }
}
