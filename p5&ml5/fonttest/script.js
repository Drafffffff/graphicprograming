let font1;
let font2;
let font3;
let font4;
function preload() {
    font = loadFont("FZCCHJW.TTF");
}
const t1 = "N";
const t2 = "M";
const t3 = "$";
const t4 = "L";

let points;
let oriPointsY = [];
let left = [];
let right = [];
const oriX = 15;
const oriY = 250;
const fontSize = 250;
const fontMargin =230;

function setup() {
    createCanvas(1000, 1414);
    background(245);
    textFont(font);
    translate(oriX, oriY);
    font1 = new Font(0,0,t1,fontSize);
    font2 = new Font(fontMargin,0,t2,fontSize);
    font3 = new Font(fontMargin*2+30,0,t3,fontSize);
    font4 = new Font(fontMargin*3+30,0,t4,fontSize);

    font1.tidyPos();
    font2.tidyPos();
    font3.tidyPos();
    font4.tidyPos();
    
}

function draw() {
    translate(oriX, oriY);

    font1.show();
    font2.show();
    font3.show();
    font4.show();

}

function mouseReleased() {
    // save("mySVG.png"); // give file name
    print("saved svg");
}