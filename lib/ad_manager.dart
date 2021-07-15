import 'package:google_mobile_ads/google_mobile_ads.dart';

class AdManager {

  late RewardedAd _rewardedAd;

  void loadRewardedAd() {
    RewardedAd.load(adUnitId: 'ca-app-pub-5399736480581389/5450402846',
        request: AdRequest(),
        rewardedAdLoadCallback: RewardedAdLoadCallback(
            onAdLoaded: (RewardedAd Ad){
              print('Ad Loaded');
              _rewardedAd = Ad;
            },
            onAdFailedToLoad: (LoadAdError error){
              print(error);
            },),
    );
  }

  void showRewardedAd() {

    _rewardedAd.show(onUserEarnedReward: (RewardedAd Ad, RewardItem rPoint){
          print('Reward Earn is ${rPoint.amount}');
    },);
    _rewardedAd.fullScreenContentCallback = FullScreenContentCallback(
      onAdDismissedFullScreenContent: (RewardedAd Ad) {
       Ad.dispose();
      },
      onAdFailedToShowFullScreenContent: (RewardedAd Ad, AdError error) {
        Ad.dispose();
      },
      onAdShowedFullScreenContent: (RewardedAd Ad) {

      },
      onAdImpression: (RewardedAd Ad) => print('$Ad Impression Occured'),

    );
  }

}