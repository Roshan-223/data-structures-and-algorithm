// class HashEntry<K, V> {
//   final K key;
//   V value;
//   HashEntry(this.key, this.value);
// }

// class HashTable<K, V> {
//   List<List<HashEntry<K, V>>> _buckets;
//   int _size = 0;

//   HashTable(int capacity)
//       : _buckets = List<List<HashEntry<K, V>>>.filled(capacity, List<HashEntry<K, V>>());

//   int _hash(K key) {
//     int hashCode = key.hashCode;
//     return hashCode >= 0 ? hashCode % _buckets.length : (-hashCode) % _buckets.length;
//   }

//   void insert(K key, V value) {
//     int index = _hash(key);
//     for (var entry in _buckets[index]) {
//       if (entry.key == key) {
//         entry.value = value; // If the key already exists, update the value.
//         return;
//       }
//     }

//     _buckets[index].add(HashEntry(key, value));
//     _size++;
//   }

//   V? get(K key) {
//     int index = _hash(key);
//     for (var entry in _buckets[index]) {
//       if (entry.key == key) {
//         return entry.value;
//       }
//     }
//     return null;
//   }

//   void remove(K key) {
//     int index = _hash(key);
//     _buckets[index].removeWhere((entry) => entry.key == key);
//     _size--;
//   }

//   int get size => _size;
// }

// void main() {
//   HashTable<String, int> hashTable = HashTable(10);

//   hashTable.insert("apple", 5);
//   hashTable.insert("banana", 3);
//   hashTable.insert("orange", 8);

//   print("Size: ${hashTable.size}");
//   print("Value for 'apple': ${hashTable.get("apple")}");
//   print("Value for 'banana': ${hashTable.get("banana")}");
//   print("Value for 'orange': ${hashTable.get("orange")}");

//   hashTable.remove("banana");

//   print("Size after removal: ${hashTable.size}");
//   print("Value for 'banana' after removal: ${hashTable.get("banana")}");
// }




class HashTable {
  static const int TABLE_SIZE = 10;

  List<List<dynamic>> table;

  HashTable() {
    table = List<List<dynamic>>.filled(TABLE_SIZE, []);
  }

  int hashFunction(int key) {
    return key % TABLE_SIZE;                                            
  }

  void insert(int key, dynamic value) {
    int hash = hashFunction(key);
    List<dynamic> bucket = table[hash];
    bool found = false;

    for (int i = 0; i < bucket.length; i++) {
      if (bucket[i][0] == key) {
        bucket[i][1] = value; // Update existing key-value pair
        found = true;
        break;
      }
    }

    if (!found) {
      bucket.add([key, value]); // Append new key-value pair
    }
  }

  dynamic search(int key) {
    int hash = hashFunction(key);
    List<dynamic> bucket = table[hash];

    for (int i = 0; i < bucket.length; i++) {
      if (bucket[i][0] == key) {
        return bucket[i][1]; // Return the value associated with the key
      }
    }

    return null; // Key not found
  }

  void delete(int key) {
    int hash = hashFunction(key);
    List<dynamic> bucket = table[hash];

    for (int i = 0; i < bucket.length; i++) {
      if (bucket[i][0] == key) {
        bucket.removeAt(i); // Remove the key-value pair
        return;
      }
    }
  }
}

void main() {
  HashTable hashTable = HashTable();

  // Inserting elements
  hashTable.insert(5, "Value 1");
  hashTable.insert(15, "Value 2");
  hashTable.insert(25, "Value 3");

  // Searching elements
  print(hashTable.search(15)); // Output: Value 2
  print(hashTable.search(25)); // Output: Value 3
  print(hashTable.search(35)); // Output: null

  // Deleting elements
  hashTable.delete(15);
  print(hashTable.search(15)); // Output: null
}