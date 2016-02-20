##
## Entitas Generated Match Extensions for shmupwarz
##
## do not edit this file
##
import bosco/ECS
import ComponentEx
type MatchObj = ref object of RootObj
  ## @type {bosco.Match}
  matchBounds : Matcher
  ## @type {bosco.Match}
  matchBullet : Matcher
  ## @type {bosco.Match}
  matchColorAnimation : Matcher
  ## @type {bosco.Match}
  matchDestroy : Matcher
  ## @type {bosco.Match}
  matchEnemy : Matcher
  ## @type {bosco.Match}
  matchExpires : Matcher
  ## @type {bosco.Match}
  matchFiring : Matcher
  ## @type {bosco.Match}
  matchHealth : Matcher
  ## @type {bosco.Match}
  matchLayer : Matcher
  ## @type {bosco.Match}
  matchLife : Matcher
  ## @type {bosco.Match}
  matchMine : Matcher
  ## @type {bosco.Match}
  matchMouse : Matcher
  ## @type {bosco.Match}
  matchPlayer : Matcher
  ## @type {bosco.Match}
  matchPosition : Matcher
  ## @type {bosco.Match}
  matchResource : Matcher
  ## @type {bosco.Match}
  matchScaleAnimation : Matcher
  ## @type {bosco.Match}
  matchScale : Matcher
  ## @type {bosco.Match}
  matchScore : Matcher
  ## @type {bosco.Match}
  matchSoundEffect : Matcher
  ## @type {bosco.Match}
  matchVelocity : Matcher

## @type {bosco.Matcher}
proc Bounds*(this : MatchObj) : Matcher =
  if this.matchBounds == nil:
    this.matchBounds = MatchAllOf(@[int(Component.Bounds)])
  return this.matchBounds

## @type {bosco.Matcher}
proc Bullet*(this : MatchObj) : Matcher =
  if this.matchBullet == nil:
    this.matchBullet = MatchAllOf(@[int(Component.Bullet)])
  return this.matchBullet

## @type {bosco.Matcher}
proc ColorAnimation*(this : MatchObj) : Matcher =
  if this.matchColorAnimation == nil:
    this.matchColorAnimation = MatchAllOf(@[int(Component.ColorAnimation)])
  return this.matchColorAnimation

## @type {bosco.Matcher}
proc Destroy*(this : MatchObj) : Matcher =
  if this.matchDestroy == nil:
    this.matchDestroy = MatchAllOf(@[int(Component.Destroy)])
  return this.matchDestroy

## @type {bosco.Matcher}
proc Enemy*(this : MatchObj) : Matcher =
  if this.matchEnemy == nil:
    this.matchEnemy = MatchAllOf(@[int(Component.Enemy)])
  return this.matchEnemy

## @type {bosco.Matcher}
proc Expires*(this : MatchObj) : Matcher =
  if this.matchExpires == nil:
    this.matchExpires = MatchAllOf(@[int(Component.Expires)])
  return this.matchExpires

## @type {bosco.Matcher}
proc Firing*(this : MatchObj) : Matcher =
  if this.matchFiring == nil:
    this.matchFiring = MatchAllOf(@[int(Component.Firing)])
  return this.matchFiring

## @type {bosco.Matcher}
proc Health*(this : MatchObj) : Matcher =
  if this.matchHealth == nil:
    this.matchHealth = MatchAllOf(@[int(Component.Health)])
  return this.matchHealth

## @type {bosco.Matcher}
proc Layer*(this : MatchObj) : Matcher =
  if this.matchLayer == nil:
    this.matchLayer = MatchAllOf(@[int(Component.Layer)])
  return this.matchLayer

## @type {bosco.Matcher}
proc Life*(this : MatchObj) : Matcher =
  if this.matchLife == nil:
    this.matchLife = MatchAllOf(@[int(Component.Life)])
  return this.matchLife

## @type {bosco.Matcher}
proc Mine*(this : MatchObj) : Matcher =
  if this.matchMine == nil:
    this.matchMine = MatchAllOf(@[int(Component.Mine)])
  return this.matchMine

## @type {bosco.Matcher}
proc Mouse*(this : MatchObj) : Matcher =
  if this.matchMouse == nil:
    this.matchMouse = MatchAllOf(@[int(Component.Mouse)])
  return this.matchMouse

## @type {bosco.Matcher}
proc Player*(this : MatchObj) : Matcher =
  if this.matchPlayer == nil:
    this.matchPlayer = MatchAllOf(@[int(Component.Player)])
  return this.matchPlayer

## @type {bosco.Matcher}
proc Position*(this : MatchObj) : Matcher =
  if this.matchPosition == nil:
    this.matchPosition = MatchAllOf(@[int(Component.Position)])
  return this.matchPosition

## @type {bosco.Matcher}
proc Resource*(this : MatchObj) : Matcher =
  if this.matchResource == nil:
    this.matchResource = MatchAllOf(@[int(Component.Resource)])
  return this.matchResource

## @type {bosco.Matcher}
proc ScaleAnimation*(this : MatchObj) : Matcher =
  if this.matchScaleAnimation == nil:
    this.matchScaleAnimation = MatchAllOf(@[int(Component.ScaleAnimation)])
  return this.matchScaleAnimation

## @type {bosco.Matcher}
proc Scale*(this : MatchObj) : Matcher =
  if this.matchScale == nil:
    this.matchScale = MatchAllOf(@[int(Component.Scale)])
  return this.matchScale

## @type {bosco.Matcher}
proc Score*(this : MatchObj) : Matcher =
  if this.matchScore == nil:
    this.matchScore = MatchAllOf(@[int(Component.Score)])
  return this.matchScore

## @type {bosco.Matcher}
proc SoundEffect*(this : MatchObj) : Matcher =
  if this.matchSoundEffect == nil:
    this.matchSoundEffect = MatchAllOf(@[int(Component.SoundEffect)])
  return this.matchSoundEffect

## @type {bosco.Matcher}
proc Velocity*(this : MatchObj) : Matcher =
  if this.matchVelocity == nil:
    this.matchVelocity = MatchAllOf(@[int(Component.Velocity)])
  return this.matchVelocity


proc newMatchObj() : MatchObj =
  new(result)

var Match* = newMatchObj()
