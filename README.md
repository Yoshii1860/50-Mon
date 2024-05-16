# 50-Mon

This is a coursework project from Harvard University`s CS50G.

# Implemented Features:

Level-Up Trigger: The stat gain menu is designed to activate automatically upon a specific in-game event: a Pokemon's level increase after a victorious battle. This ensures players are presented with the stat information immediately after experiencing the level-up event.

Integrated Level-Up Flow: The menu seamlessly integrates into the existing level-up sequence. This likely involves displaying the menu directly after the standard "Level Up" dialogue has been presented, maintaining a smooth user experience.

Detailed Stat Breakdown: The menu presents a comprehensive breakdown of each stat's increase. This breakdown likely utilizes a user interface element that displays the following information for each stat:
- Base Stat: The starting value of the stat before the level up, providing a reference point for the player.
- Level Up Bonus: The specific amount the stat has increased due to this particular level up, highlighting the immediate benefit of the level gain.
- New Total: The resulting sum of the base stat and the level up bonus, clearly showcasing the Pokemon's new stat value after the level up.

Non-Intrusive Design: The menu prioritizes presenting the stat information clearly without overwhelming the player. This is likely achieved by avoiding the use of a cursor, unlike the standard battle menu that facilitates move selection. This keeps the player's focus on the stat changes without unnecessary UI elements.

State-Based Management: The stat gain menu is implemented as a separate state within the game's state management system. This likely involves "pushing" the menu state onto the game's state stack when triggered. This ensures proper management of the menu within the overall game flow, allowing for clean transitions between the level-up sequence and other game states.
