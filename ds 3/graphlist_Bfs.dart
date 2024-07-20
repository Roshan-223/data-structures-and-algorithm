// import 'dart:collection';

// class Graph {
//   Map<int, List<int>> adjacencyList = {};

//   void addVertex(int vertex) {
//     adjacencyList[vertex] = [];
//   }

//   void addEdge(int source, int destination) {
//     adjacencyList[source]?.add(destination);
//     adjacencyList[destination]?.add(source);
//   }

//   void removeEdge(int source, int destination) {
//     adjacencyList[source]?.remove(destination);
//     adjacencyList[destination]?.remove(source);

//   }

//   void removeVertex(int vertex) {
//     adjacencyList.remove(vertex);
//     adjacencyList.values.forEach((edges) => edges.remove(vertex));
//   }

//   void printGraph() {
//     adjacencyList.forEach((vertex, edges) {
//       print('$vertex -> ${edges.join(' -> ')}');
//     });
//   }

//   // BFS method
//   void bfs(int startVertex) {
//     if (!adjacencyList.containsKey(startVertex)) {
//       print("Start vertex $startVertex not found in the graph.");
//       return;
//     }
//     Set<int> visited = {}; // To keep track of visited vertices
//     Queue<int> queue = Queue(); // Queue for BFS traversal

//     visited.add(startVertex);
//     queue.add(startVertex);

//     while (queue.isNotEmpty) {
//       int currentVertex = queue.removeFirst();
//       print(currentVertex);

//       // Adding unvisited neighbors to the queue and marking them as visited
//       List<int>? neighbors = adjacencyList[currentVertex];
//       if (neighbors != null) {
//         for (int neighbor in adjacencyList[currentVertex]!) {
//           if (!visited.contains(neighbor)) {
//             visited.add(neighbor);
//             queue.add(neighbor);
//           }
//         }
//       }
//     }
//   }
// }

// void main() {
//   Graph graph = Graph();

//   // Adding vertices
//   graph.addVertex(1);
//   graph.addVertex(2);
//   graph.addVertex(3);
//   graph.addVertex(4);
//   graph.addVertex(5);

//   // Adding edges
//   graph.addEdge(1, 6);
//   graph.addEdge(1, 3);
//   graph.addEdge(2, 4);
//   graph.addEdge(3, 4);
//   graph.addEdge(4, 5);

//   // Removing an edge
//   graph.removeEdge(1, 3);

//   // Removing a vertex
//   graph.removeVertex(5);

//   // Printing the graph
//   graph.printGraph();

//   // BFS traversal from vertex 1
//   print("BFS traversal:");
//   graph.bfs(1);
// }




// import 'dart:collection';
// class Graph{
//   Map<int,List<int>>adajencyList ={};

//   void addverticex(int vertex){
//     adajencyList[vertex]=[];
//   }
//   void addEdge(int source,int destination){
//     adajencyList[source]?.add(destination);
//     adajencyList[destination]?.add(source);
//   }
//   void removeEdge(int source,int destination){
//     adajencyList[source]?.remove(destination);
//     adajencyList[destination]?.remove(source);
//   }
//   void removeVertex(int vertex){
//     adajencyList.remove(vertex);
//     adajencyList.values.forEach((edges) =>edges.remove(vertex));
//   }
//   void printGraph(){
//     adajencyList.forEach((vertex, edges) {
//    print("$vertex ->${edges.join('->')}");
//     });
//   }
//   void bfs(int startVertex){
//     if(!adajencyList.containsKey(startVertex)){ 
//   print("start vertex $startVertex not found in the graph");
//    return;
//     }
//     Set<int>visited={};
//     Queue<int>queue=Queue();

//     visited.add(startVertex);
//     queue.add(startVertex);

