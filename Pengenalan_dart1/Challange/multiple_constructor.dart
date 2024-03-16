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
      namaPemilik: 'M.Febrian Andhika M', namaBank: 'BNI', saldo: 50000000);

  print(rekeningand.namaPemilik);
  print(rekeningand.namaBank);
  print(rekeningand.saldo);
  rekeningand.ceksaldo();
  print('---------------------');

  RekeningBank rekeningAndhi = new RekeningBank(
    namaPemilik: 'Andhika',
    namaBank: 'Bank Syariah',
    saldo: 5000000,
  );

  print(rekeningAndhi.getPemilik);
  print(rekeningAndhi.getBank);
  print(rekeningAndhi.saldo);
  rekeningAndhi.setSaldo = 25000000;
  print(rekeningAndhi.saldo);
  rekeningAndhi.setNamaPemilik = 'M.Febrian Andhika M';
  rekeningAndhi.setNamaBank = 'BCA';
  print(rekeningAndhi.getPemilik);
  print(rekeningAndhi.getBank);
  print(rekeningAndhi.getSaldo);
  print('---------------------');

  // membuat objek baru untuk multiple constructor
  // jika .Mandiri nya dihilangkan maka nilai nya akan null
  RekeningBank rekeningMandiri =
      new RekeningBank.Mandiri(namaPemilik: 'Bank Mandiri', saldo: 50000000);
  print(rekeningMandiri
      .getBank); //akan ditetapkan menjadi Mandiri karena nilai Bank nya tidak diisi
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

  /*membuat multiple constructor, ini adalah class barunya
  disini akan dibuat jika nama bank nya tidak diisi maka nilai bank nya akan otomatis 'Mandiri'*/
  RekeningBank.Mandiri(
      {this.namaPemilik, this.namaBank = 'Mandiri', this.saldo = 0});

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