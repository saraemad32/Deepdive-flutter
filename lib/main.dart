void main() {
  ZooKeeper z1 = ZooKeeper("Shady");
  ZooKeeper z2 = ZooKeeper("Yousef");
  z1.addAnimal(Lion("Lion"));
  z2.addAnimal(Elephant("Elephant"));
  z1.showAnimals();
  print("====================");
  z2.showAnimals();
}
abstract class Animal {
  String name;
  Animal(this.name);
  void makeSound();
  void displayInfo() {
    print("Animal: $name");
  }
}
class ZooKeeper {
  String keeperName;
  final List<Animal> _animals = [];
  ZooKeeper(this.keeperName);
  void addAnimal(Animal animal) {
    _animals.add(animal);
  }
  void showAnimals() {
    print("Keeper : $keeperName");
    for (var animal in _animals) {
      animal.displayInfo();
      animal.makeSound();
    }
  }
}

class Lion extends Animal {
  Lion(super.name);
  @override
  void makeSound() {
    print("$name Sound : Roar!");
  }

}

class Elephant extends Animal {
  Elephant(super.name);
  @override
  void makeSound() {
    print("$name Sound : Trumpet!");
  }

}