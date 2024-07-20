

class stack{
  List<int>data=[];
  void push(int value){
    data.add(value);
  }
  void display(){
    print('$data');
  }
void  pop(){
  if(data.isNotEmpty){
    data.removeLast();
  }else{
    print('underflow:Stack is empty');
  }
}
int?peek(){
  return data.isNotEmpty?data.last:null;
}
int? size(){
  return data.length;
}
void deletemiddle(){
int middleindex=data.length~/2;
data.removeAt(middleindex);
}
}
void main(){
  stack Stack=stack();
Stack.push(5);
Stack.push(6);
Stack.push(7);

Stack.display();
print('----');
// Stack.pop();
// Stack.display();
// print('topelement:${Stack.peek()}');
Stack.deletemiddle();
Stack.display();
print('Stack size:${Stack.size()}');
}