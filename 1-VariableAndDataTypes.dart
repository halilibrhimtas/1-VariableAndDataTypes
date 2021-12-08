// Değişkenler ve Veri Türleri - Variables and Data Types


/* Konumuza başlamadan önce bilmemiz gereken bir fonksiyon var. Bu print() fonksiyonudur.
print() fonksiyonu içine yazılan String(aşağıda anlatılıyor) ifadeleri console kısmında çıktı olarak yazar */


void main() {
  /*  1 - Number: Sayısal değerleri tutan veri türüdür. Kapsadığı veri türleri;
  *    int: Tamsayı türünce verileri tutar. 64-bitlik yani -9.223.372.036.854.775.808 ile 9.223.372.036.854.775.807 değer aralığına sahiptir.
  *    double: Ondalık gösterimlerde kullanılır.*/

  int sayi1 = 5;
  double sayi2 = 3.14;


  // Buradaki değişkenler sayısal değerlerdedir. Bu değişkenleri console üzerinde gösterebilmemiz için stringe çevirmemiz gerekir.


  // 1. yöntemimiz sayımızı Stringe çevirmek.

  String string1 = sayi1.toString();
  print(string1); // 5


  //2.yöntemimiz ${değişkenAdı} ile değişkenimizi göstermektir.

  print("Double sayım : ${sayi2}"); // Double sayım : 3.14


  /* num: int ve double türünü içeren bir veri türüdür. */

  num n = sayi1 + sayi2; // burada n değeri 8.14 olacaktır.
  print("num türündeki sayım : ${n}"); // num türündeki sayım : 8.14


  /* 2 -String: İçinde karakter dizileri barındıran veri türüdür. ' ' veya " " arasına yazılır. */

  String ad = "Halil İbrahim";
  String soyad = "Taş";
  print(ad + " " + soyad); // " " ile arada boşluk bıraktık - Halil İbrahim Taş


  /* 3 - Boolean: Doğruluk değerlerini veri olarak tutar. Boolean olan bir veri doğru - true - 1 veya yanlış - false - 0 olabilir.*/

  print(ad == soyad); // false

  // Buradaki "==" ifadesi eşit mi sorusunu sorar. ad değişkeni soyad değişkenine eşit olmadığı için console'daki çıktı false olacaktır.


  /* 4- List: Listeler nesnelerden oluşan koleksiyonlardır.*/

  List listemiz = [
    "pazartesi",
    4,
    5.12
  ]; //Bu şekilde [ ] parantez içerisinde farklı türde veriler olabilir.
  print(listemiz); // [pazartesi, 4, 5.12]

  List<String> gunler = [
    "pazartesi",
    "salı",
    "çarşamba",
    "perşembe",
    "cuma",
    "cumartesi",
    "pazar"
  ];
  print(
      gunler); // [pazartesi, salı, çarşamba, perşembe, cuma, cumartesi, pazar]

  // Yukarıdaki listede, listenin hangi veri türleri içermesi gerektiği < > içerisinde yazarak gösterilmiştir.
  // Bu veri tipinin haricindeki verileri liste kabul etmeyecektir.


  /* 5 - Map: Anahtar - Değer (Key - Value) oluşan bir nesnedir. Anahtarlar ve değerler herhangi bir veri türünden değer olabilir.*/

  Map haftaninGunleri = {
    1: "pazartesi",
    2: "salı",
    3: "çarşamba",
    4: "perşembe",
    5: "cuma",
    6: "cumartesi",
    7: "pazar"
  };
  print(haftaninGunleri[1]); //  pazartesi
  print(haftaninGunleri.keys); //(1, 2, 3, 4, 5, 6, 7)
  print(haftaninGunleri
      .values); //(pazartesi, salı, çarşamba, perşembe, cuma, cumartesi, pazar)

  /*  5 - Set: Aynı türden farklı değerleri içerir. Sırası yoktur ve içinde tekrarlayan elemana izin vermez.*/

  Set <int> kimlikNo = {123,456,789};
  print(kimlikNo); // {123, 456, 789}


  kimlikNo.add(895); // Set'e 895 sayısını ekledik
  print(kimlikNo); // {123, 456, 789, 895}


  var kimlikNo2 = {125,135};
  kimlikNo.addAll(kimlikNo2); // kimlikNo setinin içine kimlikNo2 setini ekledik
  print(kimlikNo); // {123, 456, 789, 895, 125, 135}


  kimlikNo.remove(456); // kimlikNo setinin içinden 456 sayısını kaldırdık
  print(kimlikNo); // {123, 789, 895, 125, 135}


  print(kimlikNo.length); // 5  --- setin uzunluğunu yazdırdık
  print(kimlikNo.first); // 123 --- setin ilk elemanını yazdırdık
  print(kimlikNo.last); // 135  --- setin son elemanını yazdırdık


  List <int> liste = kimlikNo.toList();
  print(liste); // [123, 789, 895, 125, 135]



  // Dynamic - bir değişkenin değeri belirtilmemişse türü dynamic olarak atanır.

  dynamic deneme1 = "kalem";
  deneme1 = 145;
  print(deneme1); // 145

  var deneme2 = "kalem";

  //deneme2 = 145; - bu kod hata verip çalışmayacaktır çünkü deneme2 değişkeni ilk atanan değerin türünü almıştır ve veri türü değiştirilemez.
  // dynamic türde ise değişken her zaman başka veri tiplerine değişebilir.

  print(deneme2);

  // Aritmetik Operatörler
  int a = 10;
  int b = 5;

  print("${a} ile ${b}'in toplamı ${a+b}'dir."); // 10 ile 5'in toplamı 15'dir.
  print("${a} ile ${b}'in farkı ${a-b}'dir.");// 10 ile 5'in farkı 5'dir.
  print("${a} ile ${b}'in çarpımı ${a*b}'dir."); // 10 ile 5'in çarpımı 50'dir.
  print("${a} ile ${b}'in bölümü ${a/b}'dir."); // 10 ile 5'in bölümü 2.0'dir.
  print("${a} ile ${b}'in bölümünden kalan ${a%b}'dir."); // 10 ile 5'in bölümünden kalan 0'dir.

  // İlişkisel Operatörler

  print("${a}, ${b}'den büyüktür :  ${a>b}"); //10, 5'den büyüktür. true   ---- büyük eşittir operatörü ">="
  print("${a}, ${b}'den küçüktür : ${a<b}");// 10, 5'den küçüktür. false  ---- küçük eşittir operatörü "<="
  print("${a}, ${b}'e eşittir : ${a==b}");// 10, 5'e eşittir. false
  print("${a}, ${b}'e eşit değildir : ${a<b}"); // 10, 5'e eşit değildir. false

}
