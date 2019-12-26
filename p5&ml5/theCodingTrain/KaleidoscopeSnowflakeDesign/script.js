
let symmetry = 12;
let angle = 360 / symmetry;

function setup() {
    createCanvas(400, 400);
    angleMode(DEGREES);
    background(220);
}


function draw() {
    translate(width / 2, height / 2);
    let mx = mouseX - width / 2;
    let my = mouseY - height / 2;
    let pmx = pmouseX - height / 2;
    let pmy = pmouseY - height / 2;

    if (mouseIsPressed) {
        let c = getCol();
        stroke(getCol());
        strokeWeight(4);
        for (let i = 0; i < 12; i++) {
            rotate(angle);
            let d = dist(mx, my, pmx, pmy);
            let sw = map(d, 0, 20, 20, 1);
            strokeWeight(sw);
            line(mx, my, pmx, pmy);
        }

    }
}


let colors = [ '#ffbe0b', '#fb5607', '#ff006e', '#8338ec', '#3a86ff'];

function getCol() {
    return colors[int(random(colors.length))];
}