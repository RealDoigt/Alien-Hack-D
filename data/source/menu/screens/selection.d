module menu.screens.selection;
import menu.screens;
import game;
import raylib;

  //Enum of all available screens
  enum Screens
  {
    main_menu,
    game,
    success,
    start,
    failed,
    options,
    controls,
    save_game,
    load_game,
    quit,
  }

  auto currentScreen = Screens.game;

  //Function to switch btw all screens available to the player
  void displayCurrentScreen() 
  {
    switch (currentScreen) 
    {
        case Screens.main_menu:
          displayScreenMainMenu;
          break;
        case Screens.game:
          displayGameplay;
          break;
        case Screens.success:
          displayScreenSuccess;
          break;
        case Screens.start:
          displayScreenStart;
          break;
        case Screens.failed:
          displayScreenFailed;
          break;
        case Screens.options:
          displayScreenOptions;
          break;
        case Screens.controls:
          displayScreenControls;
          break;
        case Screens.save_game:
          displayScreenSaveGame;
          break;
        case Screens.load_game:
          displayScreenLoadGame;
          break;
        default: 
          CloseWindow;
          break;
    }
  }
