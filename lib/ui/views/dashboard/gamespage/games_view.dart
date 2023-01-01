import 'package:flutter/material.dart';
import 'package:play_safe/ui/shared/colors.dart';
import 'package:play_safe/ui/shared/edge_insets.dart';
import 'package:play_safe/ui/shared/spacing.dart';
import 'package:play_safe/ui/views/dashboard/gamespage/games_viewmodel.dart';
import 'package:play_safe/ui/widgets/balance.dart';
import 'package:play_safe/ui/widgets/game_section.dart';
import 'package:stacked/stacked.dart';

class GamesView extends StatelessWidget {
  const GamesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<GamesViewModel>.reactive(
      // onModelReady: (model) => model.init(),
      builder: (context, model, child) => SafeArea(
        top: false,
        bottom: false,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: const Color(0xFF0F051D),
            automaticallyImplyLeading: false,
            title: Padding(
              padding: kEdgeInsetsHorizontalTiny,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const CircleAvatar(
                      backgroundColor: kWhiteColor,
                      child: Icon(Icons.person),
                    ),
                  ),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.notifications_outlined,
                          color: Colors.grey,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.search_rounded,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          body: Container(
            decoration: const BoxDecoration(gradient: kBckgrdGradient),
            height: MediaQuery.of(context).size.height,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  verticalSpaceSmall,
                  const Balance(
                    heading: "Your Earnings",
                  ),
                  verticalSpaceSmall,
                  GameSection(
                    sectionTitle: "Free games",
                    onSeeAllTap: model.goToAllGamesView,
                    onCardTap: model.goToGamesInfoView,
                  ),
                  verticalSpaceSmall,
                  GameSection(
                    sectionTitle: "Exclusive games",
                    onSeeAllTap: model.goToAllGamesView,
                    onCardTap: model.goToGamesInfoView,
                  ),
                  verticalSpaceMini,
                ],
              ),
            ),
          ),
        ),
      ),
      viewModelBuilder: () => GamesViewModel(),
    );
  }
}
