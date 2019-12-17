let tree
function setup() {
    noCanvas();
    tree = new Tree();
    for (let i = 0; i < 10; i++) {
        tree.addValue(floor(random(0, 100)));
    }
    console.log(tree);
    tree.traverse();
}


class Tree {
    constructor() {
        this.root = null;
    }
    addValue(val) {
        let n = new Node(val);
        if (this.root == null) {
            this.root = n;
        }
        else {
            this.root.addNode(n);
        }
    }
    traverse() {
        this.root.visit();
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
    constructor(val) {
        this.value = val;
        this.left = null;
        this.right = null;
    }
    addNode(n) {
        if (n.value < this.value) {
            if (this.left == null) {
                this.left = n;
            } else {
                this.left.addNode(n);
            }
        } else if (n.value > this.value) {
            if (this.right == null) {
                this.right = n;
            } else {
                this.right.addNode(n);
            }
        }
    }
    visit() {
        if (this.left != null) {
            this.left.visit();
        }
        console.log(this.value);
        if (this.right != null) {
            this.right.visit();
        }
    }
    search(val) {
        if (this.value == val) {
            return this;
        } else if (val < this.value && this.left != null) {
            console.log("left");
            this.left.search(val);
        } else if (val > this.value && this.right != null) {
            this.right.search(val);
            console.log("right");
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

