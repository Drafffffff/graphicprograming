class Particle {
    constructor() {
        this.pos = createVector(random(width), random(height));
        this.vel = createVector(0, 0);
        this.acc = createVector(0, 0);
        this.maxSpeed = 2;
        this.prePos = this.pos.copy();
        this.update = () => {
            this.vel.add(this.acc);
            this.vel.limit(this.maxSpeed);
            this.pos.add(this.vel);
            this.acc.mult(0);

        };
        this.applyForce = (force) => {
            this.acc.add(force);
        };
        this.show = () => {
            this.edges();
            stroke(0, 5);
            strokeWeight(1);
            // print(this.prePos);
            line(this.pos.x, this.pos.y, this.prePos.x, this.prePos.y);
            // point(this.pos.x, this.pos.y);
            this.updatePrev();

        };
        this.follow = (vectors) => {
            let x = floor(this.pos.x / scl);
            let y = floor(this.pos.y / scl);
            let index = x + y * cols;
            let force = vectors[index];
            this.applyForce(force);
        }
        this.updatePrev = () => {
            this.prePos.x = this.pos.x;
            this.prePos.y = this.pos.y;
        }
        this.edges = () => {
            if (this.pos.x > width) {
                this.pos.x = 0;
                this.updatePrev();

            }
            if (this.pos.x < 0) {
                this.pos.x = width;
                this.updatePrev();
            }
            if (this.pos.y > height) {
                this.pos.y = 0;
                this.updatePrev();
            }
            if (this.pos.y < 0) {
                this.pos.y = height;
                this.updatePrev();
            }


        }
    }
}