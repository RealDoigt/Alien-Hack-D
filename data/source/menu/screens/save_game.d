module menu.screens.save_game;
import menu.clickable_text;
import menu.screens.selection;
import menu.screens.options;
import raylib;
import raylib_misc;

    //Used for testing will be redo
    void displayScreenSaveGame()
    {
        Text defaultText = new Text("SaveGame", widthScreen / 2 , heightScreen / 2 ,20, white);

        BeginDrawing;
            scope (exit) EndDrawing;

        defaultText.draw;

        black.ClearBackground;
    }

