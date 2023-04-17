part of 'pages.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({super.key});

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  Widget _contentSettingPageOne() {
    return SizedBox(
      width: double.infinity,
      height: MediaQuery.of(context).size.height / 10,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width / 5,
            height: MediaQuery.of(context).size.height / 10,
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.arrow_back_ios,
              ),
            ),
          ),
          Expanded(
            child: Center(
              child: Text(
                'Settings',
                style: blackTextStyleInter.copyWith(
                  fontWeight: bold,
                  fontSize: 16,
                ),
              ),
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width / 5,
            height: MediaQuery.of(context).size.height / 10,
          ),
        ],
      ),
    );
  }

  Widget _contentSettingPageTwo() {
    final ButtonStyle style = ElevatedButton.styleFrom(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      backgroundColor: const Color(0xffFFF2DB),
    );
    return Padding(
      padding: const EdgeInsets.only(
        left: defaultMargin,
        right: defaultMargin,
      ),
      child: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height / 4.5,
        decoration: BoxDecoration(
          color: Colors.white70,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              spreadRadius: 1,
              blurRadius: 1,
              offset: Offset(0, 4), // changes position of shadow
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Admin Data',
                style: blackTextStyleInter.copyWith(
                  fontSize: 20,
                  fontWeight: bold,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'Event Code',
                style: greyTextStyleInter.copyWith(
                  fontWeight: light,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                '8xX9Jg27JUsoFft',
                style: blackTextStyleInter.copyWith(
                  fontWeight: regular,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Password',
                        style: greyTextStyleInter.copyWith(
                          fontWeight: light,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        '***********',
                        style: blackTextStyleInter.copyWith(
                          fontWeight: regular,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height / 25,
                    width: MediaQuery.of(context).size.width / 5,
                    margin: const EdgeInsets.only(
                      top: 20,
                    ),
                    child: ElevatedButton(
                      style: style,
                      onPressed: () {},
                      child: Text(
                        'Edit',
                        style: blackTextStyleInter,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _contentSettingPageThree() {
    final ButtonStyle style = ElevatedButton.styleFrom(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      backgroundColor: const Color(0xffFFF2DB),
    );
    return Padding(
      padding: const EdgeInsets.only(
        top: defaultMargin,
        left: defaultMargin,
        right: defaultMargin,
      ),
      child: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height / 4.5,
        decoration: BoxDecoration(
          color: Colors.white70,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              spreadRadius: 1,
              blurRadius: 1,
              offset: Offset(0, 4), // changes position of shadow
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Event’s Detail',
                style: blackTextStyleInter.copyWith(
                  fontSize: 20,
                  fontWeight: bold,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Event Name',
                        style: greyTextStyleInter.copyWith(
                          fontWeight: light,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Alice’s Birthday party',
                        style: blackTextStyleInter.copyWith(
                          fontWeight: regular,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height / 25,
                    width: MediaQuery.of(context).size.width / 5,
                    margin: const EdgeInsets.only(
                      top: 20,
                    ),
                    child: ElevatedButton(
                      style: style,
                      onPressed: () {},
                      child: Text(
                        'Edit',
                        style: blackTextStyleInter,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Participants',
                        style: greyTextStyleInter.copyWith(
                          fontWeight: light,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        '1073',
                        style: blackTextStyleInter.copyWith(
                          fontWeight: regular,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height / 25,
                    width: MediaQuery.of(context).size.width / 5,
                    margin: const EdgeInsets.only(
                      top: 20,
                    ),
                    child: ElevatedButton(
                      style: style,
                      onPressed: () {},
                      child: Text(
                        'Edit',
                        style: blackTextStyleInter,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF6F6F6),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              _contentSettingPageOne(),
              _contentSettingPageTwo(),
              _contentSettingPageThree(),
            ],
          ),
        ),
      ),
    );
  }
}
