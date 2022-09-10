module menu.screens.main_menu;
import raylib;
import raylib_misc;

    void setScreenMainMenu()
    {
        //TEMP - METTRE LE WIDTH ET HEIGHT EN PUBLIC POUR Y ACCEDER DEPUIS LES OPTIONS CHOISI
        auto width = 1080;
        auto height = 720;
        Text defaultText = new Text("Main Menu", width / 2 , height / 2 ,20, white);

        BeginDrawing;
            scope (exit) EndDrawing;

        DrawRectangle(0, 0, width, height, black);
        defaultText.draw;

        white.ClearBackground;
    }
