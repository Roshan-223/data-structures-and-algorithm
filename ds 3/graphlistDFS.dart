class Graph {
  List<List<int>> adjacencyMatrix=[];

  Graph(int vertices) {
    adjacencyMatrix = List.generate(vertices, (_) => List<int>.filled(vertices, 0));
  }
  void addEdge(int source, int destination) {
    adjacencyMatrix[source][destination] = 1;
    adjacencyMatrix[destination][source] = 1;
  }
  void removeEdge(int source, int destination) {
    adjacencyMatrix[source][destination] = 0;
    adjacencyMatrix[destination][source] = 0;
  }
  void removeVertex(int vertex) {
    int numVertices = adjacencyMatrix.length;
    adjacencyMatrix.removeAt(vertex);
    for (int i = 0; i < numVertices; i++) {
      adjacencyMatrix[i].removeAt(vertex);
    }
  }
  void printGraph() {
    for (int i = 0; i < adjacencyMatrix.length; i++) {
      print(adjacencyMatrix[i]);
    }
  }
  void dfs(int startVertex) {
    List<bool> visited = List<bool>.filled(adjacencyMatrix.length, false);
    _dfsRecursive(startVertex, visited);
  }
  void _dfsRecursive(int vertex, List<bool> visited) {
    visited[vertex] = true;
    print('Visited: $vertex');

    for (int i = 0; i < adjacencyMatrix.length; i++) {
      if (adjacencyMatrix[vertex][i] == 1 && !visited[i]) {
        _dfsRecursive(i, visited);
      }
    }
  }
}
void main() {
  int numVertices = 5;
  Graph graph = Graph(numVertices);

  // Adding edges
  graph.addEdge(0, 1);
  graph.addEdge(0, 4);
  graph.addEdge(1, 2);
  graph.addEdge(1, 3);
  graph.addEdge(1, 4);
  graph.addEdge(2, 3);
  graph.addEdge(3, 4);

  // Running DFS from vertex 0
  graph.dfs(0);
}


