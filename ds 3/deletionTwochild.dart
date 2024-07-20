
// class Node {
//   int data;
//   Node? left;
//   Node? right;
//   Node(this.data);
// }

// class BinarySearchTree {
//   Node? root;

//   void insert(int data) {
//     if (root == null) {
//       root = Node(data);
//       return;
//     }
//     _insertRec(root, data);
//   }

//   Node? _insertRec(Node? currentNode, int data) {
//     if (currentNode == null) {
//       return Node(data);
//     }
//     if (data.compareTo(currentNode.data) < 0) {
//       currentNode.left = _insertRec(currentNode.left, data);
//     } else {
//       currentNode.right = _insertRec(currentNode.right, data);
//     }
//     return currentNode;
//   }

//   void delete(int key) {
//     root = _deleteRec(root, key);
//   }

//   Node? _deleteRec(Node? currentNode, int key) {
//     if (currentNode == null) {
//       return currentNode;
//     }

//     if (key < currentNode.data) {
//       currentNode.left = _deleteRec(currentNode.left, key);
//     } else if (key > currentNode.data) {
//       currentNode.right = _deleteRec(currentNode.right, key);
//     } else {
//       // Node to be deleted is found
//       // Case 1: Node with only one child or no child
//       if (currentNode.left == null) {
//         return currentNode.right;
//       } else if (currentNode.right == null) {
//         return currentNode.left;
//       }

//       // Case 2: Node with two children
//       // Find the inorder successor (minimum node in the right subtree)
//       Node? temp = _minValueNode(currentNode.right);

//       // Copy the data of the inorder successor to the current node
//       currentNode.data = temp!.data;

//       // Delete the inorder successor node
//       currentNode.right = _deleteRec(currentNode.right, temp.data);
//     }

//     return currentNode;
//   }

//   Node? _minValueNode(Node? node) {
//     Node? current = node;
//     while (current?.left != null) {
//       current = current?.left;
//     }
//     return current;
//   }

//   void levelOrderTraversal(Node? root) {
//     if (root == null) return;

//     Queue<Node> queue = Queue();
//     queue.add(root);

//     while (queue.isNotEmpty) {
//       Node current = queue.removeFirst();
//       print(current.data);

//       if (current.left != null) {
//         queue.add(current.left!);
//       }
//       if (current.right != null) {
//         queue.add(current.right!);
//       }
//     }
//   }
// }

// void main() {
//   final tree = BinarySearchTree();
//   tree.insert(50);
//   tree.insert(30);
//   tree.insert(20);
//   tree.insert(40);
//   tree.insert(70);
//   tree.insert(80);

//   print('Level Order Traversal before deletion:');
//   tree.levelOrderTraversal(tree.root);

//   tree.delete(30); // Deleting the node with data 30 (node with two children).

//   print('Level Order Traversal after deletion:');
//   tree.levelOrderTraversal(tree.root);
// }