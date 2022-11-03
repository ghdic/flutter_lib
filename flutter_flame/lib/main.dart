import 'package:flame/components.dart';
import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:flame/image_composition.dart';


void main() {
  print('load the game widgets');
  runApp(GameWidget(game: MyGame()));
}

class MyGame extends FlameGame {
  SpriteAnimationComponent player = SpriteAnimationComponent();
  SpriteComponent slime = SpriteComponent();
  SpriteComponent background = SpriteComponent();
  final double characterSize = 200.0;

  @override
  Future<void> onLoad() async {
    super.onLoad();
    print('load game assets');
    // load background
    background
      ..sprite = await loadSprite('Background.png');
    add(background);

    // load player
    player
      ..animation = await loadSpriteAnimation('player.png',
      SpriteAnimationData.range(start: 24,end: 26, amount: 27, stepTimes: List.filled(3, 0.15), textureSize: Vector2.all(48), amountPerRow: 6))
      ..size = Vector2(characterSize, characterSize)
      ..y = 300
      ..anchor = Anchor.topLeft;
    add(player);

    slime
      ..sprite = await loadSprite('slime.png')
      ..size = Vector2(300, 300)
      ..y = 500;
    add(slime);
  }

  @override
  void update(double dt) {
    super.update(dt);
    //player.x += 1;
  }
}