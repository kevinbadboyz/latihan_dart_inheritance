// -------- Start of example of Inheritance
// class Hewan {
//   void bernafas() {
//     print('Hewan sedang bernafas');
//   }
// }

// class Anjing extends Hewan {
//   void menggonggong() {
//     print('Anjing menggonggong');
//   }
// }

// class Kucing extends Hewan {
//   void mengeong() {
//     print('Kucing mengeong');
//   }
// }

// void main() {
//   var dog = Anjing();
//   var cat = Kucing();

//   dog.menggonggong();
//   cat.mengeong();
// }
// -------- End of example of Inheritance

// -------- Start of penggabungan fungsi dari beberapa class yang berbeda,
// Dart menyediakan dua solusi utama: Mixin (with) dan implement
// Gunakan Mixin jika Anda ingin menyalin atau membagikan kode/fungsi yang
// sudah jadi ke beberapa class tanpa perlu menulis ulang logikanya.
//  • Karakteristik: Class anak langsung mendapatkan fungsi yang sudah diimplementasikan di dalam mixin.
//  • Kata kunci: Menggunakan mixin saat membuat class fungsi, dan with saat menerapkannya.

// mixin BisaTerbang {
//   void terbang() {
//     print('sedang terbang di udara...');
//   }
// }

// mixin BisaBerenang {
//   void berenang() {
//     print('sedang berenang di air...');
//   }
// }

// class Hewan {}

// class Anjing extends Hewan with BisaTerbang, BisaBerenang {}

// void main() {
//   var dog = Anjing();
//   dog.berenang();
//   dog.terbang();
// }
// -------- End of penggabungan fungsi dari beberapa class yang berbeda,
// Dart menyediakan dua solusi utama: Mixin (with)

// -------- Start of penggabungan fungsi dari beberapa class yang berbeda,
// Dart menyediakan dua solusi utama: Mixin (with) dan implement
// Gunakan Interface jika Anda hanya ingin membuat "kontrak" atau cetak biru.
// Class anak wajib menulis ulang (override) isi fungsi tersebut sendiri.
//  • Karakteristik: Di Dart, setiap class secara implisit adalah interface.
//    Saat Anda menggunakan implements, Anda wajib menulis ulang semua fungsi
//    dan variabel dari class tersebut.
//  • Kata kunci: Menggunakan implements.

class LogikaKamera {
  void ambilFoto() {}
}

class LogikaGPS {
  void lacakLokasi() {}
}

class Smartphone implements LogikaKamera, LogikaGPS {
  void ambilFoto() {
    print('Smartphone sedang mengambil photo...');
  }

  void lacakLokasi() {
    print('Smartphone sedang mengambil koordinat latitude dan longitude...');
  }
}

void main() {
  var hp = Smartphone();
  hp.ambilFoto();
  hp.lacakLokasi();
}
