import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SlideInfo {
  final String title;
  final String caption;
  final String imageUrl;

  SlideInfo(this.title, this.caption, this.imageUrl);
}

final slides = <SlideInfo>[
  SlideInfo('Pesquisar a comida', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus sagittis malesuada elementum.', 'assets/images/1.png'),
  SlideInfo('Entrega rapida', 'Nulla erat justo, pulvinar posuere rutrum id, dignissim ac dui.', 'assets/images/2.png'),
  SlideInfo('Desfrutar a comida', 'Praesent finibus ante quis erat eleifend, non varius libero sodales.', 'assets/images/3.png'),
];

class AppTutorialScreen extends StatefulWidget {
  const AppTutorialScreen({super.key});

  @override
  State<AppTutorialScreen> createState() => _AppTutorialScreenState();
}

class _AppTutorialScreenState extends State<AppTutorialScreen> {

  final PageController pageviewController = PageController();
  bool endReached = false;

  @override
  void initState() {
    super.initState();

    pageviewController.addListener(() {

      final page = pageviewController.page ?? 0;
      if (!endReached && page >= (slides.length - 1.5)) {
        setState(() {
          endReached = true;
        });
      }
    },);
  }

  @override
  void dispose() {
    pageviewController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          PageView(
            controller: pageviewController,
            physics: BouncingScrollPhysics(),
            children: slides.map(
              (slideData) => _Slide(
                title: slideData.title, 
                caption: slideData.caption, 
                imageUrl: slideData.imageUrl
              )
            ).toList()
          ),

          Positioned(
            right: 20,
            top: 50,
            child: TextButton(
              child: Text('Sair'),
              onPressed: () => context.pop(),
            )
          ),

          endReached ? 
            Positioned(
              bottom: 30,
              right: 30,
              child: FadeInRight(
                from: 15,
                delay: Duration(seconds: 1),
                child: FilledButton(
                  onPressed: () => context.pop(), 
                  child: Text('Começar')
                ),
              )
            )
          : SizedBox(),

        ],
      ),
    );
  }
}

class _Slide extends StatelessWidget {

  final String title;
  final String caption;
  final String imageUrl;

  const _Slide({
    required this.title, 
    required this.caption, 
    required this.imageUrl
  });

  @override
  Widget build(BuildContext context) {

    final titleStyle = Theme.of(context).textTheme.titleLarge;
    final captionStyle = Theme.of(context).textTheme.bodySmall;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image(image: AssetImage(imageUrl)),
            SizedBox(height: 20,),
            Text(title, style: titleStyle,),
            SizedBox(height: 10,),
            Text(caption, style: captionStyle,)
          ],
        ),
      ),
    );
  }
}