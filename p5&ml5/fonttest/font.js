
class Font {
    constructor(x, y, t, siz) {
        this.pos = createVector(x, y);
        this.isLeft = [];
        this.text = t;
        this.Size = siz;
        this.points = font.textToPoints(this.text, this.pos.x, this.pos.y, this.Size, {
            "sampleFactor": 1
        });
        this.oriPointsY = [];
        this.oriPointsX = [];
        this.bbox = font.textBounds(this.text, this.pos.x, this.pos.y, this.Size);
        this.refPoint = createVector(this.pos.x + this.bbox.w / 2, this.pos.y, this.pos.x + this.bbox.w / 2);

    }

    tidyPos() {
        for (let i in this.points) {
            this.oriPointsY[i] = this.points[i].y;
            this.oriPointsX[i] = this.points[i].x;
            if ((this.points[i].x - this.pos.x) < this.bbox.w / 2) {
                this.isLeft.push(false);
            } else {
                this.isLeft.push(true);
            }
        }
    }


    show() {
        textSize(this.Size);
        noStroke();
        fill(20);
        text(this.text, this.pos.x, this.pos.y);
        fill(0);
        for (let i in this.points) {
            this.points[i].y += 1;
            let cy = this.points[i].y - this.oriPointsY[i]
            let strength = map(this.points[i].y, this.oriPointsY[i], (height), 1, 0);
            let alp = EasingFunctions.easeInQuart(strength)*100;
            strength = strength*0.7;
            fill(0, alp);
            let turePosX;
            if (this.isLeft[i]) {
                // continue;
                let cx = sin(cy / 60 + PI / 2) * strength;
                this.points[i].x -= cx;
                let deltaX = abs(this.points[i].x - this.refPoint.x);
                turePosX = this.refPoint.x + deltaX * strength;
                // this.points[i].x  = map(this.points[i].x,this.)
            } else {
                // continue;
                let cx = cos(cy / 60) * strength;
                let deltaX = abs(this.points[i].x - this.refPoint.z);
                this.points[i].x += cx;
                turePosX = this.refPoint.z - deltaX * strength;
            }
            ellipse(turePosX, this.points[i].y, 0.5, 0.5);
            if (this.points[i].y > height - oriY + this.bbox.height - 20) {
                noLoop();
            }
        }
        this.refPoint.y += 1;
        let strength = map(this.refPoint.y, this.pos.y, (height - oriY - 20), 1, 0);
        let rcy = this.refPoint.y - this.pos.y
        let rcx = sin(rcy / 60 + (PI / 2)) * strength;
        let rcz = cos(rcy / 60) * strength;
        this.refPoint.z += rcz;
        this.refPoint.x -= rcx;
        fill(0);
        // ellipse(this.refPoint.z, this.refPoint.y, 5, 5);
        // ellipse(this.refPoint.x, this.refPoint.y, 5, 5);
    }
}