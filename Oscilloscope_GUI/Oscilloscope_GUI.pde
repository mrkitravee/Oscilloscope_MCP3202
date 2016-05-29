
import processing.serial.*;

Serial myPort;        // The serial port
float xPos = 75;         // horizontal position of the graph 
//Variables to draw a continuous line.
float lastxPos=75.0;
float lastheight=75.0;
float xPos2 = 75;         // horizontal position of the graph 
//Variables to draw a continuous line.
float lastxPos2=75;
float lastheight2=375;
String keep1 = null;
String keep2 = null;
String inString = null;
String inString2 = null;
float inByte2 = -1;
float inByte = 0;
float inByte3 = 0;
//gui variable
int buttoncolor =#3BF543;
int buttoncolor2 =#3BF543;
int buttoncolor3 =#3BF543;
int munubar =0;
int Y[] ={450, 450};
float X[] ={860, 860};  
float x=4;
float space=1;
float space2=1;
int maxdisplay=900;
float[] maxlength= new float[maxdisplay];
int count = 0;
float[] maxlength2= new float[maxdisplay];
int count2 = 0;
float inplot =0;
float inplot2 = 0;
int check = 0;
int checkcount = 0;
float[] keep_ch1= new float[maxdisplay];
float[] keep_ch2= new float[maxdisplay];
void setup () {
  // set the window size:
  size(1225, 750);  
  // List all the available serial ports
  //println(Serial.list());
  // Check the listed serial ports in your machine
  // and use the correct index number in Serial.list()[].

  myPort = new Serial(this, Serial.list()[0], 115200);  //

  // A serialEvent() is generated when a newline character is received :
  // myPort.bufferUntil('\n');
  background(#E6F0E9);      // set inital background:
  back();
}
void draw () {

  if (  1045<=mouseX&&mouseX <=1095&&450<=mouseY&&mouseY <630 && mouseButton == LEFT) {
    Y[0] = mouseY;
  }
  if (  1095<=mouseX&&mouseX <=1145&&450<=mouseY&&mouseY <630 && mouseButton == LEFT) {
    Y[1] = mouseY;
  }
  if (  790<=mouseX&&mouseX <=940&&170<=mouseY&&mouseY <190 && mouseButton == LEFT) {
    X[0] = mouseX;
  }
  if (  790<=mouseX&&mouseX <=940&&220<=mouseY&&mouseY <240 && mouseButton == LEFT) {
    X[1] = mouseX;
  }

  /*for(int i =0; i < maxdisplay/space; i++){
   space = ((Y[0]-450)/18)+1;
   
   if(i%20<10){
   maxlength[count]= 0;
   maxlength2[count2]= 0;
   }else{
   maxlength[count]= 4000;
   maxlength2[count2]= 4000;
   }
   count = count +1;
   count2=count2 +1 ;
   }*/
  if (count==maxlength.length && count2 == maxlength2.length ) {


    if (buttoncolor3 == #F01B1B) {
    } else {
      xPos = 75;
      lastxPos= 75;
      xPos2 = 75;
      lastxPos2= 75;
      back();
      //println (maxlength.length);
      for (int i = 0; i <maxdisplay/space; i++ ) {
        if (buttoncolor==#3BF543) {

          inplot = maxlength[i];
          keep_ch1[i] = maxlength[i];
          // println (inplot);
          chanal1();
          stroke(0);     //stroke color
          strokeWeight(1);        //stroke wider
        }
      }
      for (int i = 0; i <maxdisplay/space2; i++ ) {

        if (buttoncolor2==#3BF543) {
          inplot2 = maxlength2[i];
          keep_ch2[i] = maxlength2[i];
          chanal2();
          stroke(0);     //stroke color
          strokeWeight(1);        //stroke wider
        }
      }
      count = 0;
      count2=0;
      space2 = (((Y[1]-450)/18)+1);
      space = (((Y[0]-450)/18)+1);
      println(space);
    }
  }

  if (check ==1 ) {
    checkcount = 1;
    menubar();
  } else if (check == 0 && count!=maxlength.length && count2 != maxlength2.length && checkcount==1) {
    if (buttoncolor3 == #F01B1B) {
    } else {
      xPos = 75;
      lastxPos= 75;
      xPos2 = 75;
      lastxPos2= 75;
      back();
      //println (maxlength.length);
      for (int i = 0; i <maxdisplay/space; i++ ) {
        if (buttoncolor==#3BF543) {

          inplot = keep_ch1[i] ;

          // println (inplot);
          chanal1();
          stroke(0);     //stroke color
          strokeWeight(1);        //stroke wider
        }
      }
      for (int i = 0; i <maxdisplay/space2; i++ ) {

        if (buttoncolor2==#3BF543) {
          inplot2 =  keep_ch2[i];

          chanal2();
          stroke(0);     //stroke color
          strokeWeight(1);        //stroke wider
        }
      }
    }
    checkcount=0;
  };
  GUI();
  ////println(mouseX+"---"+mouseY);



  //  serialEvent (myPort);
}
void GUI() {
  fill(150);
  rect(1025, 75, 125, 50, 10 );//menu
  fill(buttoncolor3);
  rect(1025, 150, 125, 50, 10); // stop button
  fill(buttoncolor);
  rect(1025, 225, 125, 50, 10);//chanel 1
  fill(buttoncolor2);
  rect(1025, 300, 125, 50, 10);//chanel 2

  fill(#E6F0E9);
  noStroke();
  rect(995, 440, 400, 200);//time / de 1 background

  fill(0);
  stroke(1);
  for (int i = 0; i<10; i++) { //gen seqnumber time /def
    line(1055, 450+(i*20), 1065, 450+(i*20));
    line(1105, 450+(i*20), 1115, 450+(i*20));
    textSize(10);
    text(i+1, 1070, 455+(i*20)); 
    text(i+1, 1120, 455+(i*20));
  }

  fill(255);
  rect(1050, 450, 10, 180, 25);// slot timt 1
  fill(180);
  ellipse(1055, Y[0], 20, 20);//slide button 1
  fill(255);
  rect(1100, 450, 10, 180, 25);// slot timt 2
  fill(180);
  ellipse(1105, Y[1], 20, 20);//slide button 2

  fill(0);
  textSize(20);
  text("Time/Div :", 1000, 400 );
  text("ch1", 1045, 435 );
  text("ch2", 1095, 435 );
  textSize(20);
  text("Chanel 1", 1050, 260); 

  text("Chanel 2", 1050, 330);
  textSize(20);
  text("Stop", 1065, 180);
  textSize(20);
  text("MENU", 1060, 110);
}
void menubar() {

  fill(220); 
  rect(700, 75, 275, 625, 5);//frame 1
  rect(720, 95, 235, 585);//frame 2
  noStroke();
  rect(790, 85, 95, 50); //fram menu hide
  stroke(0);
  strokeWeight(1);  
  fill(255);
  rect(790, 175, 150, 10);//slide 1
  rect(790, 225, 150, 10);//slide 2
  fill(180);
  ellipse(X[0], 180, 20, 20);//slide button 1  
  fill(180);
  ellipse(X[1], 230, 20, 20);//slide button 1  
  fill(0);
  text("line weight", 730, 145);
  text("CH 1", 730, 185);
  text("CH 2", 730, 235);
  textSize(30);
  text("MENU", 795, 115);
  fill(255);
}
void mouseClicked() {
  if (1025<=mouseX&&mouseX <=1150&&75<=mouseY&&mouseY <125) {//menu
    if (check== 1) {
      check = 0;
    } else {
      check =1;
    }
  }
  if (1025<=mouseX&&mouseX <=1150&&150<=mouseY&&mouseY <200) {//stop
    if (buttoncolor3==#F01B1B) {
      buttoncolor3=#3BF543;
    } else {
      buttoncolor3=#F01B1B;
    }
  }

  if (1025<=mouseX&&mouseX <=1150&&225<=mouseY&&mouseY <275 ) {//ch1
    if (buttoncolor==255) {
      buttoncolor=#3BF543;
    } else {
      buttoncolor=255;
    }
  }
  if (1025<=mouseX&&mouseX <=1150&&300<=mouseY&&mouseY <350 ) {//ch2
    if (buttoncolor2==255) {
      buttoncolor2=#3BF543;
    } else {
      buttoncolor2=255;
    }
  }
}
void chanal1() {
  // trim off whitespaces.

  //println("Binary to Dec (X) : "+inByte);

  //float result =(inByte/4095)*3.3;
  //println("Result : ((X*3.3)/4095) = "+result+" V");
  //println("---------------------------------------------");
  inplot = map(inplot, 0, 4095, 80, 370); //map to the screen height.
  //Drawing a line from Last inByte to the new one.
  stroke(122, 255, 255);     //stroke color
  x = map(X[0], 790, 950, 1, 5); //map to the screen height.

  strokeWeight(x);        //stroke wider
  line(lastxPos, lastheight, xPos, (height-300)-inplot); //height-inByte
  lastxPos= xPos;
  lastheight= int((height-300)-inplot);//height-inByte
  inString = null;
  // at the edge of the window, go back to the beginning:




  // increment the horizontal position:
  xPos=xPos+space;
}
void chanal2() {
  // trim off whitespaces.

  //println("Binary to Dec (X) : "+inByte);

  //float result2 =(inByte2/4095)*3.3;
  //println("Result  : ((X*3.3)/4095) = "+result2+" V");
  //println("---------------------------------------------");

  inplot2 = map(inplot2, 0, 4095, 380, 675);//map to the screen height.
  x= map(X[1], 790, 950, 1, 5);
  //Drawing a line from Last inByte to the new one.
  stroke(#E9FF00);     //stroke color
  strokeWeight(x);        //stroke wider
  //print(inByte2);
  line(lastxPos2, lastheight2, xPos2, (height+300)-inplot2); //height-inByte
  lastxPos2= xPos2;
  lastheight2= int(height+300-inplot2);//height-inByte
  inString2 = null;
  // at the edge of the window, go back to the beginning:
  //print(xPos2);



  // increment the horizontal position:
  xPos2=xPos2+space2;
}

void serialEvent (Serial myPort) {
  // get the ASCII string:
  int inByte3 = myPort.read();

  if (count!=maxlength.length || count2 != maxlength2.length) {
    if (keep1 == null) {

      keep1 = binary(inByte3, 8);
    } else {
      keep2 = binary(inByte3, 8); 
      ////println("keep1  "+keep1);
      // //println("keep2  "+keep2);

      String checkinString = keep2.toString()+keep1.toString();
      println(checkinString);
      String keep=checkinString.substring(0, 4);
      // println(keep.equals("0001"));
      if (keep.equals("0001")==true) {
        inByte2 = float(unbinary(checkinString.substring(4)));
        println("ch2: "+inByte2);
        inString2 =  checkinString ;
        // println("Binary read  ch2: "+(inString2));

        maxlength2[count2] =  inByte2 ;
        count2 = count2 +1;
        if (count2 != count+1) {
          count = 0;
          count2= 0;
          delay(5); //22
        }
      } else if (keep.equals("0000")==true) {
        inByte = float(unbinary(checkinString.substring(4)));
        println("ch1: "+inByte);
        inString =checkinString ;
        //println("Binary read ch1: "+(inString));

        maxlength[count] =  inByte ;
        count = count +1;
        if (count != count2) {
          count = 0;
          count2= 0;
          delay(5); //22
        }
      }
      keep1 = null; 
      keep2 = null;

      println(count );
      println(count2 );
    }
  }
}
void back() {
  fill(0);
  rect(75, 75, maxdisplay, 625);
  for ( int i = 75; i <=maxdisplay+75; i=i+90) {
    stroke(175);
    strokeWeight(1);  
    line(i, 75, i, 700);
  }
  for (int j =75; j<=700; j=j+90) {
    line(75, j, maxdisplay+75, j);
  }
}