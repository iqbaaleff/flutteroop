import 'package:flutteroop/Multilevel/kecamatan.dart';

class Alamat extends Kecamatan {
  String? kampung;
  int? rt;
  int? rw;

  void displayAlamat() {
    print("Kampung ${kampung}, RT: ${rt}, RW: ${rw}, Kecamatan ${kecamatan}, Kabupaten ${kabupaten}, ${provinsi}");
  }
}
