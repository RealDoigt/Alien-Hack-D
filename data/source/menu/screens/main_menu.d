module menu.screens.main_menu;
import menu.clickable_text;
import menu.display_screen;
import menu.screens.selection;
import menu.screens.options;
import raylib;
import raylib_misc;

    void displayScreenMainMenu()
    {
        int positionLabelX = widthScreen / 2 - 50,
            positionLabelY = heightScreen / 2;

        new DisplayScreen
        (
            [
                new ClickableText(Screens.start, "Start", positionLabelX, positionLabelY + (20), 20),
                new ClickableText(Screens.options, "Options", positionLabelX, positionLabelY + (40), 20),
                new ClickableText(Screens.quit, "Quit", positionLabelX, positionLabelY + (60), 20),
            ],
            [
                new Text("Game Title", positionLabelX /*MeasureText("Game Title", 40)*/, 0, 40, white),
            ]
        );

        /*ClickableText[] labelClickable = 
        [
            new ClickableText(Screens.start, "Start", positionLabelX, positionLabelY + (20), 20),
            new ClickableText(Screens.options, "Options", positionLabelX, positionLabelY + (40), 20),
            new ClickableText(Screens.quit, "Quit", positionLabelX, positionLabelY + (60), 20),
        ];
        
        //Measure Text will be modify and updated when we find the official Name for the game
        Text[] labelNotClickable = 
        [
            new Text("Game Title", positionLabelX /*MeasureText("Game Title", 40), 0, 40, white),
        ];
        */
        
        /*BeginDrawing;
            scope (exit) EndDrawing;

            foreach (text; labelNotClickable) text.draw;
            foreach (clickText; labelClickable)
            {
                clickText.draw;
                clickText.onClick;
                clickText.onHover;
            }
           
            black.ClearBackground;*/
    }
