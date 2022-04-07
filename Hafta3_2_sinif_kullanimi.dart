class User{
  // Fields = S�n�f de�i�kenleri
  String? username;
  String? password;
  String? displayName;
  int? _age;
     
  // Constructor  = Yap�c� fonksiyon
  // S�n�ftan nesne �retildi�inde ilk �al��an fonksiyondur
  // S�n�f ad� ile ayn� olur
  // Parametre alabilir veya bo� da olabilir
  
  User(this.username, this.password, this.displayName, this._age);
  
  /*
   * Bu yap�y� da kullanabilirsiniz. Ancak di�erini tavsiye ederiz.
   *  User(String? _username, String? _password, String? _displayName, int? _age){
    this.username = _username;
    this.password = _password;
    this.displayName = _displayName;
    this._age = _age;
  }
  */
  
  // Getter ve Setter Fonksiyonlar�
  // Getter : Bir s�n�f de�i�keninin de�erini almak i�in kullan�l�r
  // Setter : Bir s�n�f de�i�kenine de�er atamak i�in kullan�l�r
    
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
  void info(){
    print("Username \t: $username");
    print("Password \t: $password");
    print("Display Name \t: $displayName");
    print("Age \t\t: $_age");
    print("");
  }
  
  // login() fonksiyonu kullan�c� giri� bilgilerini kontrol eder ve e�er do�ru ise true
  // yanl�� ise false d�nd�r�r
  bool login(){
    return username == "admin" && password == "1234" ? true  : false;
    /*if( username == "admin" && password )
      return true;
    else 
      return false;*/
  } 
  
}

void main(){
  User user1 = User("admin", "4545", "Y�netici", 34);
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
  
  if( user1.login() )
    print("Ho�geldiniz, ba�ar�yla giri� yap�ld�");
  else
    print("Bilgilerinizi kontrol ederek tekrar deneyiniz");
  
  
  
}












