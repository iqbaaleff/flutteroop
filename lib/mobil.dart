class Mobil {
  String? _merek;
  String? _nama;

  String getMerek() {
    return _merek!;
  }

  String getName() {
    return _nama!;
  }

  void setMerek(String merek) {
    this._merek = merek;
  }

  void setName(String nama) {
    this._nama = nama;
  }
}
