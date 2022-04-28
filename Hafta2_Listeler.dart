void main() {
  
  int sayi = 5;
  print("Sayi :$sayi");
  
  
  List<int> plakalar = [];
  plakalar.add(45);
  plakalar.add(48);
  plakalar.add(19);
  plakalar.add(63);
  print(plakalar);
  for(int sayac=0; sayac < plakalar.length; sayac++){
    print("${sayac+1}.eleman: ${plakalar[sayac]}" );
  }
  
  
  
  
  // EĞER=if kullanımı
  /*
   *  if(koşul){
          // şart doğruysa yapılacaklar
      }

  // Yaş 18 ve üzeri ise Ehliyet alabilirsiniz mesajı yazdıırn
  int yas = 25;
  if(yas >= 18){
    print("Ehliyet alabilirsiniz");
  }else{
    print("yaşınız 18 ve üzeri olmalı");
  }
  
  // Hava sıcaklığı 30 derece ise ekrana “Hava çok sıcak” yazdıralım
  int sicaklik = 30;
  if(sicaklik == 30){
    print("Hava çok sıcak");
  }   */ 
  
  /*
  // 0-10 arası soğuk
  // 11-20 arası ılık
  // 21-34 arası sıcak
  // 35 ve üzeri alev alev
  int sicaklik = -5;
  if(sicaklik>=0 && sicaklik<=10){
    print("soğuk");
  }else if(sicaklik >= 11 && sicaklik<=20 ){
    print("ılık");
  }else if(sicaklik >= 21 && sicaklik <=34 ){
    print("sıcak");
  }else if(sicaklik >=35){
    print("Alev alev");
  }else{
    print("çok soğuk");
  }
  
  
  int ortalama = -5;
  if(ortalama >100 || ortalama <0)
    print("0-100 arası puan giriniz");
  else if(ortalama>=90)
    print("AA");
  else if(ortalama>=85)
    print("BA");
  else if(ortalama>=80)
    print("BB");
  else if(ortalama>=75)
    print("CB");
  else if(ortalama>=65)
    print("CC");
  else if(ortalama>=58)
    print("DC");
  else if(ortalama>=50)
    print("DD");
  else if(ortalama>=40)
    print("FD");
  else if(ortalama>=0)
    print("FF");
  
  
  */
  
  
  

  
  
  /*
  List<String> isimler = [];
  print(isimler);
  
  List<int> sayilar = [10, -5, 4];
  print(sayilar);
  
  // LİSTEYE ELEMAN EKLEME
  // add() metodu ile
  isimler.add("Kaan");
  print(isimler);
  isimler.add("Ali");
  print(isimler);
  isimler.add("Kerem");
  isimler.add("Aysima");
  isimler.add("Defne");
  print(isimler);
  
  
  // LİSTENİN ELEMAN SAYISI ÖĞRENME
  print(isimler.length);
  
  // LİSTENİN BELİRLİ SIRASINDAKİ ELEMANI SİLME
  // 2.indexteki elemanı silelim
  isimler.removeAt(2);
  print(isimler);
  
  // Eleman adı vererek silme
  isimler.remove("Ali");
  print(isimler);
   
  // LİSTEYİ BOŞALTMA, TEMİZLEME
  isimler.clear();
  print(isimler);
  
  // 1-100 arası sayıların toplamını ekrana yazan program 
  int toplam = 0;
  for(int sayac=1; sayac<=100; sayac++)
    toplam += sayac;
  
  print(toplam);
  
  // 0-100 arası çift sayıların toplamını ekrana yazan program 
  toplam = 0;
  for(int sayac=0; sayac<=100; sayac+=2)
    toplam += sayac;
  
  print(toplam);
  
  */
  
  
  /*
  // int türünde değerleri tutacak boş bir liste tanımladık
  List<int> sayilar  = [];
    
  // String türünde değerleri tutacak bir liste tanımladık ve
  // içine değerler attık
  List<String> isimler = ["Ali", "Veli", "Hasan"];
  
  // sayilar listesini ekrana yazdırır
  print(sayilar);
  
  // isimler listesini ekrana yazdırır
  print(isimler);
    
  // Listenin eleman sayısını verir
  print(sayilar.length);
  
  // LİSTEYE ELEMAN EKLEME
  // add() metodu ile eleman ekleme
  sayilar.add(15);
  sayilar.add(20);
  sayilar.add(30);
  sayilar.add(-5);
  sayilar.add(-18);
  print(sayilar);
  

  
  
  
  for(int x=0; x<sayilar.length; x++){
    print(sayilar[x]);
  }
    */
    /*
  // null olabilecek bir değişken tanımlandı
  int? x;
  
  // ekran çıktısı : null
  print(x);
  
  // ??= null ise ata operatörü
  // x null ise içine 45 değerini at
  x ??= 45;
  
  // ekran çıktısı : 45
  print(x);
  
  // x null ise 15 değerini ata
  // ancak bu satır çalışmaz çünkü x null değil
  x ??= 45;
  
  // ekran çıktısı : 45
  print(x);
  
  
  
  
  
  
  
  
  
  dynamic isim = "Ali";
  isim = "Hasan";
  isim = 45;
  isim = false;
  
  var veri = 34;
  veri = 85;
  veri = 70;
  // veri = "ahmet";
  // veri = false;
  
  final sonuc = 3.14;
  //sonuc=3.45;
  
  double sayi = 5.5;
  print(sayi is int);
  print(sayi is String);
  
  
  print(sayi is! String );
  

  
  */
  
  
  
  
  
  
}
