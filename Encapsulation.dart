/* 
  Encapsulation đề cập đến việc giữ cho trạng thái bên trong của một đối tượng
  không thể truy cập trực tiếp từ bên ngoài, mà chỉ có thể thông qua các phương thức.

-   Sử dụng dấu _ để chỉ định các thành phần private.
-   Các phương thức getter và setter được sử dụng để truy cập các thuộc tính private.
*/

class Person {
  String _name;

  Person(this._name);

  String get name => _name;
  set name(String name) => _name = name;
}