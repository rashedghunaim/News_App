import 'package:flutter/material.dart';
import 'package:flutter_conditional_rendering/conditional.dart';
import 'package:news_app/cubit/states.dart';
import 'package:news_app/modules/web_view/web_view_screen.dart';

Widget buildArticleItem(
    {required Map<String, dynamic> article, required BuildContext context}) {
  return InkWell(
    onTap: (){
      Navigator.pushNamed(context, WebViewScreen.routeName , arguments: article['url']);
    },
    child: Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        children: [
          Container(
            width: 120.0,
            height: 120.0,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                    '${article['urlToImage']}',
                  ),
                  fit: BoxFit.cover),
            ),
          ),
          SizedBox(
            width: 20.0,
          ),
          Expanded(
            child: Container(
              height: 120.0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    child: Text(
                      article['title'],
                      style: Theme
                          .of(context)
                          .textTheme
                          .bodyText1,
                      maxLines: 4,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Text(
                    article['publishedAt'],
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ),
  );
}

Widget articleBuilder({required List<dynamic> articles,
  required BuildContext context,
  required NewsStates state}) {
  return Conditional.single(
    context: context,
    conditionBuilder: (context) => articles.length > 0,
    // conditionBuilder: (context) => state is! LoadingBusinessDataState ,
    widgetBuilder: (context) =>
        ListView.separated(
          physics: BouncingScrollPhysics(),
          itemBuilder: (context, index) {
            return buildArticleItem(article: articles[index], context: context);
          },
          separatorBuilder: (context, index) =>
              Divider(height: 10, thickness: 1.5,),
          itemCount: articles.length,
        ),
    fallbackBuilder: (context) => Center(child: CircularProgressIndicator()),
  );
}


Widget defaultFormField({
  required TextEditingController controller,
  required String? Function(String?) validateFunction,
  required String label,
  required IconData prefixIcon,
  void Function()? onTap,
  void Function(String)? onChanged,
  bool isEnabled = true,
  TextInputType inputType = TextInputType.text,
}) {
  return TextFormField(
    controller: controller,
    keyboardType: inputType,
    validator: validateFunction,
    onTap: onTap,
    enabled: isEnabled,
    decoration: InputDecoration(
      labelText: label,
      prefixIcon: Icon(prefixIcon),
      border: OutlineInputBorder(),
    ),
  );
}