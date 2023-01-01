import 'package:flutter/material.dart';
import 'package:play_safe/ui/shared/colors.dart';
import 'package:play_safe/ui/shared/spacing.dart';
import 'package:play_safe/ui/views/onboarding/wallet/walletsetup/createwalletsetup_viewmodel.dart';
import 'package:play_safe/ui/widgets/info_card.dart';
import 'package:stacked/stacked.dart';

class CreateWalletSetupView extends StatelessWidget {
  const CreateWalletSetupView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<CreateWalletSetupModel>.reactive(
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
              "Wallet setup",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
            centerTitle: true,
            automaticallyImplyLeading: false,
          ),
          body: Container(
            decoration: const BoxDecoration(gradient: kBckgrdGradient),
            child: Center(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 32.0,
                  ),
                  child: Column(
                    children: [
                      InfoCard(
                        imageUrl: 'assets/images/infocardimage.png',
                        subtitle: "Don't have a wallet?",
                        title: "Create new wallet",
                        onTap: (() => model.goToWalletPhrase()),
                      ),
                      verticalSpaceLarge,
                      InfoCard(
                        imageUrl: 'assets/images/infocardimage2.png',
                        subtitle: "Already have a wallet?",
                        title: "Import existing wallet",
                        onTap: (() => print("import")),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
      viewModelBuilder: () => CreateWalletSetupModel(),
    );
  }
}
