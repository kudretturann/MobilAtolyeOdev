void main() {
  int intveritipi = 50;
  print("int veri tipi:$intveritipi");

  String stringveritipi = "Kudret Turan";
  print("String veri tipi:$stringveritipi");

  double doubleveritipi = 2.88;
  print("Double veri tipi:$doubleveritipi");

  bool boolveritipi = false;
  print("Bool veri tipi:$boolveritipi");

  dynamic dynmaicveritipi = 'Başlangıçta bir stringtir';
  print('dynamic string olan: $dynmaicveritipi');
  dynmaicveritipi = 100;
  print('dynamic int olan: $dynmaicveritipi');

  // dart dilinde char yok strinle karakter ataması yapabiliriz

  int intVeriTipi = 50;
  print("camelCaseÖrnek:$intVeriTipi");

  String string_veri_tipi = "Kudret Turan";
  print("Snake_case_örnek:$string_veri_tipi");

  double DoubleVeriTipi = 2.88;
  print("PascalCaseÖrneği:$DoubleVeriTipi");

  String ad = "Kudret", soyAd = "Turan";
  int yas = 21;
  bool resitMi = yas >= 22;
  print("Ben $ad $soyAd,yaşım $yas reşitlik durumum:$resitMi");
}
