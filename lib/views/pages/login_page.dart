part of 'pages.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _obscureText = true;
  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  // not a GlobalKey<MyCustomFormState>.
  final _formKey = GlobalKey<FormState>();
  // init var email pass
  String kode = '';
  String password = '';
  Widget _headerLogin() {
    return SizedBox(
      width: double.infinity,
      height: MediaQuery.of(context).size.height / 2.5,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: MediaQuery.of(context).size.width / 1.5,
            height: MediaQuery.of(context).size.height / 10,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/images/ic_icon_primary.png',
                ),
              ),
            ),
          ),
          Text(
            'Your attending assistant',
            style: whiteTextStyleInter.copyWith(fontSize: 16),
          )
        ],
      ),
    );
  }

  Widget _contentLogin() {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height / 1.67,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(70),
        ),
      ),
      child: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.only(
            left: defaultMargin,
            right: defaultMargin,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Padding(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height / 15,
                      bottom: MediaQuery.of(context).size.height / 15),
                  child: Text(
                    'Login',
                    style: blackTextStyleInter.copyWith(
                      fontWeight: bold,
                      fontSize: 24,
                    ),
                  ),
                ),
              ),
              Text(
                'Code Event',
                style: greyTextStyleInter,
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
                  hintText: 'Type your code here. ',
                  hintStyle: greyTextStyleInter.copyWith(
                    fontSize: 12,
                    fontWeight: light,
                  ),
                ),
                // The validator receives the text that the user has entered.
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter some code!';
                  }
                  return null;
                },
                onSaved: (value) {
                  setState(() {
                    kode = value!;
                  });
                },
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'Password',
                style: greyTextStyleInter,
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                obscureText: _obscureText,
                decoration: InputDecoration(
                  suffix: InkWell(
                    onTap: _toggle,
                    child: Icon(
                      _obscureText ? Icons.visibility : Icons.visibility_off,
                      size: 15.0,
                      color: kFifthColor,
                    ),
                  ),
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
                  hintText: 'Type your password here.',
                  hintStyle: greyTextStyleInter.copyWith(
                    fontSize: 12,
                    fontWeight: light,
                  ),
                ),
                // The validator receives the text that the user has entered.
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter some password';
                  }
                  return null;
                },
                onSaved: (value) {
                  setState(() {
                    password = value!;
                  });
                },
              ),
              const SizedBox(
                height: 20,
              ),
              _buttonLogin(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buttonLogin() {
    final ButtonStyle style = ElevatedButton.styleFrom(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      backgroundColor: kPrimaryColor,
    );
    return Container(
      height: MediaQuery.of(context).size.height / 15,
      width: double.infinity,
      margin: const EdgeInsets.only(
        top: 20,
      ),
      child: ElevatedButton(
        style: style,
        onPressed: () {
          if (_formKey.currentState!.validate()) {
            _formKey.currentState!.save();
            Flushbar(
              duration: const Duration(milliseconds: 2000),
              flushbarPosition: FlushbarPosition.TOP,
              backgroundColor: Colors.green,
              titleText: Text(
                'Login success 😄',
                style: whiteTextStyleInter.copyWith(fontWeight: bold),
              ),
              messageText: Text(
                'Berhasil melakukan login :',
                style: whiteTextStyleInter,
              ),
            ).show(context);
            context.read<RoutesCubit>().emit(RoutesDashboardPage());
          } else {
            Flushbar(
              duration: const Duration(milliseconds: 3000),
              flushbarPosition: FlushbarPosition.TOP,
              backgroundColor: Colors.red,
              titleText: Text(
                'Login failed 😞',
                style: whiteTextStyleInter.copyWith(fontWeight: bold),
              ),
              messageText: Text(
                'Terdapat form kosong',
                style: whiteTextStyleInter,
              ),
            ).show(context);
          }
        },
        child: Text(
          'Login',
          style: whiteTextStyleInter,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DoubleBackToCloseApp(
        snackBar: const SnackBar(
          content: Text('Tap back again to leave'),
        ),
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height / 1,
                color: const Color(0xff2F2F2F),
              ),
              Column(
                children: [
                  _headerLogin(),
                  _contentLogin(),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
