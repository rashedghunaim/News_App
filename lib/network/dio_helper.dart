import 'package:dio/dio.dart';

class DioHelper {
  static Dio dio = Dio();

  static init() {
    dio = Dio(
      BaseOptions(
        baseUrl: 'https://newsapi.org/',
        receiveDataWhenStatusError: true,
      ),
    );
  }

  static Future<Response<Map<String, dynamic>>> getData(
      {required String url, required Map<String, dynamic> query}) async {
    return await dio.get(
      url,
      queryParameters: query,
    );
  }
}

Map businessNewsData = {
  "status": "ok",
  "totalResults": 16,
  "articles": [
    {
      "source": {"id": null, "name": "Elmostaqbal.com"},
      "author": null,
      "title": "اعرف سعر الدولار اليوم أمام الجنيه في 8 بنوك مصرية - المستقبل",
      "description":
          "استقرار سعر الدولار اليوم الخميس 1 يوليو 2021، أمام الجنيه المصري، وذلك لعدم وجود تعاملات بمناسبة ثورة 30 يونيو، ووفقا لآخر تحديثات عدد من البنوك",
      "url":
          "https://www.elmostaqbal.com/527479/2021/07/01/اعرف-سعر-الدولار-اليوم-أمام-الجنيه-في-8-2/",
      "urlToImage":
          "https://cdn.elmostaqbal.com/elmostaqbal/uploads/2021/04/www.elmostaqbal.com_2021-04-14_09-49-00_490229.jpg",
      "publishedAt": "2021-07-01T09:10:17Z",
      "content":
          "1 2021 30 :\r\n 15.68 15.78 .\r\n 15.62 15.72 .\r\n 15.63 15.73 .\r\n 15.62 15.72 .\r\n 15.62 15.72 .\r\n   15.6 15.7 .\r\n 15.61 15.71 .\r\n 15.62 15.72 ."
    },
    {
      "source": {"id": null, "name": "Alarabiya.net"},
      "author": "العربية",
      "title":
          "بنك \"ستاندرد تشارترد\" يبدأ تقديم خدماته المصرفية في السعودية - العربية",
      "description":
          "قال بنك ستاندرد تشارترد، اليوم الخميس، إنه بدأ تقديم خدمات مصرفية عبر فرعه في السعودية بفريق يتألف من 25 فردا، في الوقت الذي يسعى فيه لتعزيز وجوده في أكبر",
      "url":
          "https://www.alarabiya.net/aswaq/economy/2021/07/01/%D8%A8%D9%86%D9%83-%D8%B3%D8%AA%D8%A7%D9%86%D8%AF%D8%B1%D8%AF-%D8%AA%D8%B4%D8%A7%D8%B1%D8%AA%D8%B1%D8%AF-%D9%8A%D8%A8%D8%AF%D8%A3-%D8%AA%D9%82%D8%AF%D9%8A%D9%85-%D8%AE%D8%AF%D9%85%D8%A7%D8%AA%D9%87-%D8%A7%D9%84%D9%85%D8%B5%D8%B1%D9%81%D9%8A%D8%A9-%D9%81%D9%8A-%D8%A7%D9%84%D8%B3%D8%B9%D9%88%D8%AF%D9%8A%D8%A9",
      "urlToImage":
          "https://vid.alarabiya.net/images/2021/07/01/f4b048da-46cc-4e53-8dfa-d5c753b8355f/f4b048da-46cc-4e53-8dfa-d5c753b8355f_16x9_600x338.JPG",
      "publishedAt": "2021-07-01T05:33:00Z",
      "content": null
    },
    {
      "source": {"id": null, "name": "Misr365.com"},
      "author": "متابعات 365",
      "title":
          "بلغ 5 قروش.. ارتفاع مفاجئ لسعر الدولار في ختام تعاملات اليوم - مصر 365",
      "description":
          "ارتفع سعر الدولار اليوم الأربعاء 30 يونيو 2021 بقيمة وصلت 5 قروش، في ختام التعاملات، في مصر بالبنوك والسوق السوداء، ارتفع سعر الدولار اليوم في مصرف أبوظبي الإسلامي بقيمة 5 قروش وصولا 15,65 جنيه للشراء",
      "url":
          "https://misr365.com/economy-news/367292/%d8%b3%d8%b9%d8%b1-%d8%a7%d9%84%d8%af%d9%88%d9%84%d8%a7%d8%b1-%d8%a7%d9%84%d9%8a%d9%88%d9%85-30-6-2021-%d8%a3%d8%b3%d8%b9%d8%a7%d8%b1-%d8%a7%d9%84%d8%af%d9%88%d9%84%d8%a7%d8%b1-%d8%a7%d9%84%d9%8a",
      "urlToImage":
          "https://misr365.b-cdn.net/wp-content/uploads/2021/05/سعر-الدولار-اليوم..-8.jpg",
      "publishedAt": "2021-06-30T22:11:53Z",
      "content":
          "30 2021 5 5 15,65 15,72 .\r\n 15,66 15,73 .\r\n 15,61 15,71 .\r\n 15.64 15.73 .\r\n NBK 15.63 15.73 .\r\n “ 365” .\r\n 30 2021:"
    },
    {
      "source": {"id": null, "name": "Masrawy.com"},
      "author": "مصراوي",
      "title":
          "بعد قفزة كبيرة.. تعرف على أسعار شاشات التليفزيون بأنواعها وأحجامها - مصراوي",
      "description":
          "بعد قفزة كبيرة تعرف على أسعار شاشات التليفزيون بأنواعها وأحجامها | مصراوى",
      "url":
          "https://www.masrawy.com/news/news_economy/details/2021/6/30/2048917/بعد-قفزة-كبيرة-تعرف-على-أسعار-شاشات-التليفزيون-بأنواعها-وأحجامها",
      "urlToImage":
          "https://media.gemini.media/img/large/2021/6/30/2021_6_30_20_36_6_324.jpg",
      "publishedAt": "2021-06-30T18:36:00Z",
      "content":
          "- :\r\n 80% \"\".\r\n \"\" .\r\n :\r\n 32 led 3199 .\r\n 43 led 5149 .\r\n 32 3299 .\r\n 40 4999 .\r\n 43 5349 .\r\n 49 5999 .\r\n 32 3849 .\r\n 43 6149 .\r\n 49 6999 .\r\n 4k 43 7049 .\r\n 4k 50 8299 .\r\n 4k 55 8999 .\r\n 4k 65 12999… [+462 chars]"
    },
    {
      "source": {"id": null, "name": "Thaqfny.com"},
      "author": null,
      "title":
          "عروض لولو جوالات ايفون وسامسونج وهواوي وتخفيضات لولو ماركت lulu - ثقفني",
      "description":
          "تتعدد عروض لولو ماركت على الجوالات تحت شعار \"هيا لنتواصل\"، بحيث تشمل الجوالات من مختلف الماركات العالمية مثل ابل وسامسونج بالإضافة إلى",
      "url": "https://www.thaqfny.com/1266143/عروض-لولو-جوالات-ايفون-وسامسونج/",
      "urlToImage":
          "https://www.thaqfny.com/wp-content/uploads/2021/06/عروض-لولو-2.jpg",
      "publishedAt": "2021-06-30T17:30:40Z",
      "content": null
    },
    {
      "source": {"id": null, "name": "Alarabiya.net"},
      "author": "العربية",
      "title": "مكونات لا تفسد في مطبخك.. لكن إياك والرطوبة! - العربية",
      "description":
          "أغلب المنتجات في متجر البقالة تكون عادة مصحوبة بملصق صغير يخبرك بمدة صلاحيتها وما إذا كان عليك أن تستخدمها قبل تاريخ معين أم لا، وهذا أمر بديهي وعادي.إلا أ",
      "url":
          "https://www.alarabiya.net/medicine-and-health/2021/06/30/%D9%85%D9%83%D9%88%D9%86%D8%A7%D8%AA-%D9%84%D8%A7-%D8%AA%D9%81%D8%B3%D8%AF-%D9%81%D9%8A-%D9%85%D8%B7%D8%A8%D8%AE%D9%83-%D9%84%D9%83%D9%86-%D8%A7%D9%8A%D8%A7%D9%83-%D9%88%D8%A7%D9%84%D8%B1%D8%B7%D9%88%D8%A8%D8%A9-",
      "urlToImage":
          "https://vid.alarabiya.net/images/2021/05/22/5383236f-1fcc-406c-ae8a-299e68b239b6/5383236f-1fcc-406c-ae8a-299e68b239b6_16x9_600x338.jpg",
      "publishedAt": "2021-06-30T14:29:00Z",
      "content": null
    },
    {
      "source": {"id": null, "name": "Elmostaqbal.com"},
      "author": null,
      "title":
          "1000 جنيه وصورة بطاقة| هتفتح حساب توفير وتحصل على عائد سنوي من QNB - المستقبل",
      "description":
          "أعلنت بنك QNB الأهلي، أنه يمكن لأي شخص طبيعي فتح حساب توفير يكون بالنسبة له كمكان يدخر فيه امواله ويحصل منه على عائد في الوقت نفسه، وبذلك يكون حوش وكسب.",
      "url":
          "https://www.elmostaqbal.com/527337/2021/06/30/1000-جنيه-وصورة-بطاقة-هتفتح-حساب-توفير-وتح/",
      "urlToImage":
          "https://cdn.elmostaqbal.com/elmostaqbal/uploads/2021/06/www.elmostaqbal.com_2021-06-28_12-14-08_866361.png",
      "publishedAt": "2021-06-30T13:42:57Z",
      "content":
          "QNB .\r\n 1000 5 :\r\n– 1000 5000 2%.\r\n– 5000 50 2.25% .\r\n– 50 100 3%.\r\n– 100 500   4%.\r\n– 500 5%.\r\n– 5   6.5%.\r\n–   7.25% 5 .\r\n– .\r\n– .\r\n– 24 7x QNB .\r\n– .\r\n– : 38.80 50 .\r\n :\r\n– .\r\n– .\r\n– ."
    },
    {
      "source": {"id": null, "name": "Youm7.com"},
      "author": null,
      "title":
          "وزير المالية لـ\"اليوم السابع\": مصر تسلمت 1.7 مليار دولار من صندوق النقد - اليوم السابع",
      "description":
          "قال الدكتور محمد معيط، وزير المالية، فى تصريحات خاصة لـ\"اليوم السابع\"، إن مصر حصلت على آخر شريحة من قرض صندوق النقد الدولى، بقيمة 1.7 مليار دولار، وبذلك تكون القاهرة حصلت على 5.4 مليار دولار كامل قيمة القرض.",
      "url":
          "https://www.youm7.com/story/2021/6/30/وزير-المالية-لـ-اليوم-السابع-مصر-تسلمت-1-7-مليار/5373845",
      "urlToImage": "https://img.youm7.com/large/202103060838483848.jpg",
      "publishedAt": "2021-06-30T13:15:00Z",
      "content": null
    },
    {
      "source": {"id": null, "name": "Masrawy.com"},
      "author": "مصراوي",
      "title":
          "مبيعات شهادة معاش بكرة تتجاوز ملياري جنيه في البنك الأهلي المصري - Masrawy-مصراوي",
      "description":
          "مبيعات شهادة معاش بكرة تتجاوز ملياري جنيه في البنك الأهلي المصري | مصراوى",
      "url":
          "https://www.masrawy.com/news/news-banking/details/2021/6/30/2048732/مبيعات-شهادة-معاش-بكرة-تتجاوز-ملياري-جنيه-في-البنك-الأهلي-المصري",
      "urlToImage":
          "https://media.gemini.media/img/large/2020/11/5/2020_11_5_14_56_30_94.jpg",
      "publishedAt": "2021-06-30T12:43:00Z",
      "content":
          "- :\r\n 2 .\r\n 150 250 .\r\n .\r\n \" \" 14 40 100 150 .\r\n .\r\n<ul><li></li></ul>\r\n<li></li>"
    },
    {
      "source": {"id": null, "name": "Investing.com"},
      "author": "Investing.com",
      "title":
          "عاجل: الذهب يتأثر عقب بيانات أمريكية إيجابية بواسطة Investing.com - السعودية Investing.com",
      "description": "عاجل: الذهب يتأثر عقب بيانات أمريكية إيجابية",
      "url": "https://sa.investing.com/news/commodities-news/article-2163404",
      "urlToImage":
          "https://i-invdn-com.investing.com/news/LYNXNPEAAC0UH_L.jpg",
      "publishedAt": "2021-06-30T12:28:00Z",
      "content":
          ":Fusion Media would like to remind you that the data contained in this website is not necessarily real-time nor accurate. All CFDs (stocks, indexes, futures) and Forex prices are not provided by exch… [+689 chars]"
    },
    {
      "source": {"id": "rt", "name": "RT"},
      "author": "RT Arabic",
      "title":
          "شركة روبوتات أمريكية تصدر فيديو رقص \"مثيرا\" لـ\"كلاب آلية\" يشعل الإنترنت! - RT Arabic",
      "description":
          "أصدرت شركة الروبوتات الأمريكية Boston Dynamics مقطع فيديو جديدا لرقص الروبوت بعد إعلان أن \"هيونداي\" استحوذت عليها.",
      "url":
          "https://arabic.rt.com/funny/1246913-%D8%B4%D8%B1%D9%83%D8%A9-%D8%B1%D9%88%D8%A8%D9%88%D8%AA%D8%A7%D8%AA-%D8%A3%D9%85%D8%B1%D9%8A%D9%83%D9%8A%D8%A9-%D8%AA%D8%B5%D8%AF%D8%B1-%D9%81%D9%8A%D8%AF%D9%8A%D9%88-%D8%B1%D9%82%D8%B5-%D9%85%D8%AB%D9%8A%D8%B1%D8%A7-%D9%84%D9%80%D9%83%D9%84%D8%A7%D8%A8-%D8%A2%D9%84%D9%8A%D8%A9-%D9%8A%D8%B4%D8%B9%D9%84-%D8%A7%D9%84%D8%A5%D9%86%D8%AA%D8%B1%D9%86%D8%AA/",
      "urlToImage":
          "https://cdni.rt.com/media/pics/2021.06/original/60dc28aa4236045b1025b788.jpg",
      "publishedAt": "2021-06-30T09:30:00Z",
      "content": null
    },
    {
      "source": {"id": null, "name": "Fxnewstoday.ae"},
      "author": null,
      "title": "تحديث منتصف اليوم للذهب 30-06-2021 - FxNewsToday",
      "description": "تحديث منتصف اليوم للذهب 30-06-2021",
      "url":
          "https://www.fxnewstoday.ae/commodities/gold-analysis/%D8%AA%D8%AD%D8%AF%D9%8A%D8%AB-%D9%85%D9%86%D8%AA%D8%B5%D9%81-%D8%A7%D9%84%D9%8A%D9%88%D9%85-%D9%84%D9%84%D8%B0%D9%87%D8%A8-30-06-2021-195628",
      "urlToImage": "https://dixdeynibyck7.cloudfront.net/images/econ_ae.jpg",
      "publishedAt": "2021-06-30T09:18:56Z",
      "content": "1770.00 50 1734.10 1800.00 .\r\n 1740.00 1775.00\r\n :"
    },
    {
      "source": {"id": null, "name": "Youm7.com"},
      "author": null,
      "title":
          "تراجع أسعار الذهب اليوم 3 جنيهات.. وعيار 21 يسجل 772 جنيها دون مصنعية - اليوم السابع",
      "description":
          "تراجعت أسعار الذهب اليوم الأربعاء في مصر بقيمة 3 جنيهات ليسجل الذهب عيار 21 وهو الأكثر مبيعا في مصر 772 جنيها للجرام دون مصنعية، في حين تسجل أونصة الذهب تذبذبا واضحا وحركة مستمرة في البورصة العالمية.",
      "url":
          "https://www.youm7.com/story/2021/6/30/تراجع-أسعار-الذهب-اليوم-3-جنيهات-وعيار-21-يسجل-772/5373343",
      "urlToImage": "https://img.youm7.com/large/42016211641563131.jpg",
      "publishedAt": "2021-06-30T08:45:00Z",
      "content": null
    },
    {
      "source": {"id": null, "name": "Elmostaqbal.com"},
      "author": null,
      "title": "اعرف سعر الدولار قدام الجنيه النهاردة في 10 بنوك - المستقبل",
      "description":
          "استقر متوسط سعر الدولار اليوم الأربعاء 30 يونيو 2021، بمستهل التعاملات أمام الجنيه المصري، بالبنوك والصرافة ووفقا لآخر تحديثات عدد من البنوك المختلفة،",
      "url":
          "https://www.elmostaqbal.com/527244/2021/06/30/اعرف-سعر-الدولار-قدام-الجنيه-النهاردة-3/",
      "urlToImage":
          "https://cdn.elmostaqbal.com/elmostaqbal/uploads/2021/04/www.elmostaqbal.com_2021-04-14_09-49-00_490229.jpg",
      "publishedAt": "2021-06-30T08:15:16Z",
      "content":
          "30 2021 :\r\n 15.61 15.72 .\r\n 15.62 15.72 .\r\n 15.63 15.73 .\r\n 15.62 15.72 .\r\n 15.62 15.72 .\r\n   15.6 15.7 .\r\n 15.6 15.7 .\r\n 15.68 15.78 .\r\n 15.62 15.72 .\r\n 15.62 15.72 ."
    },
    {
      "source": {"id": null, "name": "Almasryalyoum.com"},
      "author":
          "<a href='https://www.almasryalyoum.com/editor/details/1368'>غادة عبد الحافظ</a>, <a href='https://www.almasryalyoum.com/editor/details/23'>أميرة صالح</a>",
      "title":
          "الأدنى منذ 11 أسبوعًا بسبب هبوط مفاجئ.. سعر الذهب في مصر وعالميًا مساء 29 يونيو 2021 - Al Masry Al Youm - المصري اليوم",
      "description":
          "شهد سعر الذهب، مساء اليوم الثلاثاء 29 يونيو 2021، هبوطا مفاجئا ليحقق أدنى مستوى له منذ 11 اسبوعا، متأثرا بصعود الدولار بسبب المخاوف من اتجاه الاحتياطى الاتحادى إلى تشديد السياسة النقدية ورفع الفائدة قبل...",
      "url": "https://www.almasryalyoum.com/news/details/2365339",
      "urlToImage":
          "https://mediaaws.almasryalyoum.com/news/verylarge/2021/02/16/1462771_0.jpg",
      "publishedAt": "2021-06-29T19:29:44Z",
      "content":
          "29 2021 11 .\r\n .\r\n .\r\n 24 884 21 774 18 664.5 6190 .\r\n 30 .\r\n 1.4% 0.3% .\r\n 21 776.79 782.89 «»1,761.79  1773.74 \r\n«» 29 2021 .\r\n<table><tr><th></th><th></th></tr>\r\n<tr><th> 24</th><td>883 886</td… [+1232 chars]"
    },
    {
      "source": {"id": null, "name": "صحيفة البيان"},
      "author": "أبوظبي – صبري صقر",
      "title":
          "9 فلوس زيادة بسعر ليتر البنزين و12 في الديزل خلال يوليو - الاقتصادي",
      "description":
          "أقرت لجنة متابعة أسعار الوقود، رفع أسعار البنزين خلال شهر يوليو 2021 بزيادة طفيفة في البنزين تراوحت بين8 و9 فلوس ، بينما ارتفعت أسعار الديزل بمقدار 12فلساً لكل ليتر عن الشهر الماضي .وأعلنت شركات توزيع الوقود الأسعار الجديدة على أن يبدأ التطبيق اعتباراً من",
      "url": "https://www.albayan.ae/economy/uae/2021-06-29-1.4197360",
      "urlToImage":
          "https://www.albayan.ae/polopoly_fs/1.4197361.1624970134!/image/image.jpg",
      "publishedAt": "2021-06-29T12:35:00Z",
      "content":
          "2021 8 9 12 .\r\n 2021 5%.\r\n «98» 9 2.38 2.47 «95» 2.27 2.35 \" \" «91» 9 2.19 2.28 .\r\n 12 2.30 2.42 .\r\n 2021 16 17 7 2021.\r\n 11 .\r\n .\r\n 2015."
    }
  ]
};
