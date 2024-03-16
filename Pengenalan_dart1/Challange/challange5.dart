void main() {
  EWallet dompetAndhika = new EWallet('M.Febrian Andhika M');
  print('----Nilai Awal----');
  print(dompetAndhika.getNama);
  print(dompetAndhika.getSaldo);
  print(dompetAndhika.getMutasi);
  print('----Request----');
  dompetAndhika.Request(2000000);
  print(dompetAndhika.getSaldo);
  print(dompetAndhika.getMutasi);
  print('---- Transfer----');
  dompetAndhika.transfer(500000);
  print(dompetAndhika.getSaldo);
  print(dompetAndhika.getMutasi);
}

class EWallet {
  String namaPemilik;
  int saldo = 0;
  List mutasi = [];

  get getNama {
    return namaPemilik;
  }

  get getSaldo {
    return saldo;
  }

  get getMutasi {
    return mutasi;
  }

  set setNama(String nama) {
    this.namaPemilik = nama;
  }

  set setSaldo(int saldoBaru) {
    this.saldo = saldoBaru;
  }

  set setMutasi(List mutasi) {
    this.mutasi = mutasi;
  }

  EWallet(this.namaPemilik);

  transfer(int nominal) {
    saldo -= nominal;
    addMutasi('Transfer $nominal');
  }

  Request(int nominal) {
    saldo = saldo + nominal;
    addMutasi('Request $nominal');
  }

  addMutasi(String transaksi) {
    mutasi.add(transaksi);
  }
}