Learn State Management GetX

## Mempermudah dalam navigasi/routes
```dart
Get.to(Home());
```

## Snackbar/dialog/bottomsheets tanpa harus adanya konteks
```dart
Get.snackbar('Hi', 'Aku disini');

Get.defaultDialog(title: "Belajar membuat snackbar menggunakan GetX");
```
## Mempermudah dalam membuat state manager
```dart
var counter = 0.obs; 

Obx() => Text(count.string()); // Text bakal update ketika terjadinya perubahan var = counter
```

## Akses data dari satu contoh di layar lain dengan mudah
```dart
Get.put(Instance());

Instance inst = Get.find();

Text(inst.name);
```

## Mempermudah menyimpan key/value
```dart
GetStorage box = GetStorage();

box.write('key', 'value');

box.read('key);
```

## Mudah dalam mendapatkan data bahasa internasional
```dart
Text("Hello, World".id);

Get.changeLocale(Locale('id'));
```

## Mudah dalam proses perpindahan tema aplikasi
```dart
Get.changeTheme(ThemeData.dark);

Get.changeTheme(ThemeData.light);
```

## Mudah dalam proses validasi
```dart
getUtils.isEmail('abc@gmail.com') ? validate() : errorMessage();
```