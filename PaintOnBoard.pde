//This will allow us to draw anywhere on the board, without
//drawing from inside the options menu when we click on it.

//Apply this to all objects meant to draw, like circles,
//rectangles, ect. I don't know if this should be used 
//with the selection tool

boolean drag;

//If you click on anywhere within the whitespace meant for drawing
 void mousePressed(){
   if(mouseX>LRwidth-LRposX && mouseX<RRposX && mouseY> TRheight-TRposY && mouseY<BRposY){
   if(tool==2){
   mouseRecordX=mouseX;
   mouseRecordY=mouseY;
   }
     drag=true;
   }
 }
 
// Once you have finished clicking anywhere
 void mouseReleased(){
   drag=false;
 }
