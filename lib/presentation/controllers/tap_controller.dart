import 'package:get/get.dart';

class TapControllerGetX extends GetxController {
  int _x = 0;
  int get x => _x;
  RxInt _y = 0.obs;
  RxInt get y => _y;

  void increaseX() {
    _x++;
    update();
  }

  void decreaseX() {
    if (_x > 0) _x--;
    update();
  }

  void increaseY() {
    _y++;
  }

  void decreaseY() {
    if (_y > 0) _y--;
  }

  final RxInt _z = 0.obs;
  int get z => _z.value;
  void totalXY() {
    _z.value = _x + _y.value;
  }
}
