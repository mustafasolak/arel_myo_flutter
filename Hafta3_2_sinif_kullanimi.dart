class User {
  // Fields = Sýnýf deðiþkenleri
  String? username;
  String? password;
  String? displayName;
  int? _age;

  // Constructor  = Yapýcý fonksiyon
  // Sýnýftan nesne üretildiðinde ilk çalýþan fonksiyondur
  // Sýnýf adý ile ayný olur
  // Parametre alabilir veya boþ da olabilir

  User(this.username, this.password, this.displayName, this._age);

  /*
   * Bu yapýyý da kullanabilirsiniz. Ancak diðerini tavsiye ederiz.
   *  User(String? _username, String? _password, String? _displayName, int? _age){
    this.username = _username;
    this.password = _password;
    this.displayName = _displayName;
    this._age = _age;
  }
  */

  // Getter ve Setter Fonksiyonlarý
  // Getter : Bir sýnýf deðiþkeninin deðerini almak için kullanýlýr
  // Setter : Bir sýnýf deðiþkenine deðer atamak için kullanýlýr

  // GETTERS
  String? get getUserName => username;
  String? get getPassword => password;
  String? get getDisplayName => displayName;
  int? get getAge => _age;

  // SETTERS
  set setUserName(String? value) => this.username = value;
  set setPassword(String? value) => this.password = value;
  set setDisplayName(String? value) => this.displayName = value;
  set setAge(int? value) => this._age = value;

  //Functions
  void info() {
    print("Username \t: $username");
    print("Password \t: $password");
    print("Display Name \t: $displayName");
    print("Age \t\t: $_age");
    print("");
  }

  // login() fonksiyonu kullanýcý giriþ bilgilerini kontrol eder ve eðer doðru ise true
  // yanlýþ ise false döndürür
  bool login() {
    return username == "admin" && password == "1234" ? true : false;
    /*if( username == "admin" && password )
      return true;
    else 
      return false;*/
  }
}

void main() {
  User user1 = User("admin", "4545", "Yönetici", 34);
  print(user1._age);
  print(user1.getAge);

  user1.info();

  user1.setUserName = "msolak";
  user1.info();

  user1.setAge = 20;
  user1.setPassword = "15351";
  user1.info();

  user1.setUserName = "admin";
  user1.setPassword = "1234";

  if (user1.login())
    print("Hoþgeldiniz, baþarýyla giriþ yapýldý");
  else
    print("Bilgilerinizi kontrol ederek tekrar deneyiniz");
}
