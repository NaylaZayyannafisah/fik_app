import 'package:flutter/material.dart';
import 'package:admin_fik_app/pages/peminjaman/detailpeminjaman_page.dart';
import 'package:admin_fik_app/data/dummy_data.dart';

class CardConfirmed extends StatelessWidget {
  final String studentName;
  final String inputDate;
  final String time;
  final String ruangan;
  final String groupSize;
  final bool isAccepted;

  const CardConfirmed({
    Key? key,
    required this.studentName,
    required this.inputDate,
    required this.time,
    required this.ruangan,
    required this.groupSize,
    required this.isAccepted,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailpeminjamanPage(
              studentName: DummyData.studentName,
              studentNim: DummyData.studentNim,
              inputDate: DummyData.inputDate,
              ruangan: DummyData.ruangan,
              bookDate: DummyData.bookDate,
              jamMulai: DummyData.jamMulai,
              jamSelesai: DummyData.jamSelesai,
              jumlahPengguna: DummyData.jumlahPengguna,
              keterangan: DummyData.keterangan,
            ),
          ),
        );
      },
      child: Card(
        elevation: 4,
        child: Container(
          margin: EdgeInsets.all(8.0),
          padding: EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    studentName,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(inputDate),
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.access_time),
                          SizedBox(width: 12),
                          Text(time),
                        ],
                      ),
                      SizedBox(height: 12),
                      Row(
                        children: [
                          Icon(Icons.location_pin),
                          SizedBox(width: 12),
                          Text(ruangan),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Icon(Icons.group),
                          SizedBox(width: 12),
                          Text(groupSize),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                    decoration: BoxDecoration(
                      color: isAccepted ? Colors.green[500] : Colors.red[500],
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Text(
                      isAccepted ? 'Diterima' : 'Ditolak',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
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
}