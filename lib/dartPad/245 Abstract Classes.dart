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
    plant.turnOn();
    connectedPlants.add(plant);
  }
}

abstract class PowerPlant {
  turnOn();
}

class NuclearPowerPlant implements PowerPlant {
  turnOn() {
    print('power plant is turned on');
  }
}

class SolarPlant implements PowerPlant {
  turnOn() {
    print('Solar plant turned on');
  }
}