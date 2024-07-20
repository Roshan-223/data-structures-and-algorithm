// class Node{
//   int data;
//   Node?left;
//   Node?right;

//   Node(this.data);
// }
// class BinaryTree{
//   Node?root;
//   void insert(int data){
//     if(root==null){
//       root=Node(data);
//       return;
//     }
//     _insertRec(root,data);
//   }
//   void _insertRec(Node?currentNode,int data){
//     if(data<currentNode!.data){
//      if(currentNode.left==null){
//       currentNode.left=Node(data);
//      }
//     }
//   }
// }

 //...........

// class Node{
//   int data;
//   Node?left;
//   Node?right;
//   Node(this.data);
// }
// class BinaryTree{
// Node?root;

// void insert(int data){
//   if(root==null){
//     root=Node(data);
//     return;
//   }
//   _insertRec(root, data);
// }
// void _insertRec(Node?currentNode,int data){
//   if(data<currentNode!.data){
//     if(currentNode.left==null){
//       currentNode.left=Node(data);
//     }else{
//       _insertRec(currentNode.left, data);
//     }
//   }else{
//     if(currentNode.right==null){
//       currentNode.right=Node(data);
//     }else{
//       _insertRec(currentNode.right, data);
//     }
//   }
// }
// // void inorderTraversal(){
// //   _inorderTraversalRec(root);
// // }
// // void _inorderTraversalRec(Node?root){
// //   if(root!=null){
// //     _inorderTraversalRec(root.left);
// //     print(root.data);
// //     _inorderTraversalRec(root.right);
// //   }
// // }
// // void preorderTraversal(){
// //   _preorderTraversalRec(root);
// // }
// // void _preorderTraversalRec(Node?root){
// //   if(root!=null){
// //   print(root.data);
// //   _preorderTraversalRec(root.left);
// //   _preorderTraversalRec(root.right);
// // }
// // }
// void postorderTraversal(Node?root){
// if(root==null){
//   return;
// }
// postorderTraversal(root.left);
// postorderTraversal(root.right);
// print(root.data);
// }
// }
// void main(){
//   BinaryTree tree =BinaryTree();
//   tree.insert(50);
//   tree.insert(30);
//   tree.insert(20);
//   tree.insert(40);
//   tree.insert(10);
//   tree.insert(60);
//   tree.insert(80);
//   tree.insert(90);
//   print('inorder traversal:');
//  tree.postorderTraversal(tree.root);
// }

 //Example works containing

//  class Node{
//   int data;
//   Node?left;
//   Node?right;
//   Node(this.data);
//  }
//  class BinaryTree{
//   Node?root;

//   void insert(int data){
//     if(root==null){
//       root=Node(data);
//       return;
//     }
//       _insertRec(root,data);
//     }
//     void _insertRec(Node?currentNode,int data){
//       if(data<currentNode!.data){
//         if(currentNode.left==null){
//           currentNode.left=Node(data);
//         }else{
//           _insertRec(currentNode.left, data);
//         }
//       }else{
//         if(currentNode.right==null){
//           currentNode.right=Node(data);
//         }else{
//           _insertRec(currentNode.right, data);
//         }
//       }
//     }
//     void inorderTraversal(){
//       _inorderTraversalRec(root);
//     }
//     void _inorderTraversalRec(Node?root){
//       if(root!=null){
//         _inorderTraversalRec(root.left);
//         print(root.data);
//         _inorderTraversalRec(root.right);
//       }
//     }
//     bool contains(int data){
//       return _containsRec(root,data);
//     }
//     bool _containsRec(Node?currentNode,data){
//       if(currentNode==null){
//         return false;
//       }
//       if(data==currentNode.data){
//         return true;
//       }else if(data<currentNode.data){
//         return _containsRec(currentNode.left, data);
//       }else{
//         return _containsRec(currentNode.right, data);
//       }
//     }
//   }
//  void main(){
//   BinaryTree tree=BinaryTree();
//   tree.insert(50);
//   tree.insert(30);
//   tree.insert(20);
//   tree.insert(40);
//   tree.insert(10);
//   tree.insert(60);
//   tree.insert(80);
//   tree.insert(90);
//   print('inorder traversal');
//   tree.inorderTraversal();
//   print("contains 30:${tree.contains(30)}");
//   print("contains 1:${tree.contains(1)}");
//  }




