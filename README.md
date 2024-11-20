# README TUGAS 7

## 1. Stateless Widget dan Stateful Widget

Stateless Widget adalah widget yang tidak memiliki keadaan internal yang berubah selama siklus hidupnya. Mereka cocok untuk tampilan yang statis dan tidak memerlukan pembaruan dinamis, seperti teks statis atau ikon yang selalu sama. Contohnya adalah widget `Text` atau `Icon` yang menampilkan informasi tetap.

Sebaliknya, Stateful Widget memiliki keadaan internal yang dapat berubah seiring waktu atau sebagai respons terhadap interaksi pengguna. Mereka berguna untuk tampilan yang dinamis dan interaktif, seperti tombol yang dapat ditekan atau formulir yang dapat diisi. Contoh Stateful Widget adalah widget yang menggunakan `setState()` untuk memperbarui UI ketika data berubah.

## 2. Widget yang Digunakan dalam Proyek Ini

Dalam proyek ini, saya menggunakan beberapa widget utama untuk membangun antarmuka pengguna:
- **Scaffold**: Menyediakan struktur dasar halaman dengan `AppBar` dan `body`, memungkinkan pengaturan layout yang konsisten.
- **AppBar**: Menampilkan judul aplikasi di bagian atas layar, memberikan navigasi dan konteks.
- **Column dan Row**: Mengatur tata letak widget secara vertikal dan horizontal untuk menyusun elemen-elemen UI.
- **Card**: Menampilkan informasi dalam kotak dengan bayangan, memberikan tampilan yang menarik dan terpisah.
- **GridView**: Menyusun tombol-tombol dalam format grid yang responsif, memastikan tata letak yang rapi pada berbagai ukuran layar.
- **InkWell**: Menangani interaksi sentuhan pada tombol, seperti mendeteksi ketukan dan menampilkan `SnackBar` sebagai umpan balik.

## 3. Fungsi dari setState()

Fungsi `setState()` digunakan dalam Stateful Widget untuk memberi tahu Flutter bahwa ada perubahan dalam keadaan widget yang memerlukan pembaruan UI. Ketika `setState()` dipanggil, Flutter akan memanggil metode `build()` kembali untuk merefleksikan perubahan tersebut pada antarmuka pengguna.

Variabel yang dapat terdampak oleh `setState()` adalah variabel yang menyimpan data atau keadaan yang mempengaruhi tampilan widget. Misalnya, jika ada variabel yang menyimpan jumlah klik tombol, memanggil `setState()` setelah mengubah variabel tersebut akan memperbarui angka yang ditampilkan di UI.

## 4. Perbedaan antara const dan final

`const` dan `final` adalah dua kata kunci di Dart yang digunakan untuk mendeklarasikan variabel yang tidak dapat diubah setelah diinisialisasi, tetapi ada perbedaannya:
- **final**: Variabel yang dideklarasikan dengan `final` dapat diinisialisasi sekali dan tidak dapat diubah lagi setelahnya. Nilainya dapat ditentukan saat runtime.
  
  ```dart
  final String name = 'Patricia';

## 5. Implementasi Proyek Flutter E-Commerce

### A. Membuat Program Flutter Baru dengan Tema E-Commerce

Saya memulai dengan membuat program Flutter baru dengan cara 

  flutter create fuudiui
  cd fuudiui

lalu saya merapikan struktur dengan membuat menu.dart, memindahkan class `MyHomePage` dan class `_MyHomePageState` ke menu.dart, serta menambahkan 

```
import 'package:fuudiui/menu.dart';
``` 
ke main.dart


### B. Membuat Tiga Tombol Sederhana dengan Ikon dan Teks

Saya membuat tiga tombol sederhana menggunakan widget `ItemCard` yang berisi ikon dan teks, masing-masing disusun dalam bentuk `GridView` untuk tampilan yang rapi dan responsif:
- **Lihat Daftar Produk**: Tombol ini menggunakan ikon `Icons.Product` dengan teks "Lihat Daftar Produk".
- **Tambah Produk**: Tombol ini menggunakan ikon `Icons.add` dengan teks "Tambah Produk".
- **Logout**: Tombol ini menggunakan ikon `Icons.logout` dengan teks "Logout".

`GridView` dipilih untuk menyusun ketiga tombol ini dalam bentuk grid tiga kolom agar terlihat rapi dan responsif di berbagai ukuran layar.

### C. Mengimplementasikan Warna-Warna Berbeda untuk Setiap Tombol

Setiap tombol diberi warna latar belakang berbeda untuk memperkuat identitas dan fungsinya:
- **Lihat Daftar Produk**: Menggunakan warna `#F6AE39` (Orange). 
- **Tambah Produk**: Menggunakan warna `#409065` (Green).
- **Logout**: Menggunakan warna `#374061` (Dark Blue).

