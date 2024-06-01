
//1.soru
double DikdortgenAlan(double Uzunkenar, double Kisakenar) {
  return Uzunkenar * Kisakenar;
}
//2.soru
int Carp(int a, int b) {
  int multiplyByTwo(int x) {
    return x * 2;
  }

  int snc = a;
  for (int i = 1; i < b; i++) {
    snc = multiplyByTwo(snc);
  }

  return snc;
}
//3.soru
void ListeElemaniniSil(List<dynamic> liste, dynamic eleman) {
  liste.remove(eleman);
}

void main(List<String> args) {
  double Uzunkenar = 4.76;
  double Kisakenar = 9.54;
  double AlanBul = DikdortgenAlan(Uzunkenar, Kisakenar);
  print('Dikdörtgenin alanı: $AlanBul');
 
//2.soru
 int a = 5;
  int b = 3;
  int Sonuc = Carp(a, b);
  print('İşlem Sonucu: $Sonuc');

//3.soru

List<int> sayilar = [0,1, 2, 3, 4, 5,6,7,8,9];
  print('Başlangıç listesi: $sayilar');
 ListeElemaniniSil(sayilar, 5);
  print('3 silindikten sonraki liste: $sayilar');







}


