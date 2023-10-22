# NanoDungeon2 Design Doc
Collect the Gems and find the Mother Load!

## Desired feel
Fast, low-thought coffee-break rogue-ish that's playable by anyone. Just enough randomization to make multiple playthroughs possible. I want to invoke the feeling of playing a randomizer for a game that you're already familiar with.

## Theme
Not sure. Generic dungeon crawler seems boring, but I don't have a good idea for a legible, fun theme. Need to think on this.

## Non-goals
* Complex progression
* Stats
* Character customization
* Being an "itemfest" roguelike
* High, or even moderate, difficulty

## Objectives

### Find the gems
The player runs through the dungeon trying to find all the gems. As they do they get messages about how they feel they're getting close to the mother load. The final gem they find is always the "mother load", with a special graphic. The gems will be placed into random chests. The chests will be in static locations so that the player and memorize them and check them in the order they want. I think it's a good idea to have "big" chests that may hold a gem or high-tier item and "small" chests that can only contain common items. Small chests should be common to keep the player stocked with items.

### A legible, static map
Random map generation is great and all, but I think a hand-crafted map with thoughtful design will be a more inviting world for inexperienced players. Plus I want to inject some of my own humor, and having static rooms lets me give them quirky and memorable names that will hopefully add some fun to exploration.

### Limited but fun items to find
Finding cool items is at the core of a roguelike-style game, but I don't want to overdo it. I want to avoid a lot of stop-and-go where the player wonders what the item they just picked up does. I want to design a small set of items with obvious uses. I also want to take care that players don't feel the need to "head back" for items excessively.

### Simple inventory based on four slots
I want items to be being picked up and used all the time. I want to avoid having "magnum ammo", where an item feels Too Cool to Use(tm). This will partly be done by just not having any crazy overpowered items, but also by limiting the inventory space to four slots. The UI will likely be holding a button and then pressing a direction to pick an item to use. Items will then ask for at most a direction, but never a specific target.

### Simple bump combat
While enemies will have spell/ability names for flavor the combat itself is going to be a simple afair. I don't know exactly what the mechanics will be, but I want to avoid drawn-out slugfests. If an enemy is too tough I want the player to always have the choice to run away and find a different path. Enemies should "leash" once the player has run away for a few turns so that you do not end up in a death spiral of having low health and a strong enemy following one tile behind you forever. Items can help knock enemies away as well.

### Every run is a winner
Every run should be easily completable. The "game" should be in the excitement of exploring and finding/checking the chests for gems, not in the combat. The enemies will be mostly popcorn. Perhaps a couple bosses that are a little tougher, but should still be able to be "cheesed" easily. Again, difficulty is not the goal at all.

## Blockers

### Art
I will need to learn to make decent art. Pico8 doesn't ask a lot, but even as such I have little to give. I'm sure there are tutorials I can watch. I'm a little scared that I'll labor to make a game that's fun but the art will be so bad that nobody will take it seriously.

### Sound
I have no idea how to make music and sfx. I can manage very basic sfx but absolutely no music. I need to learn at least a bit.

### Juice
I am a novice at animation programming and I worry I won't be able to add enough "juice" to the game in the form of animations and flair. The game mechanics will be simple, so there should be little juicy bits all over. Items rising above your head when picked up, all enemies animating when they see you and when they lose you. Everything sliding. Animated map tiles for atmosphere, etc. This is *crucial*.

## Thoughts / Ideas
Maybe have the game open as you're leaving the dungeon from the first game. Maybe re-use some of those graphics only at the start.