Saya menerapkan warna-warna ini pada masing-masing instance `ItemHomepage` yang memiliki properti `color`. Ini membantu pengguna mengenali tombol-tombol dengan cepat berdasarkan warna yang konsisten.

### E. Memunculkan Snackbar saat Tombol Ditekan

Setiap tombol diatur menggunakan widget `InkWell`, yang mendeteksi sentuhan pada tombol dan memunculkan `SnackBar` yang memberikan umpan balik kepada pengguna. Saat tombol ditekan, muncul `SnackBar` yang menampilkan pesan berikut:
- **Lihat Daftar Produk**: "Kamu telah menekan tombol Lihat Daftar Produk".
- **Tambah Produk**: "Kamu telah menekan tombol Tambah Produk".
- **Logout**: "Kamu telah menekan tombol Logout".

Dengan menampilkan pesan ini, pengguna dapat memahami respons aplikasi secara langsung terhadap tindakan mereka, yang membantu meningkatkan pengalaman interaksi dan feedback secara real-time.

# README TUGAS 8

## 1. Apa kegunaan `const` di Flutter? Jelaskan apa keuntungan ketika menggunakan `const` pada kode Flutter. Kapan sebaiknya kita menggunakan `const`, dan kapan sebaiknya tidak digunakan?

`const` di Flutter digunakan untuk mendefinisikan nilai yang tidak berubah selama waktu kompilasi, memungkinkan pembuatan widget yang immutable dan meningkatkan efisiensi aplikasi. Keuntungan menggunakan `const` adalah mengurangi penggunaan memori dan meningkatkan performa karena widget yang dideklarasikan sebagai `const` dapat dibangun sekali dan digunakan kembali tanpa perlu di-build ulang setiap kali UI diperbarui. Sebaiknya kita menggunakan `const` ketika nilai atau widget tidak akan berubah selama siklus hidup aplikasi, seperti teks statis atau ikon yang tetap. Namun, `const` tidak sebaiknya digunakan ketika nilai tersebut perlu dinamis atau berubah sebagai respons terhadap interaksi pengguna atau perubahan data, karena hal ini membatasi fleksibilitas dalam memperbarui UI secara dinamis.

## 2. Jelaskan dan bandingkan penggunaan `Column` dan `Row` pada Flutter. Berikan contoh implementasi dari masing-masing layout widget ini!

`Column` dan `Row` adalah dua widget layout utama di Flutter yang digunakan untuk mengatur tata letak secara vertikal dan horizontal. `Column` mengatur widget anaknya secara vertikal dari atas ke bawah, cocok untuk menyusun elemen-elemen yang membutuhkan susunan vertikal seperti daftar atau form. Sebaliknya, `Row` mengatur widget anaknya secara horizontal dari kiri ke kanan, ideal untuk menyusun elemen-elemen sejajar seperti tombol atau ikon. Misalnya, penggunaan `Column` dapat terlihat pada:

```dart
Column(
  children: [
    Text('Nama'),
    TextField(),
    ElevatedButton(onPressed: () {}, child: Text('Submit')),
  ],
)
```

Sedangkan `Row` dapat digunakan seperti:

```dart

Row(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: [
    Icon(Icons.home),
    Icon(Icons.search),
    Icon(Icons.settings),
  ],
)
```

Jadi milih antara `Column` dan `Row` tergantung pada arah tata letak yang diinginkan dalam desain UI

## 3. Sebutkan apa saja elemen input yang kamu gunakan pada halaman form yang kamu buat pada tugas kali ini. Apakah terdapat elemen input Flutter lain yang tidak kamu gunakan pada tugas ini? Jelaskan!

