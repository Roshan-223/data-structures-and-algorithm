// class TrieNode {
//   late Map<String, TrieNode> children;
//   late bool isEndOfWord;

//   TrieNode() {
//     this.children = {};
//     this.isEndOfWord = false;
//   }
// }
// class Trie {
//   late TrieNode root; 
//   Trie() {
//     this.root = TrieNode();
//   }
//   void insert(String word) {
//     TrieNode node = root;
//     for (int i = 0; i < word.length; i++) {
//       String char = word[i];
//       if (!node.children.containsKey(char)) {
//         node.children[char] = TrieNode();
//       }
//       node = node.children[char]!;
//     }
//     node.isEndOfWord = true;
//   }
//   bool search(String word) {
//     TrieNode node = root;
//     for (int i = 0; i < word.length; i++) {
//       String char = word[i];
//       if (!node.children.containsKey(char)) {
//         return false;
//       }
//       node = node.children[char]!;
//     }
//     return node.isEndOfWord;
//   }
  
//   bool startsWith(String prefix) {
//     TrieNode? currentNode = root;

//     for (int i = 0; i < prefix.length; i++) {
//       String character = prefix[i];
//       if (currentNode == null || !currentNode.children.containsKey(character)) {
//         return false;
//       }
//       currentNode = currentNode.children[character];
//     }
//     return true;
//   }
// }
// void main() {
//   Trie trie = Trie();

//   // Insert words into the trie
//   trie.insert("apple");
//   trie.insert("banana");
//   // Search for a word
//   print(trie.search("banana")); // Output: true
//   print(trie.search("pear"));   // Output: false
//   //  prefix
//    print('Does trie contain prefix "app"? ${trie.startsWith("app")}'); // Output: true
//   print('Does trie contain prefix "gr"? ${trie.startsWith("gr")}');   // Output: true
// }

// class TrieNode {
//   late Map<String, TrieNode> children;
//   late bool isEndOfWord;

//   TrieNode() {
//     this.children = {};
//     this.isEndOfWord = false;
//   }
// }
// class Trie {
//   late TrieNode root; 
//   Trie() {
//     this.root = TrieNode();
//   }
//   void insert(String word) {
//     TrieNode node = root;
//     for (int i = 0; i < word.length; i++) {
//       String char = word[i];
//       if (!node.children.containsKey(char)) {
//         node.children[char] = TrieNode();
//       }
//       node = node.children[char]!;
//     }
//     node.isEndOfWord = true;
//   }
//  String search(String word) {
//   TrieNode? currentNode = root;
//   String foundWord = '';

//   for (int i = 0; i < word.length; i++) {
//     String character = word[i];
//     if (currentNode == null || !currentNode.children.containsKey(character)) {
//       break;
//     }
//     currentNode = currentNode.children[character];
//     foundWord += character;
//   }
//   return (currentNode != null && currentNode.isEndOfWord) ? foundWord:'false';
// }
// }
// void main() {
//   Trie trie = Trie();

//   trie.insert('dart');
//   trie.insert('data');
//   trie.insert('dog');

//   print('Search for "dart": ${trie.search("dart")}'); // dart
//   print('Search for "data": ${trie.search("data")}'); // data
//   print('Search for "dog": ${trie.search("dog")}');   // dog
//   print('Search for "cat": ${trie.search("cat")}');   // '
// }



