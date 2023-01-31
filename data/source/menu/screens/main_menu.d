module menu.screens.main_menu;
import menu.screens.common_import;

    void displayScreenMainMenu()
    {
        ClickableTextWithRedirect[] labelClickable = 
        [
            new ClickableTextWithRedirect(Screens.start, "Start", positionLabelX, positionLabelY + spacePosY, fontSize),
            new ClickableTextWithRedirect(Screens.options, "Options", positionLabelX, positionLabelY + spacePosY * 2, fontSize),
            new ClickableTextWithRedirect(Screens.quit, "Quit", positionLabelX, positionLabelY + spacePosY * 3, fontSize),
        ];
        
        //Measure Text will be modify and updated when we find the official Name for the game
        Text[] labelNotClickable = 
        [
            new Text("Game Title", positionLabelX /*MeasureText("Game Title", 40)*/, 0, fontSize + 20, white),
        ];

        displayScreen(labelClickable, labelNotClickable);
    }