//     while(queue.isNotEmpty){
//       int currentVertex=queue.removeFirst();
//       print(currentVertex);
//       List<int>?neighbors=adajencyList[currentVertex];
//       if(neighbors!=null){
//         for(int neighbors in adajencyList[currentVertex]!){
//           if(!visited.contains(neighbors)){
//             visited.add(neighbors);
//             queue.add(neighbors);
//           }
//         }
//       }
//     }
//   }
// }
// void main(){
//   Graph graph=Graph();
//   graph.addverticex(1);
//   graph.addverticex(2);
//   graph.addverticex(3);
//   graph.addverticex(4);
//   graph.addverticex(5);

//   graph.addEdge(1, 6);
//   graph.addEdge(1, 3);
//   graph.addEdge(2, 4);
//   graph.addEdge(3, 4);
//   graph.addEdge(4, 5);

//  graph.removeEdge(1, 3);

//  graph.removeVertex(5);

//  graph.printGraph();

//  print("BFS traversal:");
//  graph.bfs(1);
// }


// class Graph {
//   Map<int, List<int>> adjacencyList = {};

//   void addVertex(int vertex) {
//     adjacencyList[vertex] = [];
//   }

//   void addEdge(int source, int destination) {
//     adjacencyList[source]?.add(destination);
//   }

//   void dfs(int startVertex) {
//     Set<int> visited = Set<int>();
//     Stack<int> stack = Stack<int>();

//     visited.add(startVertex);
//     stack.add(startVertex);

//     while (stack.isNotEmpty) {
//       int vertex = stack.pop();
//       print(vertex);

//       for (int neighbor in adjacencyList[vertex]!) {
//         if (!visited.contains(neighbor)) {
//           visited.add(neighbor);
//           stack.add(neighbor);
//         }
//       }
//     }
//   }
// }
// class Stack<T> {
//   List<T> _stack = [];

//   void add(T item) {
//     _stack.add(item);
//   }
//   T pop() {
//     return _stack.removeLast();
//   }

//   bool get isEmpty => _stack.isEmpty;

//   bool get isNotEmpty => _stack.isNotEmpty;
// }

// void main() {
//   Graph graph = Graph();
//   graph.addVertex(0);
//   graph.addVertex(1);
//   graph.addVertex(2);
//   graph.addVertex(3);
//   graph.addVertex(4);

//   graph.addEdge(0, 1);
//   graph.addEdge(0, 2);
//   graph.addEdge(1, 2);
//   graph.addEdge(2, 0);
//   graph.addEdge(2, 3);
//   graph.addEdge(3, 0);

//   print('DFS Traversal starting from vertex 1:');
//   graph.dfs(1);
// }
// import 'dart:isolate';

// import 'blankSpace.dart';

// class Graph{
//   Map<int,List<int>>adajencyList={};

//   void addVertex(int vertex){
//     adajencyList[vertex]=[];
//   }
//   void addEdge(int source,int destination){
//     adajencyList[source]?.add(destination);
//   }
//   void dfs(int startVertex){
//     Set<int>visited=Set<int>();
//     Stack<int> stack=Stack<int>();
//     visited.add(startVertex);
//     stack.add(startVertex);

//     while(stack.isNotEmpty){
//       int vertex=stack.pop();
//       print(vertex);

//       for(int neighbours in adajencyList[vertex]!){
//          if(!visited.contains(neighbours)){
//           visited.add(neighbours);
//           stack.add(neighbours);
//          }
//       }
//     }
//   }
// }
// class Stack<T>{
// List<T>_stack=[];

// void add(T item){
//   _stack.add(item);
// }
// T pop(){
//   return _stack.removeLast();
// }
// bool get isEmpty=>_stack.isEmpty;
// bool get isNotEmpty=> _stack.isNotEmpty;
// }
// void main(){
//   Graph graph =Graph();
//   graph.addVertex(0);
//   graph.addVertex(1);
//   graph.addVertex(2);
//   graph.addVertex(3);
//   graph.addVertex(4);

//   graph.addEdge(0, 1);
//   graph.addEdge(0, 2);
//   graph.addEdge(1, 2);
//   graph.addEdge(2, 0);
//   graph.addEdge(2, 3);

//   print("DFs traversal");
//   graph.dfs(1);
// }b
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
//       if(node.children.containsKey(char)){
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


