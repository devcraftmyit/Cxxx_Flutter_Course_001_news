void main() {
  PowerGrid grid = PowerGrid();
  NuclearPowerPlant plant = NuclearPowerPlant();
  SolarPlant solar = SolarPlant();
  grid.addPlant(plant);
  grid.addPlant(solar);
}

class PowerGrid {
  List<PowerPlant> connectedPlants = [];
  addPlant(PowerPlant plant) {
    plant.turnOn('5 hours');
    connectedPlants.add(plant);
  }
}

abstract class PowerPlant {
  int power;
  turnOn(String duration);
}

class NuclearPowerPlant implements PowerPlant {
  int power = 200;
  turnOn(String hrs) {
    print('Nuclear power plant is turned on Power at $power watts');
  }
}

class SolarPlant implements PowerPlant {
  int power = 300;
  turnOn(String mins) {
    print('Solar plant turned on Power at $power watts');
  }
}
