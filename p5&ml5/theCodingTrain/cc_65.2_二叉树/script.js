let tree
function setup() {
    createCanvas(600, 400);
    background(51);

}

function draw(){

    if(frameCount%8==0){
        background(51);
    tree = new Tree();
    for (let i = 0; i < 20; i++) {
        tree.addValue(floor(random(0, 100)));
    }
    tree.traverse();
    }
}


class Tree {
    constructor() {
        this.root = null;
    }
    addValue(val) {
        let n = new Node(val);
        if (this.root == null) {
            this.root = n;
            this.root.x  = width/2;
            this.root.y = 110;
        }
        else {
            this.root.addNode(n);
        }
    }
    traverse() {
        this.root.visit(this.root);
    }
    search(val) {
        let found = this.root.search(val);
        if (found != null) {
            console.log("Found:");
            console.log(found);
        } else {
            console.log("not found.")
        }
    }
}

class Node {
    constructor(val,x,y) {
        this.value = val;
        this.left = null;
        this.right = null;
        this.x = x;
        this.y = y;
    }
    addNode(n) {
        if (n.value < this.value) {
            if (this.left == null) {
                this.left = n;
                this.left.x=this.x-50;
                this.left.y = this.y+20;
            } else {
                this.left.addNode(n);
            }
        } else if (n.value > this.value) {
            if (this.right == null) {
                this.right = n;
                this.right.x=this.x+50;
                this.right.y = this.y+20;
            } else {
                this.right.addNode(n);
            }
        }
    }
    visit(parent) {
        if (this.left != null) {
            this.left.visit(this);
        }
        console.log(this.value);
        fill(255);
        noStroke();
        // text(this.value, this.x, this.y)
        stroke(255);
        line(parent.x,parent.y,this.x,this.y);
        if (this.right != null) {
            this.right.visit(this);
        }
    }
    search(val) {
        if (this.value == val) {
            return this;
        } else if (val < this.value && this.left != null) {
            return this.left.search(val);
        } else if (val > this.value && this.right != null) {
            return this.right.search(val);
        }
        return null;
    }
}


// 重写

// function setup() {
//     let a = new Node(5);
//     a.addNode(4);
//     a.addNode(2);
//     a.addNode(5);
//     a.addNode(6);
//     a.addNode(7);
//     console.log(a);
// }

// class Node {
//     constructor(val) {
//         this.root = val;
//         this.left = null;
//         this.right = null;
//     }
//     addNode(val) {
//         let n = new Node(val);
//         if (this.root == null) {
//             this.root = n;
//         } else {
//             if (this.root > val) {
//                 if (this.left == null) {
//                     this.left = n;
//                 } else {
//                     this.left.addNode(val);
//                 }
//             } else if (this.root < val) {
//                 if (this.right == null) {
//                     this.right = n;
//                 } else {
//                     this.right.addNode(val);
//                 }
//             }
//         }
//     }
// }

