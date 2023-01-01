import 'package:flutter/material.dart';
import 'package:play_safe/ui/shared/colors.dart';
import 'package:play_safe/ui/shared/edge_insets.dart';
import 'package:play_safe/ui/views/dashboard/walletpage/tokenview/widgets/token_card.dart';

class TokenTab extends StatefulWidget {
  const TokenTab({super.key, this.onTap});
  final Function? onTap;

  @override
  State<TokenTab> createState() => _TokenTabState();
}

class _TokenTabState extends State<TokenTab> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController? tabController = TabController(length: 4, vsync: this);
    return Scaffold(
      body: Column(
        children: [
          Container(
            decoration: const BoxDecoration(gradient: kBckgrdGradient),
            height: 40,
            // width: 300,
            child: TabBar(
              indicatorSize: TabBarIndicatorSize.label,
              labelPadding: kEdgeInsetsZero,
              indicatorPadding: kEdgeInsetsZero,
              padding: kEdgeInsetsZero,
              indicatorColor: kWhiteColor,
              labelColor: kWhiteColor,
              controller: tabController,
              onTap: ((value) {}),
              tabs: const [
                Tab(text: "Favorite"),
                Tab(text: "Top"),
                Tab(text: "Watchlist"),
                Tab(text: "Stablecoins "),
              ],
            ),
          ),
          Container(
            decoration: const BoxDecoration(gradient: kBckgrdGradient),
            height: MediaQuery.of(context).size.height * 0.8,
            child: TabBarView(
              controller: tabController,
              children: [
                TokenCard(
                  onTap: () {
                    widget.onTap!();
                  },
                ),
                TokenCard(
                  onTap: () {
                    widget.onTap!();
                  },
                ),
                TokenCard(
                  onTap: () {
                    widget.onTap!();
                  },
                ),
                TokenCard(
                  onTap: () {
                    widget.onTap!();
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
