part of 'pages.dart';

class ScannerPage extends StatefulWidget {
  const ScannerPage({Key? key}) : super(key: key);

  @override
  State<ScannerPage> createState() => _ScannerPageState();
}

class _ScannerPageState extends State<ScannerPage> {
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
  Barcode? barcode;
  QRViewController? controller;

  @override
  void reassemble() {
    super.reassemble();
    if (Platform.isAndroid) {
      controller!.pauseCamera();
    } else if (Platform.isIOS) {
      controller!.resumeCamera();
    }
  }

  Widget buildControllButton() => SizedBox(
        width: MediaQuery.of(context).size.width / 1.1,
        height: MediaQuery.of(context).size.height / 15,
        child: Row(
          children: [
            SizedBox(
              width: 50,
              height: 50,
              child: IconButton(
                onPressed: () {
                  context.read<RoutesCubit>().emit(RoutesDashboardPage());
                },
                icon: const Icon(
                  Icons.arrow_back_ios,
                  color: Colors.white,
                ),
              ),
            ),
            Expanded(
              child: Center(
                child: Text(
                  'Participants',
                  style: whiteTextStyleInter.copyWith(
                      fontWeight: medium, fontSize: 15),
                ),
              ),
            ),
            Container(
              width: 50,
              height: 50,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: IconButton(
                color: Colors.white,
                onPressed: () async {
                  await controller?.toggleFlash();
                  setState(() {});
                },
                icon: FutureBuilder<bool?>(
                  future: controller?.getFlashStatus(),
                  builder: (context, snapshot) {
                    if (snapshot.data != null) {
                      return Icon(
                          snapshot.data! ? Icons.flash_on : Icons.flash_off);
                    } else {
                      return Container();
                    }
                  },
                ),
              ),
            ),
          ],
        ),
      );

  Widget buildQrView(BuildContext context) => QRView(
        key: qrKey,
        onQRViewCreated: onQrViewCreated,
        overlay: QrScannerOverlayShape(
          borderColor: Colors.orange,
          borderWidth: 10,
          borderLength: 20,
          borderRadius: 10,
          cutOutSize: MediaQuery.of(context).size.width * 0.6,
        ),
      );
  void onQrViewCreated(QRViewController controller) {
    setState(() {
      controller.resumeCamera();
      this.controller = controller;
    });
    controller.scannedDataStream.listen((barcode) => setState(() async {
          this.barcode = barcode;
          if (barcode.code!.length < 10 || barcode.code!.length > 10) {
            Flushbar(
              duration: const Duration(milliseconds: 3000),
              flushbarPosition: FlushbarPosition.TOP,
              backgroundColor: Colors.red,
              titleText: Text(
                'Qr Code Tidak Valid',
                style: whiteTextStyleInter.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              messageText: Text(
                'Lakukan scan qr code yang terdaftar!',
                style: whiteTextStyleInter.copyWith(
                  fontWeight: FontWeight.w300,
                ),
              ),
            ).show(context);
          }
        }));
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        context.read<RoutesCubit>().emit(RoutesDashboardPage());
        return false;
      },
      child: Scaffold(
        body: Stack(
          alignment: Alignment.center,
          children: [
            buildQrView(context),
            Positioned(
              top: 50,
              child: buildControllButton(),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }
}
