//let xoff =0;
//let x = 0;
//let yoff= 100000;
let start =0;
let inc=0.01;
function setup() {
  createCanvas(200, 200);
  //background(51);
  pixelDensity(1);
}


function draw() {
  loadPixels();
  for (let x= 0; x<width; x++) {
    for (let y = 0; y<height; y++) {
      let index = (x+y*width)*4;
      let r = random(255);
      pixels[index+0] = r;
      pixels[index+1] = r;
      pixels[index+2] = r;
      pixels[index+3] = 255;
    }
  }
  updatePixels();
}