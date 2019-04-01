class Figura {
  int x;
  int y;
  Figura() {
    x=10;
    y=200;
  }

  void pelota() {
    fill (random(255));
    noStroke(); 
    ellipse(random(640), random(360), 50, 50);

    circleX = circleX + xspeed ;

    if (circleX > width || circleX < 0) {
      //dar vuelta
      xspeed = xspeed * -1;
    }
  }
  void pelota2() {
    fill (random(255));
        noStroke(); 

    ellipse(random(640), random(360), 50, 50);

    circleX = circleX + xspeed ;

    if (circleX > width || circleX < 0) {
      //dar vuelta
      xspeed = xspeed * -1;
    }
  }

  void pelota3() {
    fill(random(255));
        noStroke(); 

    ellipse(random(640), random(360), 50, 50);

    circleX = circleX + xspeed ;

    if (circleX > width || circleX < 0) {
      //dar vuelta
      xspeed = xspeed * 1;
    }
  }

  void pelota4() {
    fill(random(255));
        noStroke(); 

    ellipse(random(640), random(360), 50, 50);

    circleX = circleX + xspeed ;

    if (circleX > width || circleX < 0) {
      //dar vuelta
      xspeed = xspeed * -1;
    }
  }


  void pelota5() {
    fill(random(255));
        noStroke(); 

    ellipse(random(640), random(360), 10, 10);

    circleX = circleX + xspeed ;


    if (circleX > width || circleX < 0) {
      //dar vuelta
      xspeed = xspeed * -1;
    }
  }

  void pelota6() {
    fill(random(255));
        noStroke(); 

    ellipse(random(640), random(360), 50, 50);

    circleX = circleX + xspeed ;

    if (circleX > width || circleX < 0) {
      //dar vuelta
      xspeed = xspeed * -1;
    }
  }

  void pelota7() {
    fill(random(255));
        noStroke(); 

    ellipse(random(640), random(360), 50, 50);

    circleX = circleX + xspeed ;


    if (circleX > width || circleX < 0) {
      //dar vuelta
      xspeed = xspeed * -1;
    }
  }

  void pelota8() {
    fill(random(255));
        noStroke(); 

    ellipse(random(640), random(360), 10, 10);

    circleX = circleX + xspeed ;


    if (circleX > width || circleX < 0) {
      //dar vuelta
      xspeed = xspeed * -1;
    }
  }

  void pelota9() {
    fill(random(255));
        noStroke(); 

    ellipse(random(640), random(360), 10, 10);

    circleX = circleX + xspeed ;


    if (circleX > width || circleX < 0) {
      //dar vuelta
      xspeed = xspeed * -1;
    }
  }
  void pelota10() {
    fill(random(255));
        noStroke(); 

    ellipse(random(640), random(360), 10, 10);

    circleX = circleX + xspeed ;


    if (circleX > width || circleX < 0) {
      //dar vuelta
      xspeed = xspeed * -1;
    }
  }
}







