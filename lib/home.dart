import 'package:flutter/material.dart';
import 'package:flutteroop/Abstract/kuda.dart';
import 'package:flutteroop/Multilevel/alamat.dart';
import 'package:flutteroop/Hierarchical/kereta.dart';
import 'package:flutteroop/Polymorphism/justin.dart';
import 'package:flutteroop/mobil.dart';
import 'package:flutteroop/models/meong.dart';
import 'package:flutteroop/models/motor.dart';
import 'package:flutteroop/models/player.dart';
import 'package:flutteroop/Hierarchical/pesawat.dart';
import 'package:flutteroop/Single/samsung.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    //list
    List<String> sepatuOlahraga = [
      "Specs",
      "Nike",
      "Ortuseight",
      "Adidas",
      "Mills",
    ];
    for (var i = 0; i < sepatuOlahraga.length; i++) {
      print(sepatuOlahraga[i]);
    }

    Map tokoOlahraga = {
      'jersey': ["Negara", "Klub"],
      'tasOlahraga': ["Adidas", "Nike"],
      'sepatuOlahraga': ["Specs", "Nike", "Ortuseight", "Adidas", "Mills"],
    };
    tokoOlahraga.forEach((category, item) {
      print('Kategori: $category');
      print('Item:');
      item.forEach((item) {
        print('- $item');
      });
    });

    //parameter cons
    Player player = Player(1, "Yuuyake");
    print("Id = ${player.id}");
    print("Player Nickname = ${player.Nickname}");

    //cons constructor
    Meong meong = Meong(name: "Sumbul", color: "Grey");
    print(meong.color);

    //constructor
    Motor motor = Motor("Vario160", 160, "Honda");
    print(motor.nama);
    print(motor.mesin);
    print(motor.merek);

    //getter setter
    Mobil mobil = new Mobil();
    mobil.setMerek("Nissan");
    mobil.setName("Skyline GTR");
    print("Merek: ${mobil.getMerek()}\nName: ${mobil.getName()}");

    //single inheritance
    Samsung samsung = new Samsung();
    samsung.nama = "Samsung A34";
    samsung.harga = 4000000;

    samsung.display();

    //Multilevel inheritance
    var alamat = Alamat();
    alamat.kampung = "Mokla";
    alamat.rt = 3;
    alamat.rw = 13;
    alamat.kecamatan = "Parongpong";
    alamat.kabupaten = "Bandung Barat";
    alamat.provinsi = "Jawa Barat";

    alamat.displayAlamat();

    //hierarchical inheritance
    var pesawat = new Pesawat();
    pesawat.jenis = "Udara";
    pesawat.maskapai = "Garuda Indonesia";
    pesawat.jumKursi = 50;

    pesawat.displayPesawat();

    var kereta = new Kereta();
    kereta.jenis = "Darat";
    kereta.jenisKereta = "Kereta Cepat";
    kereta.jumKursi = 20;

    kereta.displayKereta();

    //Polymorphism
    Person person = Person();
    person.jump();

    Justin justin = Justin();
    justin.jump();

    //Abstract
    Kuda kuda = Kuda();
    kuda.nyala();
    kuda.mati();

    return Scaffold(
      appBar: AppBar(),
    );
  }
}
