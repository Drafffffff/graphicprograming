let siz = 100;
let [xoff, yoff] = [0, 0];
let [xoff1, yoff1] = [100, 100];
let inc = 0.001;

function setup() {
    createCanvas(400, 400);
    background(80);
}


function draw() {
    background(80);
    stroke(255);
    translate(width / 2, height / 2);
    // yoff = 0;
    let r = 200;
    for (let y = 0; y < siz; y++) {
        xoff = 0;
        for (let x = 0; x < siz; x++) {
            let noi = noise(yoff, xoff) * TWO_PI * 2;
            point(cos(noi) * r, sin(noi) * r);
            xoff += inc;
        }
        yoff += inc;
        r -= 2;
        r = constrain(r, 10, 200);
    }
    let r1 = 200;

    for (let y = 0; y < siz; y++) {
        // xoff1 = 0;
        for (let x = 0; x < siz; x++) {
            let noi = noise(yoff1, xoff1) * TWO_PI * 2;
            point(cos(noi) * r1, sin(noi) * r1);
            xoff1 += inc;
        }
        yoff1 += inc;
        r1 -= 2;
        r1 = constrain(r1, 10, 200);
    }
    noLoop();
}
// print(frameCount)