// NewWorkout


// import 'dart:collection';

// import 'bst_preorder.dart';

// class Node{
//   int data;
//   Node?left;
//   Node?right;
//   Node(this.data);
// }
// class BinaryTree{
//   Node?root;

//   void insert(int data){
//     if(root==null){
//       root=Node(data);
//       return;
//     }
//     _insertRec(root, data);
//   }
// void _insertRec(Node?currentNode,int data){
//   if(data<currentNode!.data){
//     if(currentNode.left==null){
//       currentNode.left=Node(data);
//     }else{
//       _insertRec(currentNode.left, data);
//     }
//   }else{
//     if(currentNode.right==null){
//       currentNode.right=Node(data);
//     }else{
//       _insertRec(currentNode.right, data);
//     }
//   }
// }
// // void inorderTraversal(){
// //   _inorderTraversalRec(root);
// // }
// // void _inorderTraversalRec(Node?root){
// //   if(root!=null){
// //     _inorderTraversalRec(root.left);
// //     print(root.data);
// //     _inorderTraversalRec(root.right);
// //   }
// // }
// void levelorderTraversal(){
//   if(root == null){
//     print("tree is empty");
//     return;
//   }
//   Queue<Node?>queue=Queue();
//   queue.add(root);
//   while(queue.isNotEmpty){
//     Node?currentNode=queue.removeFirst();
//     print(currentNode!.data);

//     if(currentNode.left!=null){
//       queue.add(currentNode.left);
//     }
//     if(currentNode.right!=null){
//       queue.add(currentNode.right);
//     }
//   }
  
// }
// int height(){
//   return _heightRec(root);
// }
// int _heightRec(Node?root){
//   if(root == null){
//     return 0;
//   }
//   int leftHeight=_heightRec(root.left);
//   int rightHeight=_heightRec(root.right);
//   return(leftHeight>rightHeight)?leftHeight+1:rightHeight+1;
// }
// }
// void main(){
//   BinaryTree tree=BinaryTree();

//  tree.insert(50);
//  tree.insert(30);
//  tree.insert(20);
//  tree.insert(40);
//  tree.insert(10);
//  tree.insert(60);
//  tree.insert(80);
//  tree.insert(90);

//  print("inorder traversal");
// //  tree.inorderTraversal();
// tree.levelorderTraversal();
// //  print("height of the the tree :${tree.height()}");

// }


// class Node {
//   int data;
//   Node? left, right;
//   Node(this.data);
// }

// bool isBST(Node? root, [int? minValue, int? maxValue]) {
//   if (root == null) {
//     return true;
//   }

//   // check if the current node's value is within the valid range
//   if ((minValue != null && root.data <= minValue) ||
//       (maxValue != null && root.data >= maxValue)) {
//     return false;
//   }

//   // recursively check if the left and right subtrees are BSTs
//   return isBST(root.left, minValue, root.data) &&
//          isBST(root.right, root.data, maxValue);
// }

// void main() {
//   // create a test tree
//   var root = Node(4);
//   root.left = Node(2);
//   root.right = Node(5);
//   root.left!.left = Node(1);
//   root.left!.right = Node(3);
//   // root.right!.right=Node(6);
//   // root.right!.left=Node(3);
 

//   // check if the tree is a BST
//   if (isBST(root, null, null)) {
//     print("The tree is a BST");
//   } else {
//     print("The tree is not a BST");
//   }
// }

// BST Validation

// class Node{
//   int data;
//   Node?left;
//   Node?right;
//   Node(this.data);
// }
// bool isBST(Node?root,[int?minValue,int ?maxValue]){
//   if(root == null){
//     return true;
//   }
//   if((minValue!=null && root.data<=minValue)||(maxValue!=null && root.data>=maxValue)){
//     return false;
//   }
//   return isBST(root.left,minValue,root.data)&&
//   isBST(root.right,root.data,maxValue);
// }
// void main(){
//   var root =Node(4);
//   root.left=Node(2);
//   root.right=Node(5);
//   root.left!.left=Node(1);
//   root.left!.right=Node(3);


//   if(isBST(root,null, null)){
//     print("the tree is a BSt");
//   }else{
//     print("the tree is not a BSt");
//   }
// }


