module menu.screens.save_game;
import raylib;
import raylib_misc;

    void setScreenSaveGame()
    {
        //TEMP - METTRE LE WIDTH ET HEIGHT EN PUBLIC POUR Y ACCEDER DEPUIS LES OPTIONS CHOISI
        auto width = 1080;
        auto height = 720;
        Text defaultText = new Text("SaveGame", width / 2 , height / 2 ,20, white);

        BeginDrawing;
            scope (exit) EndDrawing;

        DrawRectangle(0, 0, width, height, black);
        defaultText.draw;

        white.ClearBackground;
    }

