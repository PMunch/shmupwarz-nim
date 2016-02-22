##
## ViewManagerSystem
##
proc newViewManagerSystem*(game : Game) : ViewManagerSystem =
  new(result)
  result.game = game

method initialize*(this : ViewManagerSystem) =
  this.world.getGroup(Match.Resource).onAddEntity
  .addHandler(proc(e : EventArgs) =
  
    var ordinal : int
    var entity = EntityArgs(e).entity
    var res = ResourceComponent(EntityArgs(e).component)
    res.sprite = SpriteFromFile(this.game.renderer, res.path)

    if entity.hasScale:
      res.sprite.scale.x = entity.scale.x
      res.sprite.scale.y = entity.scale.y

    if entity.hasLayer:
      ordinal = entity.layer.ordinal
      res.sprite.layer = ordinal

    if res.bgd:
      res.sprite.centered = false

    if this.game.sprites.len == 0:
      this.game.sprites.add(res.sprite)
    else:
      for i in 0..this.game.sprites.len-1:
        if ordinal <= this.game.sprites[i].layer:
          this.game.sprites.insert(res.sprite, i)
          return
      this.game.sprites.add(res.sprite)
  )