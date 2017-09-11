int CuadradoX = 90; 
int CuadradoY = 190; 
float rotCua;
color Cua = color(211, 84, 0);
color strCua = 0;

int TrapecioX = 180; 
int TrapecioY = 190; 
float rotTra;
color Tra = color(231, 24, 15);
color strTra = 0;

int PeqX = 150; 
int PeqY = 100; 
float rotPeq;
color Peq = color(255, 195, 0);
color strPeq = 0;

int Peq1X = 75; 
int Peq1Y = 100; 
float rotPeq1;
color Peq1 = color(68, 198, 39);
color strPeq1 = 0;

int MedX = 90; 
int MedY = 300; 
float rotMed;
color Med = color(110,44,0);
color strMed = 0;

int GrandX = 230; 
int GrandY = 270; 
float rotGrand;
color Grand = color(176, 139, 24);
color strGrand = 0;

int Grand1X = 140; 
int Grand1Y = 340; 
float rotGrand1;
color Grand1 = color(36, 104, 9);
color strGrand1 = 0;

void setup(){
  size(1000,1000);
}

void draw(){
  background(180);
  rect(500,100,200,200);
  pushStyle();
  pushMatrix();
  stroke(strCua);
  fill(Cua);
  translate(CuadradoX,CuadradoY);
  rotate(rotCua);
  quad(0, -50, -50, 0, 0, 50, 50, 0);
  popMatrix();
  popStyle();

  pushStyle();
  pushMatrix();
  stroke(strTra);
  fill(Tra);
  translate(TrapecioX,TrapecioY);
  rotate(rotTra);
  quad(-25,-50,25,-100,25,0,-25,50);
  popMatrix();
  popStyle();

  pushStyle();
  pushMatrix();
  stroke(strPeq);
  fill(Peq);
  translate(PeqX,PeqY);
  rotate(rotPeq);
  triangle(-50,-25,50,-25,0,25);
  popMatrix();
  popStyle();

  pushStyle();
  pushMatrix();
  stroke(strPeq1);
  fill(Peq1);
  translate(Peq1X,Peq1Y);
  rotate(rotPeq1);
  triangle(-25,-50,-25,50,25,0);
  popMatrix();
  popStyle();
  
  pushStyle();
  pushMatrix();
  stroke(strMed);
  fill(Med);
  translate(MedX,MedY);
  rotate(rotMed);
  triangle(-50,-50,50,-50,-50,50);
  popMatrix();
  popStyle();
 
  pushStyle();
  pushMatrix();
  stroke(strGrand);
  fill(Grand);
  translate(GrandX,GrandY);
  rotate(rotGrand);
  triangle(50,-100,50,100,-50,0);
  popMatrix();
  popStyle();

  pushStyle();
  pushMatrix();
  stroke(strGrand1);
  fill(Grand1);
  translate(Grand1X,Grand1Y);
  rotate(rotGrand1);
  triangle(0,-50,-100,50,100,50);
  popMatrix();
  popStyle();

}

void mousePressed(){
  color c = get(mouseX,mouseY);
    if (c == color(211, 84, 0)){
      if(mouseButton==LEFT){
        strCua = 255;
        strTra = 0;
        strPeq = 0;
        strPeq1 = 0;
        strMed = 0;
        strGrand = 0;
        strGrand1 = 0; 
      }
      else{
      strCua = 0;  
      }
    }
    else{
      if (c == color(231, 24, 15)){
      if(mouseButton==LEFT){
        strCua = 0;
        strTra = 255;
        strPeq = 0;
        strPeq1 = 0;
        strMed = 0;
        strGrand = 0;
        strGrand1 = 0; 
      }
      else{
      strTra = 0;
      }
    }
    else{
      if (c == color(255, 195, 0)){
      if(mouseButton==LEFT){
        strCua = 0;
        strTra = 0;
        strPeq = 255;
        strPeq1 = 0;
        strMed = 0;
        strGrand = 0;
        strGrand1 = 0; 
      }
      else{
      strPeq = 0;
      }
    }
    else{
      if (c == color(68, 198, 39)){
      if(mouseButton==LEFT){
        strCua = 0;
        strTra = 0;
        strPeq = 0;
        strPeq1 = 255;
        strMed = 0;
        strGrand = 0;
        strGrand1 = 0; 
      }
      else{
      strPeq1 = 0;
      }
    }
    else{
      if (c == color(110,44,0)){
      if(mouseButton==LEFT){
        strCua = 0;
        strTra = 0;
        strPeq = 0;
        strPeq1 = 0;
        strMed = 255;
        strGrand = 0;
        strGrand1 = 0; 
      }
      else{
      strMed = 0;
      }
    }
    else{
      if (c == color(176, 139, 24)){
      if(mouseButton==LEFT){
        strCua = 0;
        strTra = 0;
        strPeq = 0;
        strPeq1 = 0;
        strMed = 0;
        strGrand = 255;
        strGrand1 = 0; 
      }
      else{
      strGrand = 0;
      }
    }
    else{
      if (c == color(36, 104, 9)){
      if(mouseButton==LEFT){
        strCua = 0;
        strTra = 0;
        strPeq = 0;
        strPeq1 = 0;
        strMed = 0;
        strGrand = 0;
        strGrand1 = 255; 
      }
      else{
      strGrand1 = 0;
      }    }    }    }    }    }    }    }

}



void mouseDragged(){
  if(strCua == 255){
    int TempxCua = mouseX - CuadradoX;
    int TempyCua = mouseY - CuadradoY;
    CuadradoX += TempxCua;
    CuadradoY += TempyCua;
  }
  else{
    if(strTra == 255){
    int TempxTra = mouseX - TrapecioX;
    int TempyTra = mouseY - TrapecioY;
    TrapecioX += TempxTra;
    TrapecioY += TempyTra;
  }
  else{
    if(strPeq == 255){
    int TempxPeq = mouseX - PeqX;
    int TempyPeq = mouseY - PeqY;
    PeqX += TempxPeq;
    PeqY += TempyPeq;
  }
  else{
    if(strPeq1 == 255){
    int TempxPeq1 = mouseX - Peq1X;
    int TempyPeq1 = mouseY - Peq1Y;
    Peq1X += TempxPeq1;
    Peq1Y += TempyPeq1;
  }
  else{
    if(strMed == 255){
    int TempxMed = mouseX - MedX;
    int TempyMed = mouseY - MedY;
    MedX += TempxMed;
    MedY += TempyMed;
  }
  else{
    if(strGrand == 255){
    int TempxGrand = mouseX - GrandX;
    int TempyGrand = mouseY - GrandY;
    GrandX += TempxGrand;
    GrandY += TempyGrand;
  }
  else{
    if(strGrand1 == 255){
    int TempxGrand1 = mouseX - Grand1X;
    int TempyGrand1 = mouseY - Grand1Y;
    Grand1X += TempxGrand1;
    Grand1Y += TempyGrand1;
  }  }  }  }  }  }  }
}

    

void keyPressed(){
  if(key == 'G' || key == 'g'){
    if(strCua == 255){
      rotCua += radians(45);
    }
    else{
    if(strTra == 255){
      rotTra += radians(45);  
    }
    else{
    if(strPeq == 255){
      rotPeq += radians(45);
    }
    else{
    if(strPeq1 == 255){
      rotPeq1 += radians(45);
    }
    else{
    if(strMed == 255){
      rotMed += radians(45);
    }
    else{
    if(strGrand == 255){
      rotGrand += radians(45);
    }
    else{
    if(strGrand1 == 255){
      rotGrand1 += radians(45);
    }  }  }  }  }  }  }
  }
}