module menu.screens.success;
import menu.clickable_text;
import menu.screens.selection;
import raylib_misc;
import raylib_misc.shapes.rectangle;
import std.experimental.logger;
import raylib;
    
    int width = 1080,
        height = 720,
        positionLabelX = 1080 / 2 - 50,
        positionLabelY = 720 / 2;

    void displayScreenSuccess()
    {
        ClickableText[] labelClickable = 
        [
            new ClickableText(Screens.main_menu, "Continue", positionLabelX, positionLabelY + (20), 20, white),
            new ClickableText(Screens.save_game, "Save Game", positionLabelX, positionLabelY + (40), 20, white),
            new ClickableText(Screens.main_menu, "Return to main menu", positionLabelX, positionLabelY + (60), 20, white),
        ];
        
        Text[] labelNotClickable = 
        [
            new Text("Success", positionLabelX, 0, 20, white),
            new Text("Time remaining : ", positionLabelX, 20, 20, white),
        ];

        //TEMP - METTRE LE WIDTH ET HEIGHT EN PUBLIC POUR Y ACCEDER DEPUIS LES OPTIONS CHOISI
        BeginDrawing;
            scope (exit) EndDrawing;

            foreach (text; labelNotClickable) text.draw;
            foreach (clickText; labelClickable)
            {
                clickText.draw;
                clickText.onClick;
                clickText.onHover;
            }
           
            black.ClearBackground;
    }