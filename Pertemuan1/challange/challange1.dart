void main() {
  // mendeklarasi variabel sesuai persyaratan challenge !
  String nama = 'febrian andhika'; // tipe data string
  int tahunBerdiri = 2019; // tipe data int
  String pemilik = 'febrian andhika'; // tipe data string
  String alamat = 'bengkalis'; // tipe data string
  String telepon = '082345678654'; // tipe data string
  bool statusBuka = false; // tipe data boolean

  List<Map> warnet = [
    {'menu': 'Mie Goreng', 'harga': 40000},
    {'menu': 'Nasi Goreng', 'harga': 20000},
    {'menu': 'Lokan Saos', 'harga': 58000},
    {'menu': 'Cumi Baakar', 'harga': 30000}
  ]; // makanan bertipe data list namun data nya berisi map

  List<Map> minuman = [
    {'menu': 'Kelapa Muda', 'harga': 5000},
    {'menu': 'Jus Jeruk', 'harga': 10000},
    {'menu': 'Teh Es', 'harga': 3000}
  ]; // minuman bertipe data list namun data nya berisi map

  print(
      'Nama Pemilik restoran ini $nama adalah $pemilik, berdiri pada tahun $tahunBerdiri. Beralamat di $alamat, No Telp $telepon.\n Restoran Sedang ${(statusBuka) ? 'buka' : 'tutup'}');
  print(
      'Di restoran $nama, terdapat menu makanan dan minuman seperti berikut !\n[ MAKANAN ]');

  makanan.forEach((data) {
    print('${data['menu']}\nHarga : ${data['harga']}');
  }); // menggunakan foreach untuk melakukan looping data map pada list

  print('\n[ MINUMAN ]');
  minuman.forEach((data) {
    print('${data['menu']}\nHarga : ${data['harga']}');
  }); // menggunakan foreach untuk melakukan looping data map pada list
}
