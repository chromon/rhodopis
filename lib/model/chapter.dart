
class Chapter {

  // 章节 id
  int id;
  // 章节 标题
  String title;
  // 章节索引
  int index;

  Chapter.fromJson(Map data) {
    id = data['id'];
    title = data['title'];
    index = data['index'];
  }
}