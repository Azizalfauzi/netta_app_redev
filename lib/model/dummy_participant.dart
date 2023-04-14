class DummyParticipant {
  final int id;
  final String name;
  final String datetime;
  final String status;
  final String phone;
  final String eventCode;

  DummyParticipant(
    this.id,
    this.name,
    this.datetime,
    this.status,
    this.phone,
    this.eventCode,
  );
}

List<DummyParticipant> mockParticipant = [
  DummyParticipant(
      1, 'Dhea Ardina', '09:00 20/07/2022', "Present", "082334556441", "AA123"),
  DummyParticipant(2, 'Septy Rahmadilha Iqmawan', '08:30 20/07/2022', 'Absent',
      "08231213131", "AA124"),
  DummyParticipant(3, 'Salsabila Anza Salasa', '08:40 20/07/2022', 'Present',
      "082316751212", "AA125"),
];
