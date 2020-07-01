class PowerGrid {
  
  List<NuclearPowerPlant> connectedPlants = [];
  
  addPlant(NuclearPowerPlant plant){
    plant.turnOn();
    connectedPlants.add(plant);
  }
}

class NuclearPowerPlant {
  turnOn(){
    print ('power plant is turned on')
  }
}
