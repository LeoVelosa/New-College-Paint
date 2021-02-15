import java.util.Queue; 
import java.util.LinkedList; 
// I'm keeping the draw function and mouseClicked functions in their own
// seperate tabs cause you are putting the functions you make into either
// one of these.

 void mouseClicked(){
   
   exitButtonFunction();
   //bucketFunction(); 
 }

void exitButtonFunction(){
   if(mouseX>width*.965 && mouseY<TRheight){
     exit(); 
   }
}


//Not working, do not use, its very slow.
void bucketFunction(){
  color fillColor=get(mouseX,mouseY);
  Queue<Cords> DFS= new LinkedList<Cords>();
//  Queue<Cords> proxyDFS= new LinkedList<Cords>();
  DFS.add(new Cords(mouseX,mouseY));

  while(DFS.size() > 0){
    int size=DFS.size();
    int l=0;
  while(l<size){
    
    int x=DFS.peek().getCordX();
    int y=DFS.peek().getCordY();

    println(x, y);

    set(x,y, color(0));    
    
    if(get(x+1,y-1)== fillColor && !DFS.contains(new Cords(x+1,y-1))){
    DFS.add(new Cords(x+1,y-1));
    }
    
    if(get(x+1,y+1)== fillColor && !DFS.contains(new Cords(x+1,y+1))){
    DFS.add(new Cords(x+1,y+1));
    }
    if(get(x-1,y-1)== fillColor && !DFS.contains(new Cords(x-1,y-1))){
    DFS.add(new Cords(x-1,y-1));    
    }
    if(get(x-1,y+1)== fillColor && !DFS.contains(new Cords(x-1,y+1))){
    DFS.add(new Cords(x-1,y+1));          
    }
    DFS.remove();
    l++;
  }

}

}
