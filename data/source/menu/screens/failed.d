module menu.screens.failed;
import menu.screens.common_import;

// Retry button will be changed when the "gameplay-screen" will be finished
void displayScreenFailed()
{
    ClickableTextWithRedirect[] labelClickable = 
        [
            new ClickableTextWithRedirect(Screens.main_menu, "Retry", positionLabelX, positionLabelY + spacePosY, fontSize),
            new ClickableTextWithRedirect(Screens.save_game, "Save Game", positionLabelX, positionLabelY + spacePosY * 2, fontSize),
            new ClickableTextWithRedirect(Screens.load_game, "Load Game", positionLabelX, positionLabelY + spacePosY * 3, fontSize),
            new ClickableTextWithRedirect(Screens.main_menu, "Main menu", positionLabelX, positionLabelY + spacePosY * 4, fontSize), 
            new ClickableTextWithRedirect(Screens.quit, "Quit", positionLabelX, positionLabelY + spacePosY * 5, fontSize),
        ];
        
        Text[] labelNotClickable = 
        [
            new Text("Failed!!!", positionLabelX, 0, fontSize, white),
            new Text("Timer ran out!!!", positionLabelX, spacePosY, fontSize, white),
        ];

        displayScreen(labelClickable, labelNotClickable);
}