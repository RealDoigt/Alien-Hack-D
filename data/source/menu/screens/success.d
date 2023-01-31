module menu.screens.success;
import menu.screens.common_import;
    
    //Will be integrated later when we have the time of the game
    string timerLeft = "Time remaining :%7.2f sec".format(15.50);

    //Function to display the Success screen to the player -- Screens.main_menu for continue button will be change later
    void displayScreenSuccess()
    {
        ClickableTextWithRedirect[] labelClickable = 
        [
            new ClickableTextWithRedirect(Screens.main_menu, "Continue", positionLabelX, positionLabelY + spacePosY, fontSize),
            new ClickableTextWithRedirect(Screens.save_game, "Save Game", positionLabelX, positionLabelY + spacePosY * 2, fontSize),
            new ClickableTextWithRedirect(Screens.main_menu, "Main menu", positionLabelX, positionLabelY + spacePosY * 3, fontSize),
        ];
        
        Text[] labelNotClickable = 
        [
            new Text("Success", positionLabelX, 0, fontSize, white),
            new Text(timerLeft, positionLabelX, 20, fontSize, white),
        ];

        displayScreen(labelClickable, labelNotClickable);
    }
