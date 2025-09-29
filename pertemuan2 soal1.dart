// void main() {
//   var list = [1, 2, 3];
//   assert(list.length == 3);
//   assert(list[1] == 2);
//   print(list.length);
//   print(list[1]);            //3,2,1

//   list[1] = 1;
//   assert(list[1] == 1);
//   print(list[1]);
// }

void main() {
  final list = List<String?>.filled(4, null); 

  list[1] = "Anakin Luthfi Amanza";  
  list[2] = "70701240032";   

  print(list);
}
