void main() {
  PowerGrid grid = PowerGrid();
  NuclearPowerPlant plant = NuclearPowerPlant();
  SolarPlant solar = SolarPlant();
  grid.addPlant(plant);
  grid.addPlant(solar);
}

class PowerGrid {
  List<NuclearPowerPlant> connectedPlants = [];

  addPlant(NuclearPowerPlant plant) {
    plant.turnOn();
    connectedPlants.add(plant);
  }
}

class NuclearPowerPlant {
  turnOn() {
    print('power plant is turned on');
  }
}

class SolarPlant {
  turnOn() {
    print('Solar plant turned on');
  }
}