// bst

// class Node{
//   int data;
//   Node?left;
//   Node?right;
//   Node(this.data);
// }
// class BinaryTree{
//   Node?root;
//   void insert(int data){
//     if(root==null){
//       root=Node(data);
//       return;
//     }
//     _insertRec(root,data);
//   }
//   void _insertRec(Node?currentNode, int data){
//     if(data<currentNode!.data){
//       if(currentNode.left==null){
//         currentNode.left=Node(data);
//       }else{
//         _insertRec(currentNode.left, data);
//       }
//     }else{
//       if(currentNode.right==null){
//         currentNode.right=Node(data);
//       }else{
//         _insertRec(currentNode.right, data);
//       }
//     }
//   }
//   // void inorderTraversal(){
//   //   _inorderTraversalRec(root);
//   // }
//   // void _inorderTraversalRec(Node?root){
//   //   if(root!=null){
//   //     _inorderTraversalRec(root.left);
//   //     print(root.data);
//   //     _inorderTraversalRec(root.right);
//   //   }
//   // }
//   void preorderTraversal(){
//     _preorderTraversalRec(root);
//   }
//   void _preorderTraversalRec(Node?currentNode){
//     if(currentNode==null)return;
//     print(currentNode.data);
//     _preorderTraversalRec(currentNode.left);
//     _preorderTraversalRec(currentNode.right);
//   }
//   bool contains(int data){
//     return _containsRec(root,data);
//   }
//   bool _containsRec(Node?currentNode,data){
//     if(currentNode==null){
//       return false;
//     }
//     if(data==currentNode.data){
//       return true;
//     }else if(data<currentNode.data){
//       return _containsRec(currentNode.left, data);
//     }else{
//       return _containsRec(currentNode.right, data);
//     }
//   }
// }
// void main(){
//   BinaryTree tree=BinaryTree();

//   tree.insert(50);
//   tree.insert(30);
//   tree.insert(20);
//   tree.insert(40);
//   tree.insert(10);
//   tree.insert(60);
//   tree.insert(80);
//   tree.insert(90);

//   print('inorder traversal');
//   tree.preorderTraversal();
  
//   print('contains 30:${tree.contains(30)}');



// }

// class Node{
//   int data;
//   Node?left;
//   Node?right;
//   Node(this.data);
// }
// bool isBst(Node?root,[int?minValue,int? maxValue]){
//   if(root==null){
//     return true;
//   }
//   if((minValue!=null && root.data<=minValue)||(maxValue!=null && root.data>=maxValue)){
//     return false;
//   }
//   return isBst(root.left,minValue,root.data)&&isBst(root.right,root.data,maxValue);
// }
// void main(){
//   var root=Node(4);
//   root.left=Node(2);
//   root.right=Node(5);
//   root.left!.left=Node(11);
//   root.left!.right=Node(3);

//   if(isBst(root,null,null)){
//     print("the tree is a bst");
//   }else{
//     print("the tree is not a bst");
//   }
// }

// class MaxHeap{
//   List<int>heap=[];

//   void insert(int value){
//     heap.add(value);
//     _heapifyUp(heap.length-1);
//   }
//   void _heapifyUp(int index){
//     while(index>0){
//       int parentindex=(index-1)~/2;
//       if(heap[parentindex]>heap[index]){
//         int temp=heap[parentindex];
//         heap[parentindex]=heap[index];
//         heap[index]=temp;
//         index=parentindex;
//       }else{
//         break;
//       }
//     }
//   }
// }
// void main(){
//   MaxHeap maxheap=MaxHeap();
//   maxheap.insert(10);
//   maxheap.insert(3);
//   maxheap.insert(8);
//   maxheap.insert(1);
//   print('max heap elements:${maxheap.heap}');

// }
// class TrieNode{
//   late Map<String,TrieNode>children;
//   late bool isEndOfWord;

//   TrieNode(){
//     this.children={};
//     this.isEndOfWord=false;
//   }
// }
// class Trie{
//   late TrieNode root;
//   Trie(){
//     this.root=TrieNode();
//   }
//   void insert(String word){
//     TrieNode node=root;
//     for(int i=0;i<word.length;i++){
//       String char=word[i];
//       if(!node.children.containsKey(char)){
//         node.children[char]=TrieNode();
//       }
//       node=node.children[char]!;
//     }
//     node.isEndOfWord=true;
//   }
//   String search(String word){
//     TrieNode?currentNode=root;
//     String foundWord="";

