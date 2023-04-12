import 'package:flutter/material.dart';

class StatusDummy {
  final int id;
  final Icon ic;
  final String title;
  final String count;

  StatusDummy(this.id, this.ic, this.title, this.count);
}

List<StatusDummy> mockStatus = [
  StatusDummy(
    1,
    const Icon(
      Icons.people_alt,
      color: Colors.white,
    ),
    'Paticipants',
    '1073',
  ),
  StatusDummy(
    2,
    const Icon(
      Icons.check,
      color: Colors.white,
    ),
    'Present',
    '649',
  ),
  StatusDummy(
    3,
    const Icon(
      Icons.cancel_outlined,
      color: Colors.white,
    ),
    'Absence',
    '394',
  ),
];
