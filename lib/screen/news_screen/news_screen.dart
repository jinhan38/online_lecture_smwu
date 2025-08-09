import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:online_lecture_smwu/screen/news_screen/news_model.dart';

class NewsScreen extends StatefulWidget {
  const NewsScreen({super.key});

  @override
  State<NewsScreen> createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {
  final ScrollController scrollController = ScrollController();
  bool loading = true;
  List<NewsModel> newsList = [];
  int totalResults = 0;
  int page = 1;

  @override
  void initState() {
    super.initState();
    getData();
    scrollController.addListener(() {
      if (scrollController.position.atEdge) {
        bool isBottom = scrollController.position.pixels == scrollController.position.maxScrollExtent;
        if (isBottom && totalResults > newsList.length && !loading) {
          page++;
          getData();
        }
      }
    });
  }

  Future<void> getData() async {
    if (!loading) {
      loading = true;
      setState(() {});
    }
    var uri = Uri(
      scheme: "https",
      host: "newsapi.org",
      path: "/v2/everything",
      queryParameters: {
        "q": "삼성",
        "from": "2025-07-09",
        "sortBy": "publishedAt",
        "apiKey": "f4e382a85f8e45a5878357459c397275",
        "pageSize": 20.toString(),
        "page": page.toString(),
      },
    );
    var response = await Dio().get(uri.toString());
    var getNewsList = (response.data["articles"] as Iterable).map((e) => NewsModel.fromJson(e)).toList();
    newsList.addAll(getNewsList);
    totalResults = response.data["totalResults"] as int;
    loading = false;
    setState(() {});
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("News"),
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ListView.separated(
          controller: scrollController,
          padding: const EdgeInsets.only(left: 16, right: 16, bottom: 100),
          itemBuilder: (context, index) {
            if (index == newsList.length - 1 && loading) {
              return Column(
                children: [
                  item(newsList[index]),
                  loadingWidget(),
                ],
              );
            }
            return item(newsList[index]);
          },
          separatorBuilder: (context, index) => const SizedBox(height: 12),
          itemCount: newsList.length,
        ),
      ),
    );
  }

  Widget item(NewsModel model) {
    return SizedBox(
      height: 130,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            model.urlToImage,
            width: 110,
            height: 110,
            fit: BoxFit.cover,
            errorBuilder: (context, error, stackTrace) {
              return Container(
                  color: Colors.grey.withValues(alpha: 0.1),
                  width: 110,
                  height: 110,
                  child: Icon(
                    Icons.photo,
                    color: Colors.grey.shade500,
                  ));
            },
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(model.title,
                    maxLines: 1, overflow: TextOverflow.ellipsis, style: const TextStyle(fontWeight: FontWeight.bold)),
                Text(model.description, maxLines: 2, overflow: TextOverflow.ellipsis),
                const SizedBox(height: 10),
                Text(
                  model.author,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(fontSize: 11, color: Colors.grey),
                ),
                Text(
                  parseDateTime(model.publishedAt),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(fontSize: 11, color: Colors.grey),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  /// yyyy.MM.dd HH:mm 형태로 파싱
  String parseDateTime(DateTime date) {
    return DateFormat('yyyy.MM.dd HH:mm').format(date);
  }

  Widget loadingWidget() {
    return Center(
      child: Container(
        margin: const EdgeInsets.only(bottom: 16, top: 16),
        width: 30,
        height: 30,
        child: const CircularProgressIndicator(
          strokeWidth: 4,
          color: Colors.orange,
        ),
      ),
    );
  }

  double getIndicatorSize(BuildContext context) {
    final padding = MediaQuery.of(context).padding;
    final bottomPadding = padding.bottom;
    return bottomPadding;
  }
}
