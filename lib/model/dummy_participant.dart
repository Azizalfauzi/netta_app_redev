class DummyParticipant {
  final int id;
  final String name;
  final String datetime;
  final String status;

  DummyParticipant(this.id, this.name, this.datetime, this.status);
}

List<DummyParticipant> mockParticipant = [
  DummyParticipant(1, 'Dhea Ardina', '09:00 20/07/2022', "Present"),
  DummyParticipant(2, 'Septy Rahmadilha Iqmawan', '08:30 20/07/2022', 'Abent'),
  DummyParticipant(3, 'Salsabila Anza Salasa', '08:40 20/07/2022', 'Present'),
];
