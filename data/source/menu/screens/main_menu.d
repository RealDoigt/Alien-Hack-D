module menu.screens.main_menu;
import menu.screens.common_import;

    void displayScreenMainMenu()
    {
        ClickableText[] labelClickable = 
        [
            new ClickableText(Screens.start, "Start", positionLabelX, positionLabelY + (20), 20),
            new ClickableText(Screens.options, "Options", positionLabelX, positionLabelY + (40), 20),
            new ClickableText(Screens.quit, "Quit", positionLabelX, positionLabelY + (60), 20),
        ];
        
        //Measure Text will be modify and updated when we find the official Name for the game
        Text[] labelNotClickable = 
        [
            new Text("Game Title", positionLabelX /*MeasureText("Game Title", 40)*/, 0, 40, white),
        ];

        displayScreen(labelClickable, labelNotClickable);
    }