Pada halaman form yang saya buat dalam tugas ini, yaitu pada file `productentry_form.dart`, saya menggunakan beberapa elemen input utama seperti `TextFormField` untuk memasukkan teks seperti nama, deskripsi, dan jumlah produk. Selain itu, saya memanfaatkan `ElevatedButton` sebagai tombol untuk menyimpan data form. Namun, terdapat elemen input Flutter lainnya yang tidak saya gunakan dalam tugas ini, seperti `Radio` untuk pilihan tunggal dari beberapa opsi, `Switch` untuk toggle antara dua keadaan, serta `Slider` untuk memilih nilai dari rentang tertentu. Elemen-elemen tersebut dapat digunakan untuk meningkatkan interaktivitas dan fungsionalitas form sesuai kebutuhan aplikasi yang lebih kompleks.

## 4. Bagaimana cara kamu mengatur tema (`theme`) dalam aplikasi Flutter agar aplikasi yang dibuat konsisten? Apakah kamu mengimplementasikan tema pada aplikasi yang kamu buat?

Saya mengatur tema dalam aplikasi Flutter dengan menggunakan `ThemeData` yang didefinisikan di dalam widget `MaterialApp` pada file `menu.dart`. Dengan mendefinisikan `colorScheme` menggunakan `ColorScheme.fromSeed(seedColor: Colors.orange)` dan mengaktifkan `useMaterial3`, saya memastikan konsistensi tampilan di seluruh aplikasi. Selain itu, tema ini diterapkan secara global sehingga semua widget seperti `AppBar`, tombol, dan teks mengikuti skema warna dan gaya yang telah ditentukan. Implementasi tema ini membantu menciptakan antarmuka yang seragam dan estetis, memudahkan pengelolaan warna dan gaya secara terpusat dalam aplikasi.

## 5. Bagaimana cara kamu menangani navigasi dalam aplikasi dengan banyak halaman pada Flutter?

Saya menangani navigasi dalam aplikasi dengan banyak halaman menggunakan `Navigator` yang disediakan oleh Flutter, seperti yang terlihat pada file `left_drawer.dart`. Dengan menggunakan metode `Navigator.pushReplacement` untuk kembali ke halaman utama (`MyHomePage`) dan `Navigator.push` untuk menuju halaman form produk (`ProductEntryFormPage`), saya dapat mengelola tumpukan halaman dengan efisien. Selain itu, penggunaan `Drawer` memudahkan pengguna untuk berpindah antar halaman melalui menu samping. Pendekatan ini memungkinkan navigasi yang lebih terstruktur dan mudah dikelola, terutama dalam aplikasi yang memiliki beberapa halaman dan kompleksitas navigasi yang tinggi. Dengan demikian, pengguna dapat berpindah antar halaman secara mulus dan intuitif.


# README TUGAS 9 
### 1. Jelaskan mengapa kita perlu membuat model untuk melakukan pengambilan ataupun pengiriman data JSON? Apakah akan terjadi error jika kita tidak membuat model terlebih dahulu?
Saya perlu membuat model untuk memudahkan pengambilan dan pengiriman data JSON antara aplikasi Flutter dan server Django. Dengan model, saya bisa mengubah data JSON yang diterima dari server menjadi objek Dart yang mudah digunakan dalam aplikasi. Ini membuat proses manipulasi dan penampilan data menjadi lebih terstruktur dan efisien.

Jika saya tidak membuat model terlebih dahulu, saya mungkin akan kesulitan dalam mengelola data yang diterima. Tanpa model, ada risiko terjadi kesalahan seperti typo pada key JSON atau tipe data yang tidak sesuai, yang bisa menyebabkan error saat aplikasi dijalankan.

### 2. Jelaskan fungsi dari library http yang sudah kamu implementasikan pada tugas ini
Library `http` yang saya gunakan berfungsi untuk melakukan request HTTP dari aplikasi Flutter ke server Django. Dengan library ini, saya bisa mengambil data dari server (GET), mengirim data ke server (POST), dan melakukan operasi lainnya seperti PUT atau DELETE.

Dalam tugas ini, `http` membantu saya berkomunikasi dengan backend Django. Misalnya, saya menggunakan `http` untuk mengambil daftar produk dalam format JSON dari endpoint yang sudah disediakan, serta mengirim data produk baru yang ditambahkan melalui form di aplikasi.

