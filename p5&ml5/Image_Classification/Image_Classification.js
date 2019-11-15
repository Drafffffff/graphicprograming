let mobilenet;
let panda;

function modeReady() {

    console.log('Model is ready!!!');
    mobilenet.predict(panda, gotResults);
}

function gotResults(error, results) {
    if (error) {
        console.error(error);
    } else {
        console.log(results);
    }
    let label =  results[0].label;
    let confeidence = results[0].confidence;
    createP(label);
    createP(confeidence);
}

function imageReady() {
    image(panda, 0, 0, width, height);
    console.log('image is ready!');
}

function setup() {
    createCanvas(640, 480);
    background(0);
    panda = createImg('img/2.jpg', imageReady);
    panda.hide();
    mobilenet = ml5.imageClassifier('MobileNet', modeReady);


}


function draw() {

}