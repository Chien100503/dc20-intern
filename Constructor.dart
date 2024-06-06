class SmartPhones {
  String color = 'black';
  double size = 6.1;
  String company = 'Apple';

  // Constructor mặc định: Dùng để khởi tạo đối tượng với các giá trị cụ thể được truyền vào khi tạo đối tượng.

  SmartPhones(this.color, this.size, this.company);

  // Name Constructor: Dùng để khởi tạo đối tượng với các giá trị cố định đã được định nghĩa trước trong constructor.
  SmartPhones.blueTablet() {
    this.size = 10;
    this.color = 'white';
  }
}

void main() {
  var nexon = SmartPhones('red', 8, 'Oppo');
  print(nexon.size);
  print(nexon.color);
  print(nexon.company);
  var blueTablet = SmartPhones.blueTablet();
  print(blueTablet.size);
  print(blueTablet.color);
}
