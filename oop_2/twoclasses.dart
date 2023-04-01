class student{
  String? name;
  int ?age;
  int ? gradeLavel;

  void studentInfo(String name,int age,int level){
 this.name = name;
 this.age=age;
 this.gradeLavel=level;

 print('${name},${age},${level}');
  }
}



class teacher{
  String? name;
  int ?age;
  String ? subject;

  void teacherInfo(String name,int age,String subject){
 this.name = name;
 this.age=age;
 this.subject=subject;

 print('${name},${age},${subject}}');
  }

}
 void  main() {
 var stdent = student();
  stdent.studentInfo("ali",22 , 1);

  var teachr = teacher();
  teachr.teacherInfo("james",54 , "english");
}