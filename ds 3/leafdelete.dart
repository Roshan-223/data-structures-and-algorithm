import 'dart:collection';

class Node{
  int data;
  Node?left;
  Node?right;
  Node(this.data);
}

class BinarySearchTree{
  Node?root;
  
  void insert(int data){
    if(root==null){
    root=Node(data);
    return;
  }
    _insertRec(root,data);
  }
  
  Node?_insertRec(Node?currentNode,int data){
    if(currentNode==null){
      return Node(data);
    }
    if(data.compareTo(currentNode.data) < 0){
      currentNode.left=_insertRec(currentNode.left,data);
    }else{
    currentNode.right=_insertRec(currentNode.right,data);
  }
  return currentNode;
  }

  
  void levelOrderTraversal(Node?root){
    if(root==null){
      return;
    }
    Queue<Node> queue=Queue();
    queue.add(root);
    
    while(queue.isNotEmpty){
     Node current=queue.removeFirst();
      print(current.data);
      
      if(current.left!=null){
        queue.add(current.left!);
      }
      if(current.right!=null){
        queue.add(current.right!);
      }
    }
  }
  
  void delete(int key){
    root=_deleteRec(root,key);
  }
Node? _deleteRec(Node? currentNode,int key){
  if(currentNode==null){
    return currentNode;
  }
  if(key < currentNode.data){
    currentNode.left=_deleteRec(currentNode.left,key);
  }else if(key > currentNode.data){
    currentNode.right =_deleteRec(currentNode.right,key);
  }
  // else{
  //   if(currentNode.left == null && currentNode.right == null){
  //     return null;
  //   }
  // }
    else{
    if(currentNode.left==null){
      return currentNode.right;
    }else if(currentNode.right==null){
      return currentNode.left;
    }
  }
  return currentNode;
}
}

void main(){
  final tree=BinarySearchTree();
    tree.insert(50);
    tree.insert(40);
    tree.insert(30);
    tree.insert(20);
    tree.insert(10);
    print('Level Order Traversal');
    tree.levelOrderTraversal(tree.root);
    // tree.delete(10);
    // print('Level Order Traversal after deletion:');
    // tree.levelOrderTraversal(tree.root);
     tree.delete(30);
    print('Delete after deletion:');
  tree.levelOrderTraversal(tree.root);
    
  }
