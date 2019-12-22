let model;
let strokePath = null;
let x, y;
let pen = "down";

function setup() {
    createCanvas(400, 400);
    x = random(0, width);
    y = random(0, height);
    stroke(255);
    strokeWeight(1);
    background(0);
    model = ml5.sketchRNN('snowflake', modelReady);
}
function modelReady() {

    console.log('model ready');
    model.reset();
    model.generate(gotSketch);
}

function draw() {
    if (strokePath != null) {
        let newX = x + strokePath.dx * 0.1;
        let newY = y + strokePath.dy * 0.1;
        if (pen == "down") {
            line(x, y, newX, newY);
        }
        pen = strokePath.pen;
        strokePath = null;
        x = newX;
        y = newY;
        if (pen !== "end") {
            model.generate(gotSketch);
        } else {
            console.log("drawing complete");
            model.reset();
            model.generate(gotSketch);
            x = random(0, width);
            y = random(0, height);
        }

    }

}

function gotSketch(error, s) {
    if (error) {
        console.error(error)
    } else {
        strokePath = s;
        console.log(strokePath);
    }
}