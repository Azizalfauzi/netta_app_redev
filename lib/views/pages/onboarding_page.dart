part of 'pages.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({super.key});

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  final introKey = GlobalKey<IntroductionScreenState>();

  void _onIntroEnd(context) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (_) => const SplashScreenPage()),
    );
  }

  Widget _buildImage(String assetName, [double width = 250]) {
    return Image.asset('assets/images/$assetName', width: width);
  }

  @override
  Widget build(BuildContext context) {
    var bodyStyle = blackTextStyleInter;

    var pageDecoration = PageDecoration(
      bodyAlignment: Alignment.centerLeft,
      titleTextStyle: blackTextStyleInter.copyWith(
        fontWeight: bold,
        fontSize: 20,
      ),
      bodyTextStyle: bodyStyle,
      bodyPadding: const EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      pageColor: Colors.white,
      imagePadding: EdgeInsets.zero,
    );
    return IntroductionScreen(
      key: introKey,
      globalBackgroundColor: Colors.white,
      pages: [
        PageViewModel(
          title: "What is?",
          body:
              "Netta is a useful application to help record the attendance of guest or praticipant at an event.",
          image: _buildImage('ic_icon_one.png'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "For who?",
          body:
              "Netta is used by the committee who wants to record attendance and by participants who want to make attendance.",
          image: _buildImage('ic_icon_two.png'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Try it now!",
          body:
              "What are you waiting for? use Netta now and enjoy your event!.",
          image: _buildImage('ic_icon_three.png'),
          decoration: pageDecoration,
        ),
      ],
      onDone: () => _onIntroEnd(context),
      // onSkip: () => _onIntroEnd(context), // You can override onSkip callback
      showSkipButton: true,
      skipOrBackFlex: 0,
      nextFlex: 0,
      showBackButton: false,
      //rtl: true, // Display as right-to-left
      back: const Icon(
        Icons.arrow_back,
        color: kPrimaryColor,
      ),
      skip: Text(
        'Skip',
        style: blackTextStyleInter,
      ),
      next: const Icon(
        Icons.arrow_forward,
        color: kPrimaryColor,
      ),
      done: Text(
        'Done',
        style: blackTextStyleInter,
      ),
      curve: Curves.fastLinearToSlowEaseIn,
      controlsMargin: const EdgeInsets.all(16),
      dotsDecorator: const DotsDecorator(
        size: Size(10.0, 10.0),
        color: kSecondaryColor,
        activeSize: Size(22.0, 10.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
      ),
    );
  }
}
