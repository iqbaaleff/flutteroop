import 'package:flutteroop/Hierarchical/transportasi.dart';

class Pesawat extends Transportasi {
  String? maskapai;

  void displayPesawat() {
    print(
        "Transportasi ${jenis} \nJumlah kursi: ${jumKursi} \nMaskapai: ${maskapai}");
  }
}
