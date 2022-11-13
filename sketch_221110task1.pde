//Please download the fonts below to elevate the experience.
//Skia-Regular_Light-Extended
//ShreeDev0714
//Sarabun-thin
import processing.sound.*;
SoundFile sound;
int mouse = 0;
int reach400 = 0;
int clickf = 0;

void setup() {
  //setup settings
  size(1024, 768);
  background(0, 20);
  //sound = new SoundFile(this, "cyberpunkbeat.wav");
  //sound.loop();
  // Line 8-9 is an optional BGM.
  // Please search for "Synthwave - Doctor Dreamchip" on Freesound to get the audio file.
  // The name of the file will be different and line 8 will need adjustments↑↑↑.
  // The music is great, but you can also add "//" in front of the codes if it bothers you.
}

//void draw() {
void draw() {
  strokeWeight(0);

  println(mouse);
  println(reach400);
  if (mouse == 4) {
    mouse = mouse - 4;
  }

  float runtime = 0;
  PFont homo;
  homo = createFont("ShreeDev0714", 25);
  PFont mono;
  mono = createFont("Skia-Regular", 35);
  PFont re;
  re = createFont("Sarabun-thin", 15);
  PFont oh;
  oh = createFont("Sarabun-thin", 15);
  float time = 0;
  if (frameCount == 400) {
    reach400++;
  }

  if (reach400 == 8) {
    background(0);
    reach400 = reach400 - 8;
    mouse ++;
    //Here the maximum point(4,5,12...) can be changed and it doesn't affect the program.
    //I just want to repeat the animation that the shapes appear in the beginning.
  }
  if (reach400 == 0) {
    runtime = frameCount;
  }
  if (reach400 >= 1) {
    runtime = frameCount + 400 * reach400;
  }
  println(runtime);
  //frames
  noFill();//big white shapes
  strokeWeight(0.1);
  stroke(255, 40);
  triangle(216.5, 215.5, 808.5, 215.5, 512.5, 723);
  circle(512.5, 384.5, 592);
  stroke(255, 50);//around the Logo
  strokeWeight(3);
  circle(512.5, 384.5, 89.5);

  //logo part
  stroke(255, 50);
  strokeWeight(2);
  line(497, 384, 526, 384); //vertical
  line(497, 389, 526, 389);
  line(505, 389, 505, 400); //horizontal line, down
  line(516.5, 389, 516.5, 409);
  line(503, 383, 503, 375); //horizontal line, up
  line(519, 383, 519, 375);

  strokeWeight(2); //灯帽 the arcuate led shade
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

  //add the words

  textFont(homo);
  fill(220, 50);
  text("-------------- _ F --------------", 289, 250);



  textFont(mono);

  //the 2 lines below is a temporary check procedure.
  //String[] fontList = PFont.list();
  //printArray(fontList);


  if (time <=400 ) {
    time = frameCount;
  }
  if (time > 400) {
    time = time - 400;
    frameCount = frameCount - 400;
  }
  //println(frameCount);
  //println(reach400);

  if (time <= 180) {
    fill(20, 10);
    text("END-OF-SEMESTER SHOW", 295, 510);
    text("FALL 2022", 430, 555);
    if (time >=40 && time <= 180) {
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
      noStroke();
      fill(40, 10);
      rect(291, 480, 443, 34);
      quad(357, 520, 667, 520, 643, 562, 383, 562);
    }
  }

  if (time > 180 && time < 400) { //Hide the words and show another sentence.

    fill(20, 10);
    text("I", 290.6, 510);
    text("M", 521.6, 510);
    text("A", 647.6, 510);
    text(" NTERACTIVE", 292, 510);
    text(" EDIA", 546.8, 510);
    text(" RTS", 664.4, 510);
    text("NYU SHANGHAI", 380, 555);
  }

  if (time >= 220 && time <= 400) {
    noStroke();
    fill(40, 10);
    rect(291, 480, 443, 34);
    quad(357, 520, 667, 520, 643, 562, 383, 560);
    fill(255);
    text("END-OF-SEMESTER SHOW", 295, 510);
    text("FALL 2022", 430, 555);
  }

  //rotating shapes
  pushMatrix();
  translate(512.5, 384.5);//对称中心 Center of Symmetry

  noFill();
  if (mouse == 0) {  //隐藏三角 Hidden Triangles
    stroke(90, 30, 0);
  }
  if (mouse == 1) {
    stroke(0, 45, 63);
  }
  if (mouse == 2) {
    stroke(120);
  }
  if (mouse == 3) {
    stroke(1, 121, 88, 50);
  }

  strokeWeight(0.05);
  rotate(radians(frameCount * 4  % 360));
  triangle(350, 242, 573, 622, 150, 800);
  //translate(250.5, 400.5);
  //triangle(250, 142, 473, 522, 50, 700);
  delay(2);

  stroke(0);
  strokeWeight(0.1);
  rotate(radians(frameCount * 4  % 360));
  triangle(350, 242, 573, 622, 150, 800);

  stroke(0);
  strokeWeight(0.1);
  rotate(radians(frameCount * 4  % 360));
  triangle(350, 242, 573, 622, 150, 800);

  stroke(0, 300);
  strokeWeight(0.1);
  rotate(radians(frameCount * 4  % 360));
  triangle(350, 242, 573, 622, 150, 800);

  popMatrix();


  pushMatrix();
  translate(512.5, 384.5); //对称中心 Center of Symmetry

  if (mouse == 0) {  //外围三角 Outer Triangles
    stroke(0, 112, 116, 400);
  }
  if (mouse == 1) {
    stroke(116, 25, 25, 400);
  }
  if (mouse == 2) {
    stroke(90, 105, 80, 400);
  }
  if (mouse == 3) {
    stroke(51, 20, 121, 400);
  }
  strokeWeight(0.3);
  rotate(radians(frameCount * 3  % 360));
  triangle(370, 778, 593, 398, 137, 378);
  delay (2);

  stroke(20);
  strokeWeight(0.3);
  rotate(radians(frameCount * 1.5  % 360));
  triangle(370, 778, 593, 398, 137, 378);
  stroke(20);
  strokeWeight(0.3);
  rotate(radians(frameCount * 1.5  % 360));
  triangle(370, 778, 593, 398, 137, 378);
  stroke(20);
  strokeWeight(0.3);
  rotate(radians(frameCount * 1.5  % 360));
  triangle(370, 778, 593, 398, 137, 378);

  popMatrix();



  //other shapes
  pushMatrix();
  noFill();//colored rings
  stroke(frameCount * 21 % 255 + 100, frameCount * 15 % 255 + 100, frameCount * 7 % 255 + 100);
  strokeWeight(0.5);
  translate(512.5, 384.5);
  rotate(radians(frameCount * 2  % 360));
  line(190, 190, 209, 209);
  popMatrix();

  pushMatrix();
  if (reach400 <= 2) {
    translate(512.5, 384.5);
    fill(0, 1);
    if (mouse == 0) {  //中央三角 Central Triangles
      stroke(113, 0, 80, 100);
    }
    if (mouse == 1) {
      stroke(115, 45, 0, 100);
    }
    if (mouse == 2) {
      stroke(40, 80, 20, 100);
    }
    if (mouse == 3) {
      //stroke(83, 122, 100, 100);
      stroke(1, 83, 122, 100);
    }
    strokeWeight(0.1);
    rotate(radians(frameCount * 4  % 360));
    //triangle(-0.5, 257.5, 222.5, -138.5, -223.5, -138.5);
    triangle(-0.7, 360.5, 311.5, -194, -312.9, -194);
  }
  popMatrix();
  if (mousePressed == true) {
    background(0);
    runtime = 0;
    reach400 = 0;
    frameCount = 0;
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

  strokeWeight(2);
  stroke(0, 162, 168);
  line(395, 330, 385, 330);//An arrow as reminder
  line(395, 330, 395, 340);
  fill(255);
  textFont(oh);
  text("Cursor", 348, 347);
  //text("Here", 360, 360);
  noStroke();
  fill(0, 10);
  rect(346, 334, 46, 29);


  if (mouseX > 403 & mouseX < 622 && mouseY > 290 && mouseY < 330) {
    textFont(re);
    fill(255);
    text("[Click Anywhere To Change Color]", 408, 300);
    text("[Press 'A' To Show Time/Place]", 416, 320);
    noStroke();
    fill(20, 40);
    rect(405, 285, 216, 20);
    rect(410, 305, 200, 20);
  } else {
    noStroke();
    fill(0);
    rect(403, 285, 220, 38);
  }
}

void keyReleased() {
  if (key == 'a'|| key == 'A') {
    noStroke();
    fill(0);
    rect(390, 436, 244, 40);
    rect(355, 376, 90, 28);
    rect(578, 376, 92, 33);
    fill(0);
    rect(489, 226, 20, 25);
  }
}

void keyPressed() {
  if (key == 'a'|| key == 'A') {
    clickf ++;
    PFont le;
    le = createFont("Sarabun-thin", 40);
    PFont mm;
    mm = createFont("Sarabun-thin", 30);
    textFont(le);
    fill(60, frameCount * 1.5 % 255 + 168, frameCount * 0.7 % 255 + 174);
    text(" 18:00 -- 20:00", 385, 470);
    textFont(mm);
    fill(frameCount * 2.5 % 255 + 175, frameCount * 0.4 % 255 + 80, 0);
    text("Dec.16", 356, 400);
    text("[Friday]", 578, 400);
    fill(0);
    rect(489, 226, 20, 25);
    fill(60, frameCount * 1.5 % 255 + 168, frameCount * 0.7 % 255 + 174, 20000);
    text("8", 491, 250);
  }
}

void mousePressed() {
  if (mousePressed == true) {
    mouse ++;
  }
}