//     for(int i=0;i<word.length;i++){
//       String character=word[i];
//       if(currentNode==null||!currentNode.children.containsKey(character)){
//         break;
//       }
//       currentNode=currentNode.children[character];
//       foundWord+=character;
//     }
//     return (currentNode!=null && currentNode.isEndOfWord)?foundWord:'false';
//   }
// }
// void main(){
//   Trie trie =Trie();
//   trie.insert('roshan');
//   print('search for roshan:${trie.search('roshan')}');
// }




// class TrieNode{
//   late Map<String,TrieNode>children;
//   late bool isEndofword;
// TrieNode(){
//   this.children={};
//   this.isEndofword=false;
// }
// }
// class Trie{
//   late TrieNode root;
//   Trie(){
//     this.root=TrieNode();
//   }
//   void insert(String word){
//     TrieNode node=root;
//     for(int i=0;i<word.length;i++){
//       String char=word[i];
//       if(!node.children.containsKey(char)){
//         node.children[char]=TrieNode();
//       }
//       node=node.children[char]!;
//     }
//     node.isEndofword=true;
//   }
//   bool search(String word){
//   TrieNode node=root;
//   for(int i=0;i<word.length;i++){
//     String char=word[i];
//     if(!node.children.containsKey(char)){
//       return false;
//     }
//     node=node.children[char]!;
//   }
//   return node.isEndofword;
//   }
//   bool StartWith(String prefix){
//     TrieNode?currentNode=root;
// for(int i=0;i<prefix.length;i++){
//   String character=prefix[i];
//   if(currentNode==null||!currentNode.children.containsKey(character)){
//     return false;
//   }
//   currentNode=currentNode.children[character];
// }
// return true;
//   }
// }
// void main(){
// Trie trie=Trie();
// trie.insert('roshan');
// trie.insert('apple');
// print(trie.search('roshan'));
// print(trie.search('apple'));

// print('does trie contain prefix :${trie.StartWith("ro")}');
// }



// import 'dart:collection';



// class Graph{
//   Map<int,List<int>>adjacencyList={};

//   void addVertex(int vertex){
//     adjacencyList[vertex]=[];
//   }
//   void addEdge(int source,int destination){
//     adjacencyList[source]?.add(destination);
//     adjacencyList[destination]?.add(source);
//   }
//   void printGraph(){
//     adjacencyList.forEach((vertex, edges) {
//       print("$vertex->${edges.join('->')}");
//      });
//   }
//   void bfs(int startVertex){
//     if(!adjacencyList.containsKey(startVertex)){
//       print('start vertex $startVertex not found in the grpah');
//       return;
//     }
//     Set<int>visited={};
//     Queue<int> queue=Queue();

//    visited.add(startVertex);
//    queue.add(startVertex);

//    while(queue.isNotEmpty){
//     int currentVertex=queue.removeFirst();
//     print(currentVertex);
//     List<int>?neighbor=adjacencyList[currentVertex];
//     if(neighbor!=null){
//       for(int neighbor in adjacencyList[currentVertex]!){
//         if(!visited.contains(neighbor)){
//           visited.add(neighbor);
//           queue.add(neighbor);
//         }
//       }
//     }
//    }
//   }
//   void dfs(int startVertex){
//     Set<int>visited=Set<int>();
//     Stack<int>stack=Stack();

//     visited.add(startVertex);
//     stack.add(startVertex);

//     while(stack.isNotEmpty){
//       int vertex=stack.pop();
//       print(vertex);

//       for(int neighbour in adjacencyList[vertex]!){
//         if(!visited.contains(neighbour)){
//           visited.add(neighbour);
//           stack.add(neighbour);
//         }
//       }
//     }
//   }
  
// }
// class Stack<T>{
//   List<T> _stack=[];

//   void add(T item){
//     _stack.add(item);
//   }
//   T pop(){
//     return _stack.removeLast();
//   }
//   bool get isEmpty => _stack.isEmpty;
//   bool get isNotEmpty => _stack.isNotEmpty;
// }


