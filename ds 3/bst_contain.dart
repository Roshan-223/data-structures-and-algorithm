
// class Node {
//   int data;
//   Node? left;
//   Node? right;

//   Node(this.data);
// }
// class BinaryTree {
//   Node? root;

//   void insert(int data) {
//     if (root == null) {
//       root = Node(data);
//       return;
//     }
//     _insertRec(root, data);
//   }
//   void _insertRec(Node? currentNode, int data) {
//     if (data < currentNode!.data) {
//       if (currentNode.left == null) {
//         currentNode.left = Node(data);
//       } else {
//         _insertRec(currentNode.left, data);
//       }
//     } else {
//       if (currentNode.right == null) {
//         currentNode.right = Node(data);
//       } else {
//         _insertRec(currentNode.right, data);
//       }
//     }
//   }
//   void inorderTraversal() {
//     _inorderTraversalRec(root);
//   }
//   void _inorderTraversalRec(Node? root) {
//     if (root != null) {
//       _inorderTraversalRec(root.left);
//       print(root.data);
//       _inorderTraversalRec(root.right);
//     }
//   }
//   bool contains(int data){
//   return _containsRec(root, data);
//   }
//   bool _containsRec(Node?currentNode, data){
//  if(currentNode==null){
//   return false;
//  }
//  if(data==currentNode.data){
//   return true;
//  }else if(data<currentNode.data){
//   return _containsRec(currentNode.left,data);
//  }else{
//   return _containsRec(currentNode.right, data);
//  }
//   }
// }
// void main() {
//   BinaryTree tree = BinaryTree();

//   tree.insert(50);
//   tree.insert(30);
//   tree.insert(20);
//   tree.insert(40);
//   tree.insert(10);
//   tree.insert(60);
//   tree.insert(80);
//   tree.insert(90);
//   print('Inorder traversal:');
//   tree.inorderTraversal();
//   print("contains 30:${tree.contains(30)}");
//   print("contains 11:${tree.contains(11)}");
// }