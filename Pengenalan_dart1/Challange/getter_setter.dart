/* getter setter digunakan untuk menetapkan sebuah nilai pada properti
dan bisa diambil kembali nilainya*/

void main() {
  RekeningBank rekeningAndhika = new RekeningBank();
  rekeningAndhika.namaPemilik = 'M.Febrian Andhika M';
  rekeningAndhika.namaBank = 'BRK';
  rekeningAndhika.saldo = 1000000;

  print(rekeningAndhika.saldo);
  print(rekeningAndhika.namaBank);
  print(rekeningAndhika.namaPemilik);

  rekeningAndhika.ceksaldo();
  print('-------------------------');

  // membuat objek baru
  RekeningBank rekeningand = new RekeningBank(
      namaPemilik: 'M.Febrian Andhika M', namaBank: 'BRK', saldo: 10000000);

  print(rekeningand.namaPemilik);
  print(rekeningand.namaBank);
  print(rekeningand.saldo);
  rekeningand.ceksaldo();
  print('---------------------');

  RekeningBank rekeningAndh = new RekeningBank(
    namaPemilik: 'Andhika',
    namaBank: 'Bank Riau Kepri',
    saldo: 15000000,
  );

  print(rekeningAndh.getPemilik);
  print(rekeningAndh.getBank);
  print(rekeningAndh.saldo);
  rekeningAndh.setSaldo = 25000000;
  print(rekeningAndh.saldo);
  rekeningAndh.setNamaPemilik = 'M.Febrian Andhika M';
  rekeningAndh.setNamaBank = 'BRK';
  print(rekeningAndh.getPemilik);
  print(rekeningAndh.getBank);
  print(rekeningAndh.getSaldo);
}

class RekeningBank {
  var namaPemilik;
  var namaBank;
  int saldo;

  // membuat set getter setter
  set setNamaPemilik(var nama) {
    this.namaPemilik = nama;
  }

  set setNamaBank(String namabank) {
    this.namaBank = namabank;
  }

  set setSaldo(int saldoBaru) {
    this.saldo = saldoBaru;
  }

  String get getPemilik {
    return namaPemilik;
  }

  String get getBank {
    return namaBank;
  }

  int get getSaldo {
    return saldo;
  }

  //jika hanya dengan () objek saldonya harus diisi, sedangkan dengan menambahkan {} maka saldo menjadi optional
  RekeningBank({this.namaPemilik, this.namaBank, this.saldo = 0});

  ceksaldo() {
    print('Saldo saat ini adalah : $saldo');
  }

  transfer() {
    print('Transfer ');
  }

  ambilsaldo() {
    print('ambil saldo');
  }
}