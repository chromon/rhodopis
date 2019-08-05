import 'package:rhodopis/model/chapter.dart';

class Book {

  // 图书 id
  String id;
  // 图书名称
  String name;
  // 封面图片地址
  String imgUrl;
  // 第一章标题
  String firstChapter;
  // 最后一章
  Chapter lastChapter;
  // 作者
  String author;
  // 价格
  double price;
  // 图书评分
  double score;
  // 图书类型
  String type;
  // 图书简介
  String introduction;
  // 图书章节数量
  int chapterCount;
  // 图书推荐数
  int recommendCount;
  // 评论数量
  int commentCount;

  int firstArticleId;

  List<String> roles;
  // 图书状态
  String status;
  // 总字数
  double wordCount;
  // 标签
  List<String> tags;
  // 是否限时免费
  bool isLimitedFree;

}