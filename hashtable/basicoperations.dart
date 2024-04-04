class HashTable {
  final int size;
  List<List<MapEntry>> _table;

  HashTable(this.size) {
    _table = List.generate(size, (index) => []);
  }

  int _hash(String key) {
    int hash = 0;
    for (int i = 0; i < key.length; i++) {
      hash = (hash + key.codeUnitAt(i)) % size;
    }
    return hash;
  }

  void add(String key, dynamic value) {
    int index = _hash(key);
    _table[index].add(MapEntry(key, value));
  }

  dynamic get(String key) {
    int index = _hash(key);
    for (var entry in _table[index]) {
      if (entry.key == key) {
        return entry.value;
      }
    }
    return null;
  }

  void remove(String key) {
    int index = _hash(key);
    _table[index].removeWhere((entry) => entry.key == key);
  }

  void printTable() {
    for (int i = 0; i < size; i++) {
      print('Index $i:');
      _table[i].forEach((entry) => print('${entry.key}: ${entry.value}'));
    }
  }
}

void main() {
  HashTable hashTable = HashTable(5);

  hashTable.add('apple', 10);
  hashTable.add('banana', 20);
  hashTable.add('orange', 30);

  print('Get value of apple: ${hashTable.get('apple')}');
  print('Get value of banana: ${hashTable.get('banana')}');
  print('Get value of orange: ${hashTable.get('orange')}');

  hashTable.remove('banana');

  print('After removing banana:');
  hashTable.printTable();
}
