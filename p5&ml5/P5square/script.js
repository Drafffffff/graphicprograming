let colors = ["#F25F5C", "#FFE066", "#247BA0", "#70C1B3"];

function setup() {
    createCanvas(600, 600);
    //设置画布大小
    colorMode(HSB, 360, 100, 100, 100);
    //设置颜色模式为HSB
    angleMode(DEGREES);
    //设置使用角度制来表示弧度
    background(0, 0, 90);
    //设置背景色

    //根据画布的大小设置合适密度的点
    for (let i = 0; i < width * height * 5 / 100; i++) {
        stroke(0, 0, 0, 10);
        //使点具有10%的不透明度
        let px = random(width);
        let py = random(height);
        point(px, py);
    }


}


function draw() {
    if (frameCount % 13 == 0) {
        gen();
    }
}


function gen() {
    background(0, 0, 90);

    for (let i = 0; i < width * height * 5 / 100; i++) {
        stroke(0, 0, 0, 10);
        let px = random(width);
        let py = random(height);
        point(px, py);
    }
    let rotate_num;
    let shape_num;


    let cells = 6;
    let offset = width / 10;
    let margin = offset / 5;
    let w = (width - offset * 2 - margin * (cells - 1)) / cells;
    let h = (height - offset * 2 - margin * (cells - 1)) / cells;
    for (let k = 0; k < 4; k++) {
        for (let j = 0; j < cells; j++) {
            for (let i = 0; i < cells; i++) {
                let x = offset + i * (w + margin);
                let y = offset + j * (h + margin);
                rectMode(CENTER);
                shape_num = int(random(3));
                rotate_num = int(random(4)) * 90;
                let c = random(colors);
                push();
                translate(x + w / 2, y + h / 2);
                let d = w;
                let scale = map(k, 0, 4 - 1, 1, 0.2);
                let siz = d * scale;
                noStroke();
                rotate(rotate_num);
                let bFill = random(100) < 50;
                if (bFill) {
                    noStroke();
                    fill(c);
                } else {
                    noFill();
                    strokeWeight(5);
                    stroke(c);
                }
                if (shape_num == 0) {
                    triangle(-siz / 2, -siz / 2, siz / 2, -siz / 2, -siz / 2, siz / 2);
                } else if (shape_num == 1) {
                    rectMode(CENTER);
                    rect(0, 0, siz, siz);
                } else if (shape_num == 2) {
                    ellipse(0, 0, siz, siz);
                } else if (shape_num == 3) {
                    arc(-siz / 2, -siz / 2, siz * 2, siz * 2, 0, 90);
                }


                pop();
            }
        }
    }
}


