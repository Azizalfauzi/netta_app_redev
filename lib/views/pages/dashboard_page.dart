part of 'pages.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  Widget _headerDashboard() {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 3,
      width: double.infinity,
      child: Padding(
        padding:
            const EdgeInsets.only(left: defaultMargin, right: defaultMargin),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height / 15,
                bottom: MediaQuery.of(context).size.height / 15,
              ),
              child: Text(
                'Dashboard',
                style: blackTextStyleInter.copyWith(
                  fontWeight: bold,
                  fontSize: 20,
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height / 7,
              decoration: BoxDecoration(
                color: kPrimaryColor,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      right: defaultMargin,
                      left: defaultMargin,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Event name',
                          style:
                              whiteTextStyleInter.copyWith(fontWeight: light),
                        ),
                        Text(
                          'Neng Zahra Party',
                          style: orangeTextStyleInter.copyWith(
                            fontWeight: regular,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 3,
                    height: MediaQuery.of(context).size.height / 7,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/ic_kado.png'),
                      ),
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _contentOneDashboard() {
    return Padding(
      padding: const EdgeInsets.only(
        right: defaultMargin,
        left: defaultMargin,
      ),
      child: SizedBox(
        width: double.infinity,
        height: MediaQuery.of(context).size.height / 4,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Status',
              style: blackTextStyleInter.copyWith(
                fontWeight: bold,
                fontSize: 20,
              ),
            ),
            SizedBox(
              width: double.infinity,
              height: MediaQuery.of(context).size.height / 5,
              child: Padding(
                padding: const EdgeInsets.only(
                  top: defaultMargin,
                  bottom: defaultMargin,
                ),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Row(
                      children: mockStatus
                          .map(
                            (e) => Padding(
                              padding:
                                  EdgeInsets.only(left: e.id == 1 ? 0 : 10),
                              child: CardStatus(
                                ic: e.ic,
                                title: e.title,
                                count: e.count,
                              ),
                            ),
                          )
                          .toList(),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _contenTwoDashoard() {
    return Padding(
      padding: const EdgeInsets.only(
        left: defaultMargin,
        right: defaultMargin,
      ),
      child: SizedBox(
        width: double.infinity,
        height: MediaQuery.of(context).size.height / 2.4,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Participants',
              style:
                  blackTextStyleInter.copyWith(fontSize: 20, fontWeight: bold),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 3,
              width: double.infinity,
              child: ListView(
                scrollDirection: Axis.vertical,
                children: [
                  Column(
                    children: mockParticipant
                        .map(
                          (e) => Padding(
                            padding: EdgeInsets.only(top: e.id == 1 ? 0 : 10),
                            child: CardParticipantWidget(
                              name: e.name,
                              datetime: e.datetime,
                              status: e.status,
                              onTap: () {},
                            ),
                          ),
                        )
                        .toList(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF6F6F6),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _headerDashboard(),
            _contentOneDashboard(),
            _contenTwoDashoard(),
          ],
        ),
      ),
      floatingActionButton: SpeedDial(
        animatedIcon: AnimatedIcons.menu_close,
        overlayColor: Colors.black,
        overlayOpacity: 0.4,
        children: [
          SpeedDialChild(
            label: 'Add participants',
            child: const Icon(
              Icons.person,
            ),
          ),
          SpeedDialChild(
            label: 'Scan Qr Code',
            child: const Icon(
              Icons.qr_code_scanner,
            ),
          ),
          SpeedDialChild(
            label: 'Settings',
            child: const Icon(
              Icons.settings,
            ),
          ),
        ],
      ),
    );
  }
}
