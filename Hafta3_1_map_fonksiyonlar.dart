import "dart:io";


selamla(){
  print("Selamlar");
  print("Ho�geldiniz");
}

menu(){
  print("------------------------");
  print("--------- MEN� ---------");
  print("--------- 1- Ekle ------");
  print("--------- 2- D�zenle ---");
  print("--------- 3- Sil -------");
  print("--------- 4- ��k�� -----");
  print("------------------------");
}

int topla(int sayi1, int sayi2){
  int sonuc = sayi1 + sayi2;
  return sonuc;
}

int cikar(int sayi1, int sayi2){
  return sayi1 - sayi2;
}

// Fat Arrow Kullan�m�    => 
int carp(int sayi1, int sayi2) => sayi1*sayi2;

bosluk(){
  print("---------------------\n");
}

// Optional Parameters
notHesapla(int vizePuan, [int? finalPuan]){
  
  /*if(finalPuan == null){
    finalPuan = 0;
  }*/
  
  finalPuan = finalPuan == null ? 0 : finalPuan;
  
  
  double ortalama = (vizePuan * 0.4) + (finalPuan * 0.6);
  print(ortalama);
}


// Optional Named Parameters = �simlendirilmi� opsiyonel parametreler
notHesapla2({int vizePuan=0, int finalPuan=0 }){
  double ortalama = (vizePuan * 0.4) + (finalPuan * 0.6);
  print(ortalama);
}

enum OS{
  Windows,
  Linux,
  MACOS
}

void main() {
  
  
  
  
  /*
  // 1.Yol = Ahmet'in Yolu
  String yildiz = "";
  for(int satir = 1; satir <= 5; satir++){
    for(int sutun=1; sutun <= satir; sutun++){
      yildiz += "*";
    }
    print(yildiz);
    yildiz = "";
  }
  
  */
  
  
  
  
  /*
  var isletimSistemi = OS.Windows;
  switch(){
      
  }
  */
/*
  notHesapla2(finalPuan:93 );
  
  notHesapla2();
  
  notHesapla2(vizePuan: 50, finalPuan: 70);
  
  // Parametre s�ras� �nemli de�ildir
  notHesapla2(finalPuan: 80, vizePuan: 40);
  
  */
  /*
  notHesapla(80);
  
  notHesapla(60, 70);
  
  bosluk();
  print(cikar(8,2));
  
  int toplam = topla(4,5);
  print(toplam);
  
  print(topla(3,5));
  
  // Fonksiyon �a��rma
  // Fonksiyonun ad�n� yazaca��z. Varsa parametre(ler) ekleyece�iz
  selamla();
  
  // menu() fonksiyonunu �a��rd�k
  menu();

  */
  
  
  
  
  /*
  // MAP
  Map<String,String> kelimeler = {
    "car" : "araba",
    "phone" : "telefon",
    "identity" : "kimlik",
    "train" : "tren",
  };
  
  print(kelimeler);
  
  // Elemanlara ula�ma
  print( kelimeler["phone"] );
  print( kelimeler["identity"] );
  
  // Eleman ekleme
  kelimeler["window"] = "pencere";
  kelimeler["potion"] = "iksir";
  print(kelimeler);
  
  // eleman g�ncelleme
  kelimeler["train"] = "oturga�l� g�t�rge�";
  print(kelimeler);
  
  
  // eleman say�s�n� ��renme
  print("Eleman say�s� :${kelimeler.length}");
  
  print("---------------------------------");
  print("Anahtarlar� for in d�ng�s� ile yazd�rma");
  // Map'in anahtarlar�n� yazd�rma
  for(String anahtar in kelimeler.keys)
    print(anahtar);
  
  print("---------------------------------");
  print("De�erleri for in d�ng�s� ile yazd�rma");
  // Map'in de�erlerini yazd�rma
  for(String deger in kelimeler.values)
    print(deger);
  
  print("---------------------------------");
  print("Elemanlar� forEach ile yazd�rma");
  kelimeler.forEach(
    (anahtar, deger){
      //print("Anahtar : $anahtar, De�er : $deger");
      print("$anahtar\t=$deger");
    }
  );
  
  */
 /* 
  // Listeler
  // Bo� bir liste tan�mlama
  List<String> ogrenciler  = [];
  print(ogrenciler);
  
  // Listeye eleman ekleme
  // listeAdi.add(eleman);
  ogrenciler.add("Ali");
  print(ogrenciler);
  
  
  // Bo� olmayan liste olu�turma
  List<int> plakaKodlari = [45, 48, 19, 63, 34];
  print(plakaKodlari);
  
  // listeden eleman ��karmak
  // a) eleman ad� vererek ��karma
  plakaKodlari.remove(19);
  print(plakaKodlari);
  
  // b) indis numaras� vererek ��karma
  plakaKodlari.removeAt(2);
  print(plakaKodlari);
  
  // listeyi bo�altma
  plakaKodlari.clear();
  print(plakaKodlari);
  
  */
  
  
}
