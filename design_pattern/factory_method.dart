/*
  Mẫu thiết kế Factory Method cung cấp một phương thức để tạo đối tượng mà không cần chỉ 
  định lớp chính xác của đối tượng sẽ được tạo.
 */

enum EmployeeType { Hr, Boss, Dev }

abstract class Employee {
  void work() {}

  // Factory method pattern
  static Employee createEmploy(EmployeeType type) {
    switch (type) {
      case EmployeeType.Dev:
        return Dev();
      case EmployeeType.Hr:
        return HrManager();
      case EmployeeType.Boss:
        return Boss();
      default:
        throw Exception('Invalid employee type');
    }
  }
}

class Dev implements Employee {
  @override
  void work() {
    print('coding an app');
  }
}

class HrManager implements Employee {
  @override
  void work() {
    print('recruiting people');
  }
}

class Boss implements Employee {
  @override
  void work() {
    print('Leading on people');
  }
}

void main() {
  var people = Employee.createEmploy(EmployeeType.Hr);
  people.work();
}
