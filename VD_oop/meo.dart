import 'dongVat.dart';

class Meo extends DongVat {
  late String name;
  late int age;

  // dart k hỗ trợ nạp chồng phương thức như java,
  // nên dùng tùy chọn tham số
  void keu([String? tiengNguoi]) {
    if (tiengNguoi != null) {
      print(tiengNguoi);
    } else {
      print("Meo Meo");
    }
  }

  // Ghi đè phương thức
  void an() {
    print("ăn cá");
  }
// Tính đóng gói: ở dart thì ta dùng '_' thay vì là private
  void _long() {
    print('Lông dài');  
  }
}
