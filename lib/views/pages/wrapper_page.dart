part of 'pages.dart';

class WrapperPage extends StatefulWidget {
  const WrapperPage({Key? key}) : super(key: key);

  @override
  State<WrapperPage> createState() => _WrapperPageState();
}

class _WrapperPageState extends State<WrapperPage> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RoutesCubit, RoutesState>(
      builder: (_, pageState) => (pageState is RoutesSplashPage)
          ? const SplashScreenPage()
          : (pageState is RoutesOnboardingPage)
              ? const OnBoardingPage()
              : (pageState is RoutesLoginPage)
                  ? const LoginPage()
                  : (pageState is RoutesDashboardPage)
                      ? const DashboardPage()
                      : (pageState is RoutesParticipantPage)
                          ? const ParticipantPage()
                          : (pageState is RoutesSettingsPage)
                              ? const SettingPage()
                              : (pageState is RoutesScanPage)
                                  ? const ScannerPage()
                                  : const SplashScreenPage(),
    );
  }
}
