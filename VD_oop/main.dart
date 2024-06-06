
import 'anima.dart';
import 'cho.dart';
import 'dog.dart';
import 'meo.dart' show Meo;

void main() {
  Meo meoCon = new Meo();
  meoCon.keu();
  meoCon.keu('ta la meo');
  meoCon.long();
  meoCon.an();
  meoCon.ngu();
  Cho choCon = new Cho();
  choCon.ngu();

  // Tính trừu tượng (Abstraction)
  Animal animal = new Dog();
  animal.an();
}
