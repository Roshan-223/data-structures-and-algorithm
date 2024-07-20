
class Node{
  int data;
  Node?left;
  Node?right;
  Node(this.data);
}
class BinartyTree{
  Node?root;
  void insert(int data){
    if(root==null){
      root=Node(data);
      return;
    }
    _insertRec(root, data);
  }
  void _insertRec(Node?currentNode, int data){
    if(data<currentNode!.data){
     if(currentNode.left==null){
    currentNode.left=Node(data);
     }else{
      _insertRec(currentNode.left, data);
     }
    }else{
      if(currentNode.right==null){
        currentNode.right=Node(data);
      }else{
        _insertRec(currentNode.right, data);
      }
    }
  }
  void preorderTraversal(){
    _preorderTraversalRec(root);
  }
  void _preorderTraversalRec(Node?currentNode){ 
    if(currentNode==null)return;
    print(currentNode.data);
  _preorderTraversalRec(currentNode.left);
_preorderTraversalRec(currentNode.right);
  }
}
void main(){
  BinartyTree tree=BinartyTree();

  tree.insert(50);
  tree.insert(30);
  tree.insert(40);
  tree.insert(10);
  tree.insert(60);
  tree.insert(80);
  print("preorder traversal");
 tree.preorderTraversal();
} 