import 'dart:io';
import 'dart:typed_data';

import 'package:another_flushbar/flushbar.dart';
import 'package:double_back_to_close_app/double_back_to_close_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:path_provider/path_provider.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:netta_app_redev/model/dummy_participant.dart';
import 'package:netta_app_redev/model/dummy_status.dart';
import 'package:netta_app_redev/shared/shared.dart';
import 'package:netta_app_redev/views/widget/widget.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';
import 'package:screenshot/screenshot.dart';
import 'package:share_plus/share_plus.dart';

import '../../state/routes/routes_cubit.dart';

part 'dashboard_page.dart';
part 'login_page.dart';
part 'onboarding_page.dart';
part 'splashsrceen_page.dart';
part 'participant_page.dart';
part 'scan_page.dart';
part 'setting_page.dart';
part 'wrapper_page.dart';