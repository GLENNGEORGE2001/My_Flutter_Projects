
class Tasks{
  String name;
  bool isChecked;

  Tasks({required this.name, this.isChecked=false});

  void toggleDone(){
    isChecked = !isChecked;
  }
}