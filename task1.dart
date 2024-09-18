import 'dart:io';

class Laptop {
  String _Name, _Price, _Processor;
  Laptop(this._Name, this._Price, this._Processor);

  void displyed() {
    print('Name: $_Name, Price: $_Price, Processor: $_Processor');
  }
}

void main() {
  Laptop l1 = Laptop("Asus", "25000", "Ryzen");
  l1.displyed();
}
