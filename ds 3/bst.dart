
class Node {
  int data;
  Node? left;
  Node? right;

  Node(this.data);
}
class BinaryTree {
  Node? root;

  void insert(int data) {
    if (root == null) {
      root = Node(data);
      return;
    }

    _insertRec(root, data);
  }
  void _insertRec(Node? currentNode, int data) {
    if (data < currentNode!.data) {
      if (currentNode.left == null) {
        currentNode.left = Node(data);
      } else {
        _insertRec(currentNode.left, data);
      }
    } else {
      if (currentNode.right == null) {
        currentNode.right = Node(data);
      } else {
        _insertRec(currentNode.right, data);
      }
    }
  }
  void inorderTraversal() {
    _inorderTraversalRec(root);
  }
    void _inorderTraversalRec(Node? root) {
    if (root != null) {
      _inorderTraversalRec(root.left);
      print(root.data);
         _inorderTraversalRec(root.right);
    }
  }
  // int getHeight() {
  //   return _getHeightRec(root);
  // }

  // int _getHeightRec(Node? root) {
  //   if (root == null) {
  //     return 0;
  //   }
  //   int leftHeight = _getHeightRec(root.left);
  //   int rightHeight = _getHeightRec(root.right);
  //   return (leftHeight > rightHeight) ? leftHeight + 1 : rightHeight + 1; 
  // }
 
}

void main() {
  BinaryTree tree = BinaryTree();

  tree.insert(50);
  tree.insert(30);
  tree.insert(20);
  tree.insert(40);
  tree.insert(10);
  tree.insert(60);
  tree.insert(80);
  tree.insert(90);
  print('Inorder traversal:');
  tree.inorderTraversal();
  // print("height of the tree:${tree.getHeight()}");

}


//  three traversal in tree


// class Node{
//   int data;
//   Node?left;
//   Node?right;
//   Node(this.data);
// }
// class BinartyTree{
//   Node?root;

// void insert(int data){
// if(root==null){
//   root=Node(data);
//   return;
// }
// _insertRec(root,data);
// }
// void _insertRec(Node?currretNode, int data){
// if(data<currretNode!.data){
//   if(currretNode.left==null){
//   currretNode.left=Node(data);
//   }else{
//     _insertRec(currretNode.left, data);
//   }
// }else{
//   if(currretNode.right==null){
//      currretNode.right=Node(data);
//   }else{
//     _insertRec(currretNode.right,data);
//   }
// }
// }
// void inorderTraversal(){
//  _inorderTraversalRec(root);
// }
// void _inorderTraversalRec(Node?root){
//   if(root!=null){
//  _inorderTraversalRec(root.left);
//  print(root.data);
//  _inorderTraversalRec(root.right);
//   }
// }
// void preorderTraversal(){
//   _preorderTraversalRec(root);
// }
// void _preorderTraversalRec(Node?root){
//   if(root!=null){
//    print(root.data);
//    _preorderTraversalRec(root.left);
//    _preorderTraversalRec(root.right);
//   }
// }

// void _postorderTraversal(){
  
//   _postorderTraversalRec(root);
// }
// void _postorderTraversalRec(Node?root){
// if(root!=null){
//   _postorderTraversalRec(root.left);
//   _postorderTraversalRec(root.right);
//   print(root.data);
// }
// }

// }
// void main(){
//   BinartyTree tree=BinartyTree();
//   tree.insert(50);
//   tree.insert(30);
//   tree.insert(20);
//   tree.insert(40);
//   tree.insert(10);
//   tree.insert(60);
//   tree.insert(80);
//   tree.insert(90);
//   // print("inorder traversal");
//   // tree.inorderTraversal();
//   // tree.preorderTraversal();
// tree._postorderTraversal();

// }



