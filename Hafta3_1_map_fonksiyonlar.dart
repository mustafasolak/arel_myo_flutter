import "dart:io";


selamla(){
  print("Selamlar");
  print("Hoþgeldiniz");
}

menu(){
  print("------------------------");
  print("--------- MENÜ ---------");
  print("--------- 1- Ekle ------");
  print("--------- 2- Düzenle ---");
  print("--------- 3- Sil -------");
  print("--------- 4- Çýkýþ -----");
  print("------------------------");
}

int topla(int sayi1, int sayi2){
  int sonuc = sayi1 + sayi2;
  return sonuc;
}

int cikar(int sayi1, int sayi2){
  return sayi1 - sayi2;
}

// Fat Arrow Kullanýmý    => 
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


// Optional Named Parameters = Ýsimlendirilmiþ opsiyonel parametreler
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
  
  // Parametre sýrasý önemli deðildir
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
  
  // Fonksiyon çaðýrma
  // Fonksiyonun adýný yazacaðýz. Varsa parametre(ler) ekleyeceðiz
  selamla();
  
  // menu() fonksiyonunu çaðýrdýk
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
  
  // Elemanlara ulaþma
  print( kelimeler["phone"] );
  print( kelimeler["identity"] );
  
  // Eleman ekleme
  kelimeler["window"] = "pencere";
  kelimeler["potion"] = "iksir";
  print(kelimeler);
  
  // eleman güncelleme
  kelimeler["train"] = "oturgaçlý götürgeç";
  print(kelimeler);
  
  
  // eleman sayýsýný öðrenme
  print("Eleman sayýsý :${kelimeler.length}");
  
  print("---------------------------------");
  print("Anahtarlarý for in döngüsü ile yazdýrma");
  // Map'in anahtarlarýný yazdýrma
  for(String anahtar in kelimeler.keys)
    print(anahtar);
  
  print("---------------------------------");
  print("Deðerleri for in döngüsü ile yazdýrma");
  // Map'in deðerlerini yazdýrma
  for(String deger in kelimeler.values)
    print(deger);
  
  print("---------------------------------");
  print("Elemanlarý forEach ile yazdýrma");
  kelimeler.forEach(
    (anahtar, deger){
      //print("Anahtar : $anahtar, Deðer : $deger");
      print("$anahtar\t=$deger");
    }
  );
  
  */
 /* 
  // Listeler
  // Boþ bir liste tanýmlama
  List<String> ogrenciler  = [];
  print(ogrenciler);
  
  // Listeye eleman ekleme
  // listeAdi.add(eleman);
  ogrenciler.add("Ali");
  print(ogrenciler);
  
  
  // Boþ olmayan liste oluþturma
  List<int> plakaKodlari = [45, 48, 19, 63, 34];
  print(plakaKodlari);
  
  // listeden eleman çýkarmak
  // a) eleman adý vererek çýkarma
  plakaKodlari.remove(19);
  print(plakaKodlari);
  
  // b) indis numarasý vererek çýkarma
  plakaKodlari.removeAt(2);
  print(plakaKodlari);
  
  // listeyi boþaltma
  plakaKodlari.clear();
  print(plakaKodlari);
  
  */
  
  
}
