part of 'pages.dart';

class ParticipantPage extends StatefulWidget {
  const ParticipantPage({super.key});

  @override
  State<ParticipantPage> createState() => _ParticipantPageState();
}

class _ParticipantPageState extends State<ParticipantPage> {
  // not a GlobalKey<MyCustomFormState>.
  final _formKey = GlobalKey<FormState>();
  // init var form
  String name = '';
  String email = '';
  String phone = '';

  Future<void> _codeDialog(
    String name,
    String phone,
    String eventCode,
  ) async {
    final ButtonStyle style = ElevatedButton.styleFrom(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5.0),
      ),
      backgroundColor: kPrimaryColor,
    );
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          content: SingleChildScrollView(
            child: ListBody(
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: const Icon(
                      Icons.close,
                    ),
                  ),
                ),
                Text(
                  name,
                  style: blackTextStyleInter.copyWith(
                    fontWeight: bold,
                    fontSize: 16,
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height / 3.5,
                  child: Center(
                    child: Container(
                      width: MediaQuery.of(context).size.width / 3,
                      height: MediaQuery.of(context).size.height / 5,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            'assets/images/ic_barcode.png',
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 4,
                      child: Text(
                        'Phone number',
                        style: blackTextStyleInter.copyWith(
                          fontWeight: regular,
                          fontSize: 12,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        ': $phone',
                        style: blackTextStyleInter.copyWith(
                          fontWeight: regular,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 4,
                      child: Text(
                        'Event Code',
                        style: blackTextStyleInter.copyWith(
                          fontWeight: regular,
                          fontSize: 12,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        ': $eventCode',
                        style: blackTextStyleInter.copyWith(
                          fontWeight: regular,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  height: MediaQuery.of(context).size.height / 22,
                  width: double.infinity,
                  margin: const EdgeInsets.only(
                    top: 20,
                  ),
                  child: ElevatedButton(
                    style: style,
                    onPressed: () {},
                    child: Text(
                      'Share',
                      style: whiteTextStyleInter,
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Future<void> _addPartipantDialog() async {
    final ButtonStyle style = ElevatedButton.styleFrom(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5.0),
      ),
      backgroundColor: kPrimaryColor,
    );
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          content: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: ListBody(
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: const Icon(
                        Icons.close,
                      ),
                    ),
                  ),
                  Text(
                    'Add Participant',
                    style: blackTextStyleInter.copyWith(
                        fontWeight: bold, fontSize: 14),
                  ),
                  Text(
                    'Fill this form to add a new participant',
                    style: blackTextStyleInter.copyWith(
                        fontWeight: light, fontSize: 12),
                  ),
                  // name form
                  const SizedBox(
                    height: 30,
                  ),
                  Text(
                    'Name',
                    style: greyTextStyleInter.copyWith(
                        fontWeight: regular, fontSize: 12),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Colors.black,
                          width: 2.5,
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Colors.grey,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Colors.black,
                          width: 2.5,
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Colors.red,
                          width: 2.5,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      hintText: 'Type your name here. ',
                      hintStyle: greyTextStyleInter.copyWith(
                        fontSize: 12,
                        fontWeight: light,
                      ),
                    ),
                    // The validator receives the text that the user has entered.
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter some name!';
                      }
                      return null;
                    },
                    onSaved: (value) {
                      setState(() {
                        name = value!;
                      });
                    },
                  ),
                  // email form
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Email',
                    style: greyTextStyleInter.copyWith(
                        fontWeight: regular, fontSize: 12),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Colors.black,
                          width: 2.5,
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Colors.grey,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Colors.black,
                          width: 2.5,
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Colors.red,
                          width: 2.5,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      hintText: 'Type your email here. ',
                      hintStyle: greyTextStyleInter.copyWith(
                        fontSize: 12,
                        fontWeight: light,
                      ),
                    ),
                    // The validator receives the text that the user has entered.
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter some email!';
                      }
                      return null;
                    },
                    onSaved: (value) {
                      setState(() {
                        email = value!;
                      });
                    },
                  ),
                  // phone form
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Phone Number',
                    style: greyTextStyleInter.copyWith(
                        fontWeight: regular, fontSize: 12),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Colors.black,
                          width: 2.5,
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Colors.grey,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Colors.black,
                          width: 2.5,
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Colors.red,
                          width: 2.5,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      hintText: 'Type your phone number here. ',
                      hintStyle: greyTextStyleInter.copyWith(
                        fontSize: 12,
                        fontWeight: light,
                      ),
                    ),
                    // The validator receives the text that the user has entered.
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter some phone number!';
                      }
                      return null;
                    },
                    onSaved: (value) {
                      setState(() {
                        phone = value!;
                      });
                    },
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height / 20,
                    width: double.infinity,
                    margin: const EdgeInsets.only(
                      top: 20,
                    ),
                    child: ElevatedButton(
                      style: style,
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          _formKey.currentState!.save();
                          Navigator.pop(context);
                          Flushbar(
                            duration: const Duration(milliseconds: 2000),
                            flushbarPosition: FlushbarPosition.TOP,
                            backgroundColor: Colors.green,
                            titleText: Text(
                              'Add Participant success 😄',
                              style: whiteTextStyleInter.copyWith(
                                  fontWeight: bold),
                            ),
                            messageText: Text(
                              'Berhasil menambahkan participant :',
                              style: whiteTextStyleInter,
                            ),
                          ).show(context);
                        } else {
                          Flushbar(
                            duration: const Duration(milliseconds: 3000),
                            flushbarPosition: FlushbarPosition.TOP,
                            backgroundColor: Colors.red,
                            titleText: Text(
                              'Add participant failed 😞',
                              style: whiteTextStyleInter.copyWith(
                                  fontWeight: bold),
                            ),
                            messageText: Text(
                              'Terdapat form kosong',
                              style: whiteTextStyleInter,
                            ),
                          ).show(context);
                        }
                      },
                      child: Text(
                        'Add participant',
                        style: whiteTextStyleInter,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _headerParticipant() {
    return Padding(
      padding: const EdgeInsets.only(
        left: defaultMargin,
        right: defaultMargin,
        top: defaultMargin * 3,
      ),
      child: SizedBox(
        width: double.infinity,
        height: MediaQuery.of(context).size.height / 5.9,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.arrow_back_ios,
                  ),
                ),
                Text(
                  'Participants',
                  style: blackTextStyleInter.copyWith(
                    fontSize: 20,
                    fontWeight: bold,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    _addPartipantDialog();
                  },
                  icon: const Icon(
                    Icons.add,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: defaultMargin,
                bottom: defaultMargin,
              ),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  prefixIcon: const Icon(
                    Icons.search,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(color: Colors.orange, width: 2.0),
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(color: Colors.white, width: 2.0),
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  hintText: 'Password',
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _contentParticipant() {
    return SizedBox(
      width: double.infinity,
      height: MediaQuery.of(context).size.height / 1.5,
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
                      onTap: () {
                        _codeDialog(
                          e.name,
                          e.phone,
                          e.eventCode,
                        );
                      },
                    ),
                  ),
                )
                .toList(),
          )
        ],
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
            _headerParticipant(),
            _contentParticipant(),
          ],
        ),
      ),
    );
  }
}
