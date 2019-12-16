// function setup() {
//     createCanvas(220, 300);
//     background(0);
//     stroke(255);
//     noFill();

// }


// function draw() {
//     translate(width / 2, height / 2);

//     for (let i = 200; i > 0; i -= 25) {
//         ellipse(0, 0, i, i);
//     }

// }

let cat;

function preload() {
    // Load model with normalise parameter set to true
    cat = loadModel('./cat.obj', true);
}

function setup() {
    createCanvas(300, 300, WEBGL);
    ambientLight(50);
    pointLight(250, 250, 250, 100, 100, 30);
    specularMaterial(250);
}

function draw() {
    background(200);
    scale(1.2); // Scaled to make model fit into canvas
    rotateX(frameCount * 0.01);
    rotateY(frameCount * 0.01);
    if (mouseOn()) {
        normalMaterial(); // For effect
    } else {
        ambientLight(50);
        pointLight(250, 250, 250, 100, 100, 30);
        specularMaterial(250);

    }
    model(cat);

}

let mouseOn = () => {
    if (mouseX > 0 && mouseX < width && mouseY > 0 && mouseY < height) {
        return true;
    } else {
        return false;
    }
}