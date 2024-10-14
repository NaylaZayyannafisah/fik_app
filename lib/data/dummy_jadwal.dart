class DummyJadwal {
  final String ruangan;
  final String hari;
  final String jamMulai;
  final String jamSelesai;
  final String namaMatkul;
  final String kodeMatkul;
  final String namaDosen;
  final String kodeDosen;

  DummyJadwal({
    required this.ruangan,
    required this.hari,
    required this.bookDate,
    required this.jamMulai,
    required this.jamSelesai,
    required this.namaMatkul,
    required this.kodeMatkul,
    required this.namaDosen,
    required this.kodeDosen,
  });
}

List<JadwalDummy> jadwalDummyList = [
  JadwalDummy(
    ruangan = 'KHD Kelas 201';
    hari = 'Senin';
    jamMulai = '07:00';
    jamSelesai = '09:00';
    namaMatkul: 'Kalkulus',
    kodeMatkul: 'SSI123456789',
    namaDosen: 'John Doe',
    kodeDosen: 'SSI987654321',
  ),
  JadwalDummy(
    ruangan = 'KHD Kelas 302';
    hari = 'Senin';
    jamMulai = '09:30';
    jamSelesai = '12:00';
    namaMatkul: 'Pemrograman',
    kodeMatkul: 'INF123456780',
    namaDosen: 'Jane Smith',
    kodeDosen: 'IF987654322',
  ),
  JadwalDummy(
    ruangan = 'DS Kelas 401';
    hari = 'Selasa';
    jamMulai = '07:00';
    jamSelesai = '09:00';
    namaMatkul: 'Sistem Operasi',
    kodeMatkul: 'DSI123456781',
    namaDosen: 'Michael Johnson',
    kodeDosen: 'DSI987654323',
  ),
  JadwalDummy(
    ruangan = 'DS Kelas 402';
    hari = 'Selasa';
    jamMulai = '09:30';
    jamSelesai = '12:00';
    namaMatkul: 'Jaringan Komputer',
    kodeMatkul: 'SSD123456782',
    namaDosen: 'Emily Davis',
    kodeDosen: 'SSD987654324',
  ),
];
