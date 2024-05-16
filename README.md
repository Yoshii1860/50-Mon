# 50-Mon

This is a coursework project from Harvard University`s CS50G.

# Implemented Features:

Triggered by Level Up: The menu appears automatically whenever the player's Pokemon gains a level after a victorious battle.

Seamless Integration: The menu smoothly integrates into the existing level-up flow, appearing directly after the "Level Up" dialogue.

Detailed Stat Breakdown: It provides a clear and informative breakdown of each stat increase, showcasing the:
- Base Stat: Starting value of the stat before level up.
- Level Up Bonus: Amount the stat has increased due to this level up.
- New Total: Resultant sum of the base stat and the level up bonus.

Non-Intrusive Design: Unlike the standard battle menu, this menu avoids cluttering the screen with a cursor, keeping the focus on the stat information.

State Management: The menu is implemented as a separate state pushed onto the game's state stack, ensuring proper management within the game's overall flow.