### 3. Jelaskan fungsi dari CookieRequest dan jelaskan mengapa instance CookieRequest perlu untuk dibagikan ke semua komponen di aplikasi Flutter.
`CookieRequest` berfungsi untuk mengelola session dan cookie dalam aplikasi Flutter. Dengan `CookieRequest`, saya bisa mempertahankan status login pengguna, sehingga tidak perlu login ulang setiap kali melakukan request ke server yang membutuhkan autentikasi.

Instance `CookieRequest` perlu dibagikan ke semua komponen karena banyak bagian aplikasi yang memerlukan informasi autentikasi tersebut. Misalnya, saat mengambil daftar produk yang hanya boleh diakses oleh pengguna yang sudah login, atau saat menambahkan produk baru. Dengan membagikan instance ini, semua komponen bisa menggunakan session yang sama tanpa perlu membuat koneksi baru.

### 4. Jelaskan mekanisme pengiriman data mulai dari input hingga dapat ditampilkan pada Flutter.
Pertama, pengguna mengisi form di aplikasi Flutter untuk menambahkan produk baru. Contohnya, di file `productentry_form.dart`, saya menggunakan `TextFormField` untuk mengambil input pengguna:

```dart
TextFormField(
  decoration: InputDecoration(
    hintText: "Name",
    labelText: "Name",
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(5.0),
    ),
  ),
  onChanged: (String? value) {
    setState(() {
      _name = value!;
    });
  },
  validator: (String? value) {
    if (value == null || value.isEmpty) {
      return "Name tidak boleh kosong!";
    }
    return null;
  },
),
```

Setelah semua input terisi dan tombol "Save" ditekan, data tersebut dikumpulkan dan dikirim ke server menggunakan request POST melalui fungsi `request.postJson()`:

```dart
onPressed: () async {
  if (_formKey.currentState!.validate()) {
    final response = await request.postJson(
      "http://localhost:8000/create-flutter/",
      jsonEncode(<String, String>{
        'name': _name,
        'price': _price.toString(),
        'description': _description,
      }),
    );
    // Handle response
  }
},
```

Di server Django, data tersebut diterima oleh view `create_product_flutter` di `views.py`:

```python
@csrf_exempt
def create_product_flutter(request):
    if request.method == 'POST':
        data = json.loads(request.body)
        new_product = Product.objects.create(
            user=request.user,
            name=data["name"],
            price=int(data["price"]),
            description=data["description"]
        )
        new_product.save()
        return JsonResponse({"status": "success"}, status=200)
    else:
        return JsonResponse({"status": "error"}, status=401)
```

Server memproses data tersebut dan menyimpannya ke dalam database. Setelah itu, aplikasi Flutter bisa mengambil data produk yang ada dengan melakukan request GET ke endpoint `/json/`:

```dart
Future<List<Product>> fetchProduct(CookieRequest request) async {
  final response = await request.get('http://localhost:8000/json/');
  List<Product> listProduct = [];
  for (var d in response) {
    if (d != null) {
      listProduct.add(Product.fromJson(d));
    }
  }
  return listProduct;
}
```

Data yang diterima dalam format JSON kemudian diubah menjadi objek `Product` menggunakan model yang telah dibuat:

```dart
class Product {
  String model;
  String pk;
  Fields fields;

  Product({
    required this.model,
    required this.pk,
    required this.fields,
  });

  factory Product.fromJson(Map<String, dynamic> json) => Product(
    model: json["model"],
    pk: json["pk"],
    fields: Fields.fromJson(json["fields"]),
  );

  // ...
}
```

Terakhir, data produk ditampilkan di aplikasi menggunakan widget seperti `ListView.builder()`:

```dart
return ListView.builder(
  itemCount: snapshot.data!.length,
  itemBuilder: (_, index) {
    var product = snapshot.data![index];
    return InkWell(
      onTap: () {
        // Navigate ke detail page
      },
      child: Container(
        // Display info produknya
      ),
    );
  },
);
```

Dengan mekanisme ini, data yang diinput oleh pengguna dapat dikirim ke server, disimpan, dan kemudian ditampilkan kembali di aplikasi.


### 5. Jelaskan mekanisme autentikasi dari login, register, hingga logout. Mulai dari input data akun pada Flutter ke Django hingga selesainya proses autentikasi oleh Django dan tampilnya menu pada Flutter.

#### Register

Pengguna mengisi form registrasi di aplikasi Flutter, seperti di `register.dart`:

```dart
TextFormField(
  controller: _usernameController,
  decoration: const InputDecoration(
    labelText: 'Username',
    hintText: 'Enter your username',
    // ...
  ),
),
```

