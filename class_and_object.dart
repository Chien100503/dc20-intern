
// Class --------------------------------------
/* 
-   Class là một mô hình hoặc kế hoạch (blueprint) từ đó các đối tượng được tạo ra. 
    Nó định nghĩa các thuộc tính (properties) và các phương thức (methods) mà đối 
    tượng của lớp đó sẽ có.
-   Lớp có thể được coi như là một bản thiết kế của một ngôi nhà, 
    trong đó mô tả chi tiết các đặc điểm như số lượng phòng, kiểu cửa sổ, kiểu mái, v.v.  
*/
// Object -------------------
/* 
-   Object là một thực thể cụ thể của một lớp. Nó được tạo ra từ lớp và chứa các giá trị 
    cụ thể của các thuộc tính mà lớp đã định nghĩa.
-   Đối tượng có thể được coi như là một ngôi nhà thực sự được xây dựng dựa trên bản thiết kế. 
    Mỗi ngôi nhà (đối tượng) sẽ có các đặc điểm cụ thể như màu sơn, kích thước, vị trí, v.v.
*/
class User {
  String name;
  int age;
  String address;

  // Constructor
  User(this.name, this.age, this.address);
}

void main() {
  // Tạo một object từ lớp User với giá trị cụ thể
  var newUser = User('Chien', 21, 'Da Nang');
  print('Name: ' + newUser.name + ' | Address: ' + newUser.address);
  print(newUser.age);
}




