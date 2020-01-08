noStroke();
// position of the car


void setup()
{
  size(1500,700);
  background(125);
}

var init_x_1 = 0;
var init_x_2 = 0;
var init_x_3 = 0;

var init_y_1 = random(100,200);
var init_y_2 = random(200,400);
var init_y_3 = random(400,600);

var delta_x = 50;
var delta_y = 50;

var init_z = random(10,30);
var n = 0.01;
var stone_x_1 = random(100,600);
var stone_x_2 = random(100,600);
var stone_x_3 = random(100,600);

var stone_y_1 = random(100,600);
var stone_y_2 = random(100,600);
var stone_y_3 = random(100,600);

var drawCar= function(x, y, z, color){
    // draw the car body
    fill(255, 0, color);
    rect(x, y + 100 + 50*sin(x*n), z + 100, z + 20);
    rect(x + 15, y + 78 + 50*sin(x*n), z + 70, z + 40);
    // draw the wheels
    fill(77, color, 66);
    ellipse(x + 25 + z/2, y + 130 + 50*sin(x*n) + z/2, z + 24, z + 24);
    ellipse(x + 85 + z/2, y + 130 + 50*sin(x*n) + z/2, z + 24, z + 24);
    
}
var stone = function(x,y){
    fill(132, 0, 255);
    rect(x,y,50,50);
}
var sun_x = 0;
var sun = function(x){
    fill(255, 255, 0);
    ellipse(x, 60, 150, 150);
}
var cloud_x = 3;
var cloud = function(cloud_x){
    fill(255, 255, 255);
    ellipse(cloud_x, 50, 126, 97);
    ellipse(cloud_x+62, 50, 70, 60);
    ellipse(cloud_x-62, 50, 70, 60);
}

var check_2car = function(x1, x2, y1, y2, x3, y3){
        x3 += random(1,5);
        y3 += random(-5,5);
    
    if ((Math.abs(x1 - x2) <= delta_x ) && ((Math.abs(y1 - y2) <= delta_y))) {
        console.log('Hai xe va cham nhau');
        fill(247, 255, 0);
        textSize(20);
        ellipse(x1 + 33, y1 + 25, 120, 50);
        fill(0, 0, 0);
        text("BANG!!!", x1, y1 + 30);
    }else{
        x1 += random(1,5);
        y1 += random(-5,5);
        
        x2 += random(1,5);
        y2 += random(-5,5);
    }
   
}

draw = function() {
    // all lines of code inside here will be run repeatedly
    background(151, 244, 547);
    drawCar(init_x_1, init_y_1, 20, 156);
    drawCar(init_x_2, init_y_2, 10, 88);
    drawCar(init_x_3, init_y_3, 30, 200);
    check_2car(init_x_1,init_x_2,init_x_3,init_y_1,init_y_2,init_y_3);
    check_2car(init_x_1,init_x_3,init_x_2,init_y_1,init_y_3,init_y_2);
    check_2car(init_x_2,init_x_3,init_x_1,init_y_2,init_y_3,init_y_1);
    
 
    stone(stone_x_1, stone_y_1); 
    stone(stone_x_2, stone_y_2);
    stone(stone_x_3, stone_y_3);
    
    sun(1450 + sun_x);
    sun_x -=1;
    cloud(135 + cloud_x);
    cloud(450 + cloud_x);
    cloud_x +=1;


};
    
    
