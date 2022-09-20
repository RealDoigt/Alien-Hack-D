module menu.screens.main_menu;
import menu.clickable_text;
import menu.screens.selection;
import menu.screens.options;
import raylib;
import raylib_misc;

    //Used for testing will be redo
    void displayScreenMainMenu()
    {
        Text defaultText = new Text("Main Menu", widthScreen / 2 , heightScreen / 2 ,20, white);

        BeginDrawing;
            scope (exit) EndDrawing;

        defaultText.draw;

        black.ClearBackground;
    }
