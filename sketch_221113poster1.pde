//Please download the fonts below to elevate the experience.
//Skia-Regular_Light-Extended
//ShreeDev0714
//Sarabun-thin
import processing.sound.*;
SoundFile sound;
int mouse = 0;
int reach400 = 0;
int clickf = 0;
int runtime = 0;
int time = 0;
int turn = 0;
float circle = 0;

void setup() {
  size(1024, 768);
  background(20);
  frameRate(10);
}

void draw() {
  background(20);
  println(circle);
  ////the 7 lines below is a temporary check procedure↓↓↓.
  //String[] fontList = PFont.list();
  //printArray(fontList);
  //println(mouse);
  //println(reach400);
  //println(runtime);
  //println(turn);
  //println(frameCount);
  for (int x = 0; x < width*0.5; x += 103) {
    for (int y = 0; y < height*0.5; y += 96) {
      float c = random(20, 100);
      if (mouse == 0) {
        fill(40, c*0.6, c*0.4);
      }
      if (mouse == 1) {
        fill(c*0.6, 40, c*0.4);
      }
      if (mouse == 2) {
        fill( c*0.4, c*0.6, 40) ;
      }
      if (mouse == 3) {
        fill(40, c*0.2, c*0.8);
      }
      noStroke();
      triangle(x-3, y, x+100, y+96, x+100, y);//左上(AW)
      triangle(x-3, y+384, x-3, y+480, x+100, y+384);//左下(AS)
      triangle(x+509, y+96, x+612, y, x+612, y+96);//右上(DW)
      triangle(x+509, y+384, x+509, y+480, x+612, y+480);//右下(DS)
      if (mouse == 2) {
        fill(40, c*0.3, c*0.6);
      }
      if (mouse == 0) {
        fill(c*0.3, 20, c*0.5);
      }
      if (mouse == 3) {
        fill( c*0.4, c*0.6, 40) ;
      }
      if (mouse == 1) {
        fill(40, c*0.2, c*0.4);
      }
      triangle(x-3, y, x+100, y+96, x-3, y+96);//左上(AW)
      triangle(x-3, y+480, x+100, y+480, x+100, y+384);//左下(AS)
      triangle(x+612, y, x+509, y, x+509, y+96);//右上(DW)
      triangle(x+509, y+384, x+612, y+384, x+612, y+480);//右下(DS)
    }
  }
  PFont hobo;
  hobo = createFont("Skia-Regular", 40);
  textFont(hobo);

  for (int f = 0; f < width * 0.4; f += 103) {
    for (int d = 0; d < width; d += 96) {
      float e = random(130, 220);
      stroke(e, 100);
      float c = random(20, 100);
      if (mouse == 0) {
        fill(40, c*0.6, c*0.4, 100);
      }
      if (mouse == 1) {
        fill(c*0.6, 40, c*0.4, 100);
      }
      if (mouse == 2) {
        fill( c*0.4, c*0.6, 40, 100) ;
      }
      if (mouse == 3) {
        fill(40, c*0.2, c*0.8, 100);
      }
      triangle(f-3, d+5, f-3, d+91, f+42, d+48);
      triangle(1022-f, d+5, 1022-f, d+91, 980-f, d+48);
      fill(e, c*2, 50, 150);
      text("IMA", f+4, 2*d-5);
      text("IMA", 1024-f, 2*d+98);
      fill(150, e, c*2, 100);
      text("ima藝", f-68, 2*d+98 );
      text("ima術", 960-f, 2*d-5);
    }
  }
  for (int m = 0; m < width; m += 103) {
    for (int n = 0; n < height; n += 85) {
      float i = random(180, 230);
      float a = random(-10, 10);
      PFont son;
      son = createFont("Sarabun", 10 + a * 0.5 + mouseX * 0.01 );
      PFont mono;
      mono = createFont("Skia-Regular", 25);

      strokeWeight(1);
      stroke(255);
      line(580, 379, 584, 379);
      line(580, 379, 580, 402);
      line(580, 402, 584, 402);
      line(666, 379, 662, 379);
      line(666, 379, 666, 402);
      line(666, 402, 662, 402);
      if (mousePressed == false) {
        textFont(mono);
        fill(255);
        text("Slide to See A Surprise↘↘↘", 30, 40);
      }
      fill(40, 20 - mouseX * 0.04);
      noStroke();
      rect(20, 14, 330, 34);


      pushMatrix();
      translate(512.5, 384.5);//对称中心 Center of Symmetry
      noFill();
      stroke(255, 180, 0);
      strokeWeight(2);
      if (turn == 0) {
        rotate(radians(frameCount * 3  % 360));
      }
      if (turn == 1) {
        rotate(radians(-frameCount * 3  % 360));
      }

      triangle(-506.5, -378.5, -306.5, -378.5, -506.5, -178.5);//!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
      triangle(505.5, 377.5, 305.5, 377.5, 505.5, 177.5);
      stroke(40+mouseX*0.05, 140-mouseY*0.1, 220+mouseX*0.05, 50);
      strokeWeight(3);
      triangle(-506.5, 377.5, -306.5, 377.5, -506.5, 177.5);
      triangle(505.5, -378.5, 305.5, -378.5, 505.5, -178.5);
      popMatrix();


      if (mousePressed) {

        textFont(son);
        fill(255, 100);//★★
        text(i * 14 - 2300, m+a, n-20+a);
        fill((mouseX * 0.008 - 1.08)*(485-mouseY*0.777), (mouseX * 0.008 - 1.08)*(-469+mouseY*0.777), (mouseX * 0.008 - 1.08)*(-30+mouseY*0.777), 100 + mouseX * 0.05 - 20);
        text(i * 1.8 + mouseX * 50 - 1400, m-a, n+20-a);
        fill(355- mouseX * 0.8, 255, 355 - mouseX * 0.8, 500 - mouseX * 0.8);
        textFont(mono);
        text("Slide to See A Surprise↘↘↘", 30, 40);
        fill(255, mouseX * 0.3, 255, mouseX * 0.3 - 100);
        text("<<<Slide to Let Them Fade", 700, 740);
        noStroke();
        fill(40, mouseX * 0.02);
        rect(690, 716, 320, 30);
      }
    }
  }

  strokeWeight(0);
  if (mouse == 4) {
    mouse = mouse - 4;
  }


  if (frameCount == 400) {
    reach400++;
  }

  if (reach400 == 1) {
    reach400 = reach400 - 1;
    mouse ++;
    //Here the maximum point(4,5,12...) can be changed and it doesn't affect the program.
    //It's used to control the speed to change the background color.
  }
  if (reach400 == 0) {
    runtime = frameCount;
  }
  if (reach400 >= 1) {
    runtime = frameCount + 400 * reach400;
  }

  //frames
  strokeWeight(2);//big white shapes
  stroke(255);
  fill(255, 45, 0, 30);
  circle(512.5, 384.5, 592);
  fill(0, 116, 255, 20);
  triangle(216.5, 215.5, 808.5, 215.5, 512.5, 723);
  stroke(255);//around the Logo
  strokeWeight(3);
  fill(255, 115, 0, 40);
  circle(512.5, 384.5, 89.5);
  if ((mouseX-512.5)*(mouseX-512.5)+(mouseY-384.5)*(mouseY-384.5) < 44.75*44.75) {
    circle ++;
    if (circle>=14) {
      background(20, 0, 5);
      stroke(230, 0, 20);
      strokeWeight(3);
      line(400, 282, 408, 282); //Below "8F" there're four "l"s.
      line(400, 282, 400, 290);
      line(625, 282, 617, 282);
      line(625, 282, 625, 290);
      line(400, 325, 408, 325);
      line(400, 325, 400, 317);
      line(625, 325, 617, 325);
      line(625, 325, 625, 317);
      stroke(255);
      strokeWeight(2);
      line(497, 384, 526, 384); //vertical
      line(497, 389, 526, 389);
      line(505, 389, 505, 400); //horizontal line, down
      line(516.5, 389, 516.5, 409);
      line(503, 383, 503, 375); //horizontal line, up
      line(519, 383, 519, 375);
      strokeWeight(2); //灯帽 the arcuate led shade
      noFill();
      arc(511, 374, 16, 16, PI, TWO_PI);//OK
      noStroke();//发光单元 illuminant inside
      fill(255);
      quad(507, 383, 507, 379, 508, 379, 512, 383);
      quad(516, 383, 516, 379, 511, 379, 515, 383);
      noStroke(); //光芒四射 beams of light
      circle(496, 377, 2.5);//bot2
      circle(527, 377, 2.5);
      circle(498, 367, 2.5);//mid2
      circle(525, 367, 2.5);
      circle(506, 360, 2.5);//top2
      circle(517, 360, 2.5);
      noFill();//inner circle
      stroke(255);
      strokeWeight(1);
      circle(512.5, 384.5, 70);

      stroke(230, 40, 20);
      strokeWeight(3);
      line(480, 354, 543, 416);
      line(480, 415, 543, 353);
      noFill();
      stroke(230, 6, 6);
      circle(512.5, 384.5, 89.5);
      PFont mono;
      mono = createFont("Skia-Regular", 25);
      textFont(mono);
      fill(230, 6, 6);
      text("NOT THIS ONE!", 421, 313);
      noStroke();
      fill(230, 0, 20);
      beginShape(); //开始形状的绘制
      vertex(600+20, 390);
      vertex(610+20, 400);
      vertex(850+20, 490);
      vertex(880+20, 490);
      vertex(970+20, 288);
      vertex(986+20, 230);
      endShape();
      beginShape(); //开始形状的绘制
      vertex(1024-600-20, 390);
      vertex(1024-610-20, 400);
      vertex(1024-850-20, 490);
      vertex(1024-880-20, 490);
      vertex(1024-970-20, 288);
      vertex(1024-986-20, 230);
      endShape();
      fill(20, 0, 5);
      if (circle<18) {
        quad(770+2, 220, 825+2, 220, 803+2, 440, 786+2, 434);
        quad(width-770-2, 220, width-825-2, 220, width-803-2, 440, width-786-2, 434);
      }
      if (circle>=18 && circle<=50) {
        quad(770-circle+20, 220, 825-circle+20, 220, 803-circle+20, 440, 786-circle+20, 434);
        quad(width-770+circle-20, 220, width-825+circle-20, 220, width-803+circle-20, 440, width-786+circle-20, 434);
      }
      if (circle>50) {
        quad(770-30, 220, 825-30, 220, 803-30, 440, 786-30, 434);
        quad(width-770+30, 220, width-825+30, 220, width-803+30, 440, width-786+30, 434);
      }
      for (int j = 0; j < width; j += 256) {
        for (int k = 0; k < height; k += 60) {
          fill(180, 6, 6, 50);
          text("NOT THIS CIRCLE!", j+20, k);
        }
      }
    }
  } else {
    circle = 0;
  }
  if (circle < 14) {

    fill(210 + mouseX * 0.1, 120 + mouseY * 0.1, 40, 50);
    stroke(255, 100);
    strokeWeight(2);
    triangle(6, 6, 206, 6, 6, 206);
    triangle(1018, 762, 818, 762, 1018, 562);
    fill(40, 40, 220, 50);
    triangle(6, 762, 206, 762, 6, 562);
    triangle(1018, 6, 818, 6, 1018, 206);
    PFont homo;
    homo = createFont("ShreeDev0714", 25);
    textFont(homo);
    fill(220);
    text("-------------- _ F --------------", 289, 250);
    PFont mono;
    mono = createFont("Skia-Regular", 35);
    textFont(mono);
    noStroke();
    fill(40, 100);
    rect(285, 476, 455, 42);
    quad(355, 520, 665, 520, 645, 562, 385, 562);

    if (time <=100 ) {
      time = frameCount;
    }
    if (time > 100) {
      time = time - 100;
      frameCount = frameCount - 100;
    }
    if (time <= 50) {
      fill(frameCount * 13 % 255 + 150, frameCount * 15 % 255 + 150,
        frameCount * 20 % 255 + 150 );
      text("I", 290.6, 510);//colored ones
      text("M", 521.6, 510);
      text("A", 647.6, 510);

      fill(255);
      text(" NTERACTIVE", 292, 510);//white ones
      text(" EDIA", 546.8, 510);
      text(" RTS", 664.4, 510);
      text("NYU SHANGHAI", 380, 555);
    }
    if (time > 50 && time < 100) { //Hide the words and show another sentence.
      noStroke();
      fill(40, 10);
      rect(291, 480, 443, 34);
      quad(357, 520, 667, 520, 643, 562, 383, 560);
      fill(255);
      text("END-OF-SEMESTER SHOW", 295, 510);
      text("FALL 2022", 430, 555);
    }

    //logo part
    stroke(255);
    strokeWeight(2);
    line(497, 384, 526, 384); //vertical
    line(497, 389, 526, 389);
    line(505, 389, 505, 400); //horizontal line, down
    line(516.5, 389, 516.5, 409);
    line(503, 383, 503, 375); //horizontal line, up
    line(519, 383, 519, 375);
    strokeWeight(2); //灯帽 the arcuate led shade
    noFill();
    arc(511, 374, 16, 16, PI, TWO_PI);//OK
    noStroke();//发光单元 illuminant inside
    fill(frameCount * 8 % 255 + 150, frameCount * 6 % 255 + 60, frameCount * 3 % 255 + 40);
    quad(507, 383, 507, 379, 508, 379, 512, 383);
    quad(516, 383, 516, 379, 511, 379, 515, 383);
    noStroke(); //光芒四射 beams of light
    circle(496, 377, 2.5);//bot2
    circle(527, 377, 2.5);
    circle(498, 367, 2.5);//mid2
    circle(525, 367, 2.5);
    circle(506, 360, 2.5);//top2
    circle(517, 360, 2.5);
    noFill();//inner circle
    stroke(frameCount * 6 % 255 + 150, frameCount * 6 % 255 + 60,
      frameCount * 6 % 255 + 40);
    strokeWeight(1);
    circle(512.5, 384.5, 70);

    PFont boom;
    boom = createFont("Sarabun", 20);
    textFont(boom);
    fill(255);
    text("Cursor:("+mouseX+","+mouseY+")", 30, 80);
    noStroke();
    fill(25, 40);
    rect(28, 66, 118, 16);
    pushMatrix();
    noFill();//colored rings
    stroke(frameCount * 21 % 255 + 100, frameCount * 15 % 255 + 100, frameCount * 7 % 255 + 100);
    strokeWeight(4);
    translate(512.5, 384.5);
    if (turn == 0) {
      rotate(radians(frameCount * 2  % 360));
    }
    if (turn == 1) {
      rotate(radians(-frameCount * 2  % 360));
    }
    line(180, 180, 205, 205);//前离后接
    strokeWeight(2);
    line(-70, -70, -115, -115);
    if (turn == 0) {
      rotate(radians(-frameCount * 6  % 360));
    }
    if (turn == 1) {
      rotate(radians(frameCount * 6  % 360));
    }
    strokeWeight(2);
    stroke(frameCount * 7 % 255 + 100, frameCount * 21 % 255 + 100, frameCount * 17 % 255 + 100);
    triangle(-32, -42, -48, -48, -42, -32);
    popMatrix();

    pushMatrix();
    translate(512.5, 384.5);
    fill(0, 1);
    if (mouse == 0) {  //中央三角 Central Triangles
      stroke(223, 0, 160, 200);
    }
    if (mouse == 1) {
      stroke(225, 95, 0, 200);
    }
    if (mouse == 2) {
      stroke(140, 240, 80, 200);
    }
    if (mouse == 3) {
      stroke(2, 255, 204, 300);
    }
    if (mouse == 4) {
      mouse = mouse - 4;
    }
    strokeWeight(3);
    if (turn == 0) {
      rotate(radians(-frameCount * 2  % 360));
    }
    if (turn == 1) {
      rotate(radians(frameCount * 2  % 360));
    }
    triangle(-296, -169, 296, -169, 0, 338.5);
    popMatrix();
    PFont oh;
    oh = createFont("Sarabun", 15);
    PFont re;
    re = createFont("Sarabun", 15);

    if (mouseX > 349 & mouseX < 394 && mouseY > 333 && mouseY < 365) {
      noStroke();
      fill(20, 40);
      rect(405, 285, 216, 20);
      rect(410, 305, 200, 20);
      fill(255);
      textFont(re);
      text("Cursor", 348, 347);
      text("Here", 360, 360);
      strokeWeight(2);
      stroke(120, 255, 100);
      line(395, 330, 385, 330);//An arrow as reminder
      line(395, 330, 395, 340);
      textFont(oh);
      fill(120, 255, 100);
      text("[Press 'W' to change the rotation]", 406, 300);
      fill(255);
      text("[Color Changes After 400.0 Units]", 405, 320);
      fill(255, 180, 0);
      text("And Try Here", 582, 396);
      textFont(re);
      fill(120, 255, 100);
      text("Cursor", 348, 347);
      text("Here", 360, 360);
      strokeWeight(2);
      stroke(120, 255, 100);
      line(395, 330, 385, 330);//An arrow as reminder
      line(395, 330, 395, 340);
      noStroke();
      fill(0, 10);
      rect(346, 334, 46, 29);
    } else {
      textFont(re);
      strokeWeight(2);
      stroke(0, 162, 168);
      line(395, 330, 385, 330);//An arrow as reminder
      line(395, 330, 395, 340);
      fill(255);
      text("Cursor", 348, 347);
      text("Here", 360, 360);
      noStroke();
      fill(0, 10);
      rect(346, 334, 46, 29);
    }

    if (mouseX > 576 & mouseX < 670 & mouseY > 376 & mouseY < 406) {
      fill(120, 255, 100);
      textFont(boom);
      text("Yeah!", 600, 398);
      text("[Press 'S' to change background]", 373, 450);
      fill(255);
      text("[Warm hint: Try to find a tiny circle]", 360, 474);
      text("WHEN  & WHERE?", 436, 312);
      noStroke();
      fill(250, 20);
      rect(342, 432, 338, 46);
    }
    if ((mouseX - 512.5) * (mouseX - 512.5) + (mouseY - 617) * (mouseY - 617) <= 400) {
      textFont(boom);
      fill(120, 255, 100, 150);
      noStroke();
      circle(512.5, 617, 50);
      fill(120, 255, 100);
      text("[Press 'A' To Show Time/Place]", 380, 450);
      fill(255);
      text("[Congratulations! You've learnt all!]", 360, 474);
      fill(250, 20);
      rect(342, 433, 340, 45);
    }
    fill(255, 20);
    rect(490, 226, 20, 25);
    rect(576, 376, 94, 30);
    fill(150, 30);
    circle(512.5, 617, 40);
    if (turn == 2) {
      turn = turn - 2;
    }
  }
  stroke(220);
  strokeWeight(1);
  line(400, 282, 408, 282); //Below "8F" there're four "l"s.
  line(400, 282, 400, 290);
  line(625, 282, 617, 282);
  line(625, 282, 625, 290);
  line(400, 325, 408, 325);
  line(400, 325, 400, 317);
  line(625, 325, 617, 325);
  line(625, 325, 625, 317);
  stroke(255);
  strokeWeight(2);
  line(mouseX-6, mouseY, mouseX+6, mouseY);
  line(mouseX, mouseY-6, mouseX, mouseY+6);//show the cursor;
}

void keyPressed() {
  if (key == 'a'|| key == 'A') {
    PFont le;
    le = createFont("Sarabun-thin", 40);
    PFont mm;
    mm = createFont("Sarabun-thin", 30);
    textFont(le);
    fill(60, frameCount * 1.5 % 255 + 168, frameCount * 0.7 % 255 + 174);
    text(" 18:00 -- 20:00", 385, 470);
    textFont(mm);
    fill(frameCount * 2.5 % 255 + 175, frameCount * 0.4 % 255 + 80, 0);
    text("Dec.16", 356, 402);
    text("Friday", 586, 400);
    fill(60, frameCount * 1.5 % 255 + 168, frameCount * 0.7 % 255 + 174);
    text("8", 491, 250);
    fill(255, 20);
    noStroke();
    rect(352, 376, 94, 30);
  }
  if (key == 's'||key == 'S') {
    mouse ++;
    reach400 = 0;
  }
  if (key == 'w'||key == 'W') {
    turn++;
  }
}
