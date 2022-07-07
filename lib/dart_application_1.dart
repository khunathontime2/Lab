import 'dart:io'; // น้ำเข้าฟังชั่นในการรับค่าจากคีย์บอร์ด
String type = ''; // กำหนดตัว type ให้เลือกประเภทอาหาร
String listName = ''; //กำหนดตัว listName ให้เลือกรายการอาหาร

List drinkList = ['น้ำเย็น', 'ชาเย็น','กาแฟอเมริกาโน่', 'กาแฟลาเต้', 'น้ำอัดลม'];// กำหนดรายการสำหรับเมนูประเภทเครื่องดื่ม
List snackList = ['เลย์', 'เทสโต้','คารามูโจ้', 'คอนเน่', 'ซันไบทส์'];// กำหนดรายการสำหรับเมนูประเภทขนม
List foodkList = ['ข้าวผัดหมู', 'ข้าวผัดกระเพรา','สปาเก็ตตี้', 'ข้าวคลุกกะปิ', 'ข้าวราดแกงกะหรี่'];// กำหนดรายการสำหรับเมนูประเภทอาหาร

List drinkPirce = [7, 10, 35, 40, 10]; // กำหนดราคาสำหรับรายการเครื่องดื่ม
List snackPirce = [35, 35, 45, 30, 30]; // กำหนดราคาสำหรับรายการขนม
List foodPirce = [40, 40, 80, 45, 50]; // กำหนดราคาสำหรับรายการอาหาร

int numberList = 1; // กำหนดตัวแปร numberList ไว้ใช้สำหรับ เลขของรายการอาหาร
int i = 0; // กำหนดตัวแปร i ไว้ใช้สำหรับนับรอบ
int customerMoney = 0; // กำหนดตัวแปร customerMoney เป็นค่าเริ่มต้นจากเงินของลูกค้า

int typeFood(){ // Start Function typeFood
  numberList = 1; //เวลาเข้าทำงานในฟังชั่นจะกำหนดค่าตัวแปรให้ใหม่เป็น 1 เสมอ
  i = 0; //เวลาเข้าทำงานในฟังชั่นจะกำหนดค่าตัวแปรให้ใหม่เป็น 0 เสมอ
    while( type != "q") { // 
    print('เลือกประเภทอาหาร');
    print('กดเลข : [1] เครื่องดื่ม, [2] ขนม, [3] อาหาร, [q] จบการทำงานโปรแกรม');
    String type = (stdin.readLineSync()!); //Scanf 
    if(type == 'q'){
      print('!!============== ขอบคุณที่ใช้งานโปรแกรม ==============!!');
      break; // ถ้าไม่เท่ากับ 'q' ให้ทำงานต่อ
    }
      switch(type){
      case '1' : // เลือกหมวดหมู่เครื่องดื่ม
        drink(); // เลือกรายการเครื่องดื่ม
        break ;
      case '2' : // เลือกหมวดหมู่ขนม
        sncak();
        break;
      case '3' : // เลือกหมวดหมู่อาหาร
        food();
        break;
    }
  }
  return 0;
} // End Function typeFood
// Function สร้างเมนูเครื่องดื่ม
void drink(){ // Start Function drink
    print('===== รายการเครื่องดื่ม =====');
      for(i = 0; i<= 4; i++){ //วนรอบแสดงเมนูใน Array
        print('[$numberList] ' + drinkList[i] + '\t\tราคา : ' + drinkPirce[i].toString() +'  บาท');
        numberList++;
      }
      i = 0;
      numberList = 1;
      print('ใส่หมายเลขเมนูที่คุณต้องการซื้อ.. : ');
      int listName = int.parse(stdin.readLineSync()!); //รับค่าจากคีย์บอดในการเลือกรายการเครื่องดื่ม
      if(listName >= 6){
        print('\n ขออภัยคุณทำรายการไม่ถูกต้อง กรุณาทำรายการใหม่\n');
      } 
      accept(drinkList[listName-1], drinkPirce[listName-1]); //ใช้งานฟังชั่น Accept(ชื่อเมนู[ตำแหน่ง], ราคาเมนู[ตำแหน่ง])
} // End Function drink

// Function สร้างเมนูขนม
void sncak(){  // Start Function sncak
    print('===== รายการขนม =====');
      for(i = 0; i<= 4; i++){ //วนรอบแสดงเมนูใน Array
        print('[$numberList] ' + snackList[i] + '\t\tราคา : ' + snackPirce[i].toString() +'  บาท');
        numberList++;
      }
      i = 0;
      numberList = 1;
      print('ใส่หมายเลขเมนูที่คุณต้องการซื้อ.. : ');
      int listName = int.parse(stdin.readLineSync()!); //รับค่าจากคีย์บอดในการเลือกรายการขนม
      if(listName >= 6){
        print('\n ขออภัยคุณทำรายการไม่ถูกต้อง กรุณาทำรายการใหม่\n');
      } 
      accept(snackList[listName-1], snackPirce[listName-1]); //ใช้งานฟังชั่น Accept(ชื่อเมนู[ตำแหน่ง], ราคาเมนู[ตำแหน่ง])
} // End Function sncak

// Function สร้างเมนูขนม
void food(){ // Start Function food
    print('===== รายการอาหาร =====');
      for(i = 0; i<= 4; i++){ //วนรอบแสดงเมนูใน Array
        print('[$numberList] ' + foodkList[i] + '\t\tราคา : ' + foodPirce[i].toString() +'  บาท');
        numberList++;
      }
      i = 0;
      numberList = 1;
      int listName = int.parse(stdin.readLineSync()!); //รับค่าจากคีย์บอดในการเลือกรายการอาหาร
      if(listName >= 6){
        print('\n ขออภัยคุณทำรายการไม่ถูกต้อง กรุณาทำรายการใหม่\n');
      } 
      accept(foodkList[listName-1], foodPirce[listName-1]); //ใช้งานฟังชั่น Accept(ชื่อเมนู[ตำแหน่ง], ราคาเมนู[ตำแหน่ง])
} // End Function food

String accept(String nameOfList, int priceList){ // Start Function accept
  print('เมนูที่ต้องการซื้อคือ\t'+ nameOfList + '\tราคา ' + priceList.toString());
  print('ยืนยันกด Y เลือกเมนูใหม่ กด Q');
  listName = stdin.readLineSync()!;
  while(listName != 'Y'){
    typeFood();
  }
  if (listName == 'Y') {
    payment(nameOfList, priceList);
  } else if (listName == 'Q') {
    typeFood();
  }
  return listName;
} // End Function accept

String payment(String name, int price){
  print('กรุณาใส่ยอดเงินเพื่อชำระสินค้า $name');
  customerMoney = int.parse(stdin.readLineSync()!);
  int change = customerMoney - price;
  if(customerMoney < price){
    print('\n จำนวนเงินไม่เพียงพอสำหรับการชำระ กรุณาทำรายการใหม่\n');
  } else {
    print('รับเงินมา :\t\t' + customerMoney.toString() + '\tบาท');
    print('ราคาสินค้า :\t\t' + price.toString() +'\tบาท');
    print('เงินถอน :\t\t' + change.toString() + '\tบาท');
    customerMoney = 0;
  }
  return change.toString();
}
