// import 'dart:collection';

// class Graph {
//   late Map<int, List<int>> adjacencyList;

//   Graph() {
//     adjacencyList = {};
//   }

//   void addVertex(int vertex) {
//     adjacencyList[vertex] = [];
//   }

//   void addEdge(int source, int destination) {
//     adjacencyList[source]?.add(destination);
//     adjacencyList[destination]?.add(source);
//   }

//   void printGraph() {
//     adjacencyList.forEach((vertex, edges) {
//       print("$vertex -> ${edges.join('->')}");
//     });
//   }

//   void dfs(int startVertex) {
//     Set<int> visited = Set();
//     _dfsRecursive(startVertex, visited);
//   }

//   void _dfsRecursive(int vertex, Set<int> visited) {
//     visited.add(vertex);
//     print(vertex);

//     for (int neighbor in adjacencyList[vertex]!) {
//       if (!visited.contains(neighbor)) {
//         _dfsRecursive(neighbor, visited);
//       }
//     }
//   }

//   void bfs(int startVertex) {
//     Set<int> visited = Set();
//     Queue<int> queue = Queue();

//     visited.add(startVertex);
//     queue.add(startVertex);

//     while (queue.isNotEmpty) {
//       int currentVertex = queue.removeFirst();
//       print(currentVertex);

//       for (int neighbor in adjacencyList[currentVertex]!) {
//         if (!visited.contains(neighbor)) {
//           visited.add(neighbor);
//           queue.add(neighbor);
//         }
//       }
//     }
//   }
// }

// void main() {
//   Graph graph = Graph();

//   graph.addVertex(1);
//   graph.addVertex(2);
//   graph.addVertex(3);
//   graph.addVertex(4);
//   graph.addVertex(5);

//   graph.addEdge(1, 2);
//   graph.addEdge(1, 3);
//   graph.addEdge(2, 4);
//   graph.addEdge(2, 5);

//   print('Graph representation:');
//   graph.printGraph();

//   print('DFS traversal:');
//   graph.dfs(1);

//   print('BFS traversal:');
//   graph.bfs(1);
// }
//...........

// class Graph{
//   late Map<int,List<int>>adajencyList;

//   Graph(){
//     adajencyList={};
//   }
//   void addvertex(int vertex){
//     adajencyList[vertex]=[];
//   }
//   void addEdge(int source,int destination){
//     adajencyList[source]?.add(destination);
//     adajencyList[destination]?.add(source);
//   }
//   void printGraph(){
//     adajencyList.forEach((vertex, edges) {
//       print("$vertex -> ${edges.join('->')}");
//   });
// }
// void dfs(int startVertex){
//   Set<int>visited=Set();
//   _dfsRec(startVertex, visited);
// }
// void _dfsRec(int vertex, Set<int>visited){
// visited.add(vertex);
// print(vertex);

// for(int neighbor in adajencyList[vertex]!){
//   if(!visited.contains(neighbor)){
//   _dfsRec(neighbor, visited);
//   }
// }
// }
// }
// void main(){
//    Graph graph = Graph();

//   graph.addvertex(1);
//     graph.addvertex(2);
//       graph.addvertex(3);
//         graph.addvertex(4);
//           graph.addvertex(5);


//   graph.addEdge(1, 2);
//   graph.addEdge(1, 3);
//   graph.addEdge(2, 4);
//   graph.addEdge(2, 5);

//   print('graph representation:');
//   graph.dfs(1);

// }


class Graph {
  late Map<int, List<int>> adjacencyList;

  Graph() {
    adjacencyList = {};
  }

  void addVertex(int vertex) {
    adjacencyList[vertex] = [];
  }

  void addEdge(int source, int destination) {
    adjacencyList[source]?.add(destination);
    adjacencyList[destination]?.add(source);
  }

  void printGraph() {
    adjacencyList.forEach((vertex, edges) {
      print("$vertex -> ${edges.join('->')}");
    });
  }

  void dfs(int startVertex) {
    Set<int> visited = Set();
    _dfsRec(startVertex, visited);
  }

  void _dfsRec(int vertex, Set<int> visited) {
    visited.add(vertex);
    print(vertex);

    for (int neighbor in adjacencyList[vertex]!) {
      if (!visited.contains(neighbor)) {
        _dfsRec(neighbor, visited);
      }
    }
  }
}

void main() {
  Graph graph = Graph();

  graph.addVertex(1);
  graph.addVertex(2);
  graph.addVertex(3);
  graph.addVertex(4);
  graph.addVertex(5);

  graph.addEdge(1, 2);
  graph.addEdge(1, 3);
  graph.addEdge(2, 4);
  graph.addEdge(2, 5);

  print('Graph representation:');
  graph.dfs(1);
}
