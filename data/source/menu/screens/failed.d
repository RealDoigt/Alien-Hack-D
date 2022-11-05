module menu.screens.failed;
import menu.screens.common_import;

// Retry button will be changed when the "gameplay-screen" will be finished
void displayScreenFailed()
{
    ClickableText[] labelClickable = 
        [
            new ClickableText(Screens.main_menu, "Retry", positionLabelX, positionLabelY + spacePosY, fontSize),
            new ClickableText(Screens.save_game, "Save Game", positionLabelX, positionLabelY + spacePosY * 2, fontSize),
            new ClickableText(Screens.load_game, "Load Game", positionLabelX, positionLabelY + spacePosY * 3, fontSize),
            new ClickableText(Screens.main_menu, "Main menu", positionLabelX, positionLabelY + spacePosY * 4, fontSize), 
            new ClickableText(Screens.quit, "Quit", positionLabelX, positionLabelY + spacePosY * 5, fontSize),
        ];
        
        Text[] labelNotClickable = 
        [
            new Text("Failed!!!", positionLabelX, 0, fontSize, white),
            new Text("Timer ran out!!!", positionLabelX, 20, fontSize, white),
        ];

        displayScreen(labelClickable, labelNotClickable);
}