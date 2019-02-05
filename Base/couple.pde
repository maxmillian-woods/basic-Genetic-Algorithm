/*couple of dots for making babies*/

class Couple {
  
  Dot parent1;
  Dot parent2;
  
  Couple(Dot a, Dot b) {
    parent1 = a;
    parent2 = b;
  }
  
  
  Dot gimmeBaby(String method) {
    Dot baby = new Dot();
    Dot baby2 = new Dot();
    Brain babyBrain = new Brain(parent1.brain.directions.length);
    
    switch (method) {
      
      case "average": for (int i=0; i < babyBrain.directions.length; i++) {
                          babyBrain.directions[i] = parent1.brain.directions[i].add(parent2.brain.directions[i]).div(2);  //average the directions between the two parents 
                      }
      
      
      case "discrete": PVector[][] parentDirections = {parent1.brain.directions, parent2.brain.directions}; //see below
                       
                       for (int i=0; i < babyBrain.directions.length; i++) {
                         int rand = int(random(2));
                         babyBrain.directions[i] = parentDirections[rand][i];  //for each direction, choose one of the two parents' directions randomly 
                       }
    
    }
   
    baby.brain = babyBrain; //store the modified brain in 'Baby' dot
    baby2.brain = babyBrain;
    return baby;
  }

}