Saat tombol "Register" ditekan, data dikirim ke server menggunakan `request.postJson()`:

```dart
onPressed: () async {
  String username = _usernameController.text;
  String password1 = _passwordController.text;
  String password2 = _confirmPasswordController.text;

  final response = await request.postJson(
    "http://localhost:8000/auth/register/",
    jsonEncode({
      "username": username,
      "password1": password1,
      "password2": password2,
    }),
  );
  // Handle respons
},
```

Di server Django, view `register` di `views.py` menerima data tersebut:

```python
@csrf_exempt
def register(request):
    if request.method == 'POST':
        data = json.loads(request.body)
        username = data['username']
        password1 = data['password1']
        password2 = data['password2']

        # Validasi dan pembuatan user baru
        user = User.objects.create_user(username=username, password=password1)
        user.save()
        return JsonResponse({
            "username": user.username,
            "status": 'success',
            "message": "User created successfully!"
        }, status=200)
    else:
        return JsonResponse({
            "status": False,
            "message": "Invalid request method."
        }, status=400)
```

#### Login

Pengguna memasukkan username dan password di halaman login (`login.dart`):

```dart
TextField(
  controller: _usernameController,
  decoration: const InputDecoration(
    labelText: 'Username',
    // ...
  ),
),
// Password field
```

Saat tombol "Login" ditekan, data dikirim ke server:

```dart
onPressed: () async {
  String username = _usernameController.text;
  String password = _passwordController.text;

  final response = await request.login("http://localhost:8000/auth/login/", {
    'username': username,
    'password': password,
  });

  if (request.loggedIn) {
    // Navigate ke home page
  } else {
    //  error message
  }
},
```

Di server Django, view `login` memproses data:

```python
@csrf_exempt
def login(request):
    username = request.POST['username']
    password = request.POST['password']
    user = authenticate(username=username, password=password)
    if user is not None:
        auth_login(request, user)
        return JsonResponse({
            "username": user.username,
            "status": True,
            "message": "Login sukses!"
        }, status=200)
    else:
        return JsonResponse({
            "status": False,
            "message": "Login gagal, periksa kembali email atau kata sandi."
        }, status=401)
```

Jika login berhasil, server mengirim cookie sesi, dan `CookieRequest` di Flutter menyimpan cookie tersebut untuk digunakan pada request selanjutnya.

#### Logout

Saat pengguna memilih logout, aplikasi Flutter mengirim request ke server untuk menghapus sesi:

```dart
final response = await request.logout("http://localhost:8000/auth/logout/");
if (context.mounted) {
  if (response['status']) {
    //  logout success message
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const LoginPage()),
    );
  } else {
    //  error message
  }
}
```

Di server Django, view `logout` menghapus sesi pengguna:

```python
@csrf_exempt
def logout(request):
    username = request.user.username
    try:
        auth_logout(request)
        return JsonResponse({
            "username": username,
            "status": True,
            "message": "Logout berhasil!"
        }, status=200)
    except:
        return JsonResponse({
            "status": False,
            "message": "Logout gagal."
        }, status=401)
```

Dengan mekanisme ini, aplikasi Flutter dapat mengelola autentikasi pengguna dari registrasi, login, hingga logout, dan memastikan bahwa hanya pengguna yang terautentikasi yang dapat mengakses fitur tertentu.


## 6. Implementasi Checklist Secara Step by Step

- **Mengimplementasikan fitur registrasi akun pada proyek tugas Flutter:**

  Saya membuat halaman registrasi di `register.dart`, yang berisi form untuk memasukkan username, password, dan konfirmasi password. Data ini dikirim ke server Django melalui endpoint `/auth/register/`.

