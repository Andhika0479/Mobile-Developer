// class adalah sebuah template atau blueprint
// sedangkan object adalah hasil dari realisasi class/object nyata
// di dalam class terdapat atribut/properti dan method/function

void main() {
  RekeningBank rekeningAndhika = new RekeningBank();
  rekeningAndhika.namaPemilik = 'M.Febrian Andhika M';
  rekeningAndhika.namaBank = 'BRK';
  rekeningAndhika.saldo = 1000000;

  print(rekeningAndhika.saldo);
  print(rekeningAndhika.namaBank);
  print(rekeningAndhika.namaPemilik);

  rekeningAndhika.ceksaldo();

  // membuat objek baru
  RekeningBank rekeningand = new RekeningBank(
      namaPemilik: 'M.Febrian Andhika M', namaBank: 'BRK', saldo: 100000000);

  print(rekeningand.saldo);
  print(rekeningand.ceksaldo());
  print(rekeningand.namaBank);
  print(rekeningand.namaPemilik);
}

class RekeningBank {
  var namaPemilik;
  var namaBank;
  var saldo;

  RekeningBank(
      {this.namaPemilik,
      this.namaBank,
      this.saldo}); //jika hanya dengan () objek saldonya harus diisi, sedangkan dengan menambahkan {} maka saldo menjadi optional

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