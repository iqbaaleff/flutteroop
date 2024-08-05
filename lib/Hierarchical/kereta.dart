import 'package:flutteroop/Hierarchical/transportasi.dart';

class Kereta extends Transportasi {
  String? jenisKereta;

  void displayKereta() {
    print(
        "Jenis Kereta: ${jenisKereta} \nTransportasi ${jenis} \nJumlah kursi: ${jumKursi}");
  }
}