// void main(){
//   Graph graph=Graph();
//   graph.addVertex(1);
//   graph.addVertex(2);
//   graph.addVertex(3);
//   graph.addVertex(4);
//   graph.addVertex(5);

//   graph.addEdge(1, 6);
//   graph.addEdge(1, 2);
//   graph.addEdge(2, 4);
//   graph.addEdge(3, 4);
//   graph.addEdge(4, 5);

//   print("bfsTraversal");
//  graph.dfs(1);

// }


// class TrieNode{
//   late Map<String, TrieNode>children;
//   late bool isEndofword;

//   TrieNode(){
//     this.children={};
//     this.isEndofword=false;
//   }
// }
// class Trie{
//   late TrieNode root;
//   Trie(){
//     this.root=TrieNode();
//   }
//   void insert(String word){
//     TrieNode node=root;
//     for(int i=0;i<word.length;i++){
//       String char=word[i];
//       if(!node.children.containsKey(char)){
//         node.children[char]=TrieNode();
//       }
//       node=node.children[char]!;
//     }
//     node.isEndofword=true;
//   }
//   bool search(String word){
//     TrieNode node=root;
//     for(int i=0;i<word.length;i++){
//       String char=word[i];
//       if(!node.children.containsKey(char)){
//         return false;
//       }
//       node=node.children[char]!;
//     }
//     return node.isEndofword;
//   }
// }
// void main(){
//   Trie trie=Trie();

//   trie.insert('apple');
//   trie.insert('banana');

//   print(trie.search('banana'));
// }

 

// class TrieNode{
//   late Map<String,TrieNode>children;
//  late bool isEndOfWord;
 
//  TrieNode(){
//   this.children={};
//   this.isEndOfWord=false;
//  }
//  }
//  class trie{
//   late TrieNode root;
//   Trie(){
//     this.root=TrieNode();
//   }
//   void insert(String word){
//     TrieNode node=root;
//     for(int i=0;i<word.length;i++){
//       String char=word[i];
//       if(!node.children.containsKey(char)){
//         node.children[char]=TrieNode();
//       }
//       node=node.children[char]!;
//     }
//     node.isEndOfWord=true;
//   }
//   String search(String word){
//     TrieNode?currentNode=root;
//     String foundWord="";
//     for(int i=0;i<word.length;i++){
//       String character=word[i];
//       if(currentNode==null||currentNode.children.containsKey(character)){
//         break;
//       }
//       currentNode=currentNode.children[character];
//       foundWord+=character;
//     }
//     return (currentNode!=null && currentNode.isEndOfWord)?foundWord:"false";
//   }
//  }
//  void main(){

//  }
 



// class Node{
//   int data;
//   Node?left;
//   Node?right;
//   Node(this.data);
// }
// class BinaryTree{
//   Node?root;
//   void insert(int data){
//     if(root==null){
//       root=Node(data);
//       return;
//     }
//     _insertRec(root, data);
//   }
//   void _insertRec(Node?currentNode,int data){
//     if(data<currentNode!.data){
//       if(currentNode.left==null){
//         currentNode.left=Node(data);
//       }else{
//         _insertRec(currentNode.left, data);
//       }
//     }else{
//       if(currentNode.right==null){
//         currentNode.right=Node(data);
//       }else{
//         _insertRec(currentNode.right, data);
//       }
//     }
//   }
// }




// class TrieNode{
//   late Map<String,TrieNode>children;
//   late bool isEndofword;

//   TrieNode(){
//     this.children={};
//     this.isEndofword="false";
//   }
// }
// class Trie{
//   late TrieNode root;
//   Trie(){
//     this.root=TrieNode();
//   }
//   void insert(String word){
//     TrieNode node=root;
//     for(int i=0;i<word.length;i++){
//       String char=word[i];
//       if(!node.children.containsKey(char)){
//         node.children[char]
//       }
//     }
//   }
// }


void bfs(int startVertex){
  Set<int>visited=Set<int>();
  Queue<int>queue=Queue();

  visited.add(startVertex);
  queue.add(startVertex);

  while(queue.isNotEmpty){
    int currentVertex=queue.removefirst;
    print(currentVertex);

    for(int neighbor in adja)
  }
}