```dart
onPressed: () async {
  String username = _usernameController.text;
  String password1 = _passwordController.text;
  String password2 = _confirmPasswordController.text;

  final response = await request.postJson(
    "http://localhost:8000/auth/register/",
    jsonEncode({
      "username": username,
      "password1": password1,
      "password2": password2,
    }),
  );
  // Handle respons
},


- **Membuat halaman login pada proyek tugas Flutter:**

  Saya membuat halaman login di `login.dart`, yang memungkinkan pengguna memasukkan username dan password untuk login. Data login dikirim ke server Django melalui endpoint `/auth/login/`.

  ```dart
  onPressed: () async {
    String username = _usernameController.text;
    String password = _passwordController.text;

    final response = await request.login("http://localhost:8000/auth/login/", {
      'username': username,
      'password': password,
    });

    if (request.loggedIn) {
      // Navigate ke home page
    } else {
      //  error message
    }
  },
  ```


- **Mengintegrasikan sistem autentikasi Django dengan proyek tugas Flutter:**

  Saya menggunakan `CookieRequest` untuk menyimpan session dan cookie yang diberikan oleh Django setelah login. Ini memungkinkan Flutter untuk melakukan request ke endpoint yang membutuhkan autentikasi.

- **Membuat model kustom sesuai dengan proyek aplikasi Django:**

  Saya membuat model `Product` di Flutter di file `product_entry.dart` yang sesuai dengan model di Django:

  ```dart
  class Product {
    String model;
    String pk;
    Fields fields;

    // ...

    factory Product.fromJson(Map<String, dynamic> json) => Product(
      model: json["model"],
      pk: json["pk"],
      fields: Fields.fromJson(json["fields"]),
    );
  }

  class Fields {
    String name;
    String price;
    String description;
    int user;

    // ...
  }
  ```

- **Membuat halaman yang berisi daftar semua item yang terdapat pada endpoint JSON di Django yang telah kamu deploy:**

  Saya membuat halaman `ProductEntryPage` di `list_productentry.dart` yang mengambil data dari endpoint `/json/` dan menampilkannya dalam bentuk list.

  ```dart
  Future<List<Product>> fetchProduct(CookieRequest request) async {
    final response = await request.get('http://localhost:8000/json/');
    // Proses
  }
  ```

- **Tampilkan name, price, dan description dari masing-masing item pada halaman ini:**
  Dalam `ListView.builder()`, saya menampilkan `name`, `price`, dan `description` dari setiap produk:

  ```dart
  return ListView.builder(
    itemCount: snapshot.data!.length,
    itemBuilder: (_, index) {
      var product = snapshot.data![index];
      return InkWell(
        // ...
        child: Container(
          // ...
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(product.fields.name),
              Text("Description: ${product.fields.description}"),
              Text("Price: ${product.fields.price}"),
            ],
          ),
        ),
      );
    },
  );
  ```


- **Membuat halaman detail untuk setiap item yang terdapat pada halaman daftar Item:**

  Saya membuat halaman `ProductDetailPage` di `product_detail_page.dart`. Saat item di daftar ditekan, aplikasi navigasi ke halaman detail tersebut.

  ```dart
  onTap: () {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ProductDetailPage(product: product),
      ),
    );
  },
  ```

- **Halaman ini dapat diakses dengan menekan salah satu item pada halaman daftar Item:**

  Saya menggunakan widget `InkWell` untuk mendeteksi klik pada item dan melakukan navigasi ke halaman detail.

- **Tampilkan seluruh atribut pada model item kamu pada halaman ini:**

  Di `ProductDetailPage`, saya menampilkan semua atribut produk:

  ```dart
  class ProductDetailPage extends StatelessWidget {
    final Product product;

    // ...

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        // ...
        body: SingleChildScrollView(
          // ...
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Name: ${product.fields.name}"),
              Text("Description: ${product.fields.description}"),
              Text("Price: ${product.fields.price}"),
              Text("User ID: ${product.fields.user}"),
            ],
          ),
        ),
      );
    }
  }
  ```

- **Tambahkan tombol untuk kembali ke halaman daftar item:**

  Saya menambahkan tombol back atau menggunakan back button default agar pengguna bisa kembali ke halaman daftar produk.
  ```dart
  ElevatedButton(
    onPressed: () {
      Navigator.pop(context);
    },
    child: const Text('Lihat Produk Lain'),
  ),
  ```


- **Melakukan filter pada halaman daftar item dengan hanya menampilkan item yang terasosiasi dengan pengguna yang login:**

  Di server Django, saya memodifikasi view `show_json` untuk hanya mengembalikan produk milik pengguna yang sedang login:

  ```python
  def show_json(request):
      data = Product.objects.filter(user=request.user)
      return HttpResponse(serializers.serialize("json", data), content_type="application/json")
  ```

  Dengan demikian, aplikasi Flutter hanya menampilkan produk yang terasosiasi dengan pengguna yang login.
