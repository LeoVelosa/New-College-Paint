//This class isnt currently in use, but this was used in bucket/flood fill. Just stores two x and y values,
//which I would use for cordinates.
class Cords{
  int xCord;
  int yCord;
  
  Cords(int xCord, int yCord){
  this.xCord = xCord;
  this.yCord = yCord;
  }
  
  int getCordX(){
  return xCord;
  }
  int getCordY(){
  return yCord;
  }
  
}
