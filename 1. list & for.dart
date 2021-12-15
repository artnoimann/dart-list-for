/* Напишите программу, которая выводит на экран числа от 1 до 100. 
При этом вместо чисел, кратных трем, программа должна выводить слово «Super», 
а вместо чисел, кратных пяти — слово «Quiz». Если число кратно и 3, и 5, 
то программа должна выводить слово «Super Quiz» */

void main() {
  //сделали массив с любым количество элементов
  List getmylist = List.filled(100, []);

  //посчитали кол-во элементов
  int countlist = getmylist.length;

  //получили объект класса ListOperation
  var getmylistObj = ListOperation();

  //заюзали метод exList с параметрами getmylist, countlist
  getmylistObj.exList(getmylist, countlist);
}

class ListOperation {
  int i = 0;
  var getmylist;

  exList(getmylist, count) {
    var onetothousand = getmylist;

    //заполним
    for (int i = 0; i < count; i++) {
      if (i % 15 == 0) {
        print('Super Quiz $i');
      } else if (i % 3 == 0) {
        print('Super $i');
      } else if (i % 5 == 0) {
        print('Quiz $i');
      }
      onetothousand[i].add(i);
    }
    print(onetothousand);
  }
}
