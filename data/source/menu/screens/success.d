module menu.screens.success;
import menu.screens.common_import;
    
    //Will be integrated later when we have the time of the game
    string timerLeft = "Time remaining :%7.2f sec".format(15.50);

    //Function to display the Success screen to the player
    void displayScreenSuccess()
    {
        ClickableText[] labelClickable = 
        [
            new ClickableText(Screens.main_menu, "Continue", positionLabelX, positionLabelY + (20), 20),
            new ClickableText(Screens.save_game, "Save Game", positionLabelX, positionLabelY + (40), 20),
            new ClickableText(Screens.main_menu, "Return to main menu", positionLabelX, positionLabelY + (60), 20),
        ];
        
        Text[] labelNotClickable = 
        [
            new Text("Success", positionLabelX, 0, 20, white),
            new Text(timerLeft, positionLabelX, 20, 20, white),
        ];

        displayScreen(labelClickable, labelNotClickable);
    }
