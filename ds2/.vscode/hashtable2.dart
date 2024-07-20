// class HashNode {
//   final int? key;
//   final int? value;
//   HashNode? next;

//   HashNode(this.key, this.value);
// }

// class HashTable {
//   late List<HashNode?> table;
//   int capacity;

//   HashTable(int capacity)
//        this.capacity = capacity,
//         table = List.filled(capacity, null);

//   int _hash(int key) {
//     return key % capacity;
//   }

//   void insert(int key, int value) {
//     int index = _hash(key);
//     HashNode newNode = HashNode(key, value);

//     if (table[index] == null) {
//       table[index] = newNode;
//     } else {
//       HashNode currentNode = table[index]!;
//       while (currentNode.next != null) {
//         currentNode = currentNode.next!;
//       }
//       currentNode.next = newNode;
//     }
//   }

//   int? search(int key) {
//     int? index = _hash(key);

//     HashNode? currentNode = table[index];
//     while (currentNode != null) {
//       if (currentNode.key == key) {
//         return currentNode.value;
//       }
//       currentNode = currentNode.next;
//     }

//     return null;
//   }

//   void delete(int key) {
//     int index = _hash(key);

//     if (table[index] == null) {
//       return;
//     }

//     if (table[index]!.key == key) {
//       table[index] = table[index]!.next;
//       return;
//     }

//     HashNode? currentNode = table[index];
//     while (currentNode?.next != null) {
//       if (currentNode!.next!.key == key) {
//         currentNode.next = currentNode.next!.next;
//         return;
//       }
//       currentNode = currentNode.next;
//     }
//   }
// }

// void main() {
//   HashTable hashTable = HashTable(10);

//   hashTable.insert(5, 50);
//   hashTable.insert(15, 150);
//   hashTable.insert(25, 250);

//   print("Searching for key 15: ${hashTable.search(15)}"); // Output: 150
//   print("Searching for key 10: ${hashTable.search(10)}"); // Output: null

//   hashTable.delete(15);
//   print("Searching for key 15 after deletion: ${hashTable.search(15)}"); // Output: null
// }



// class HashNode{
//   final int?key;
//   final int?value;
//   HashNode(this.key,this.value);
// }
// class HashTable{
//   late List<HashNode>table;
//   int capacity;

//   HashTable(int capacity){
//     this.capacity=capacity;
//     table=List.filled(capacity,null);

//     int hash(int key){
//       return key%capacity;
//     }
//     void insert(int key,int value){
//       int index=hash(key);
//       HashNode newNode=HashNode(key, value);

//       if(table[index]==null){
//         table[index]=newNode;
//       }else{
//         HashNode currentNode=table[index];
//         while(currentNode.next!=null){
//           currentNode=currentNode.next;
//         }
//         currentNode.next=newNode; 
//       }
//     }

//     int?search(int key){
//       int?index=hash(key);

//       HashNode?currentNode=table[index];
//       while(currentNode!=null){
//         return currentNode.value;
//       }
//       currentNode=currentNode.next;
//     }
//     return null;
//   }

// void delete(int key){
//   int index=hash(key);
//   if(table[index]==null){
//     return;
//   }
//   if(table[index]key==key){
//     table[index]=table[index].next;
//     return;
//   }
//   HashNode?currentNode=table[index];
//   while(currentNode?.next!=null){
//     if(currentNode.next.key==key){
//       currentNode.next=current
//     }
//   }
// }
// }
// void main(){
//   HashTable hashTable=HashTable(10); 

// }


