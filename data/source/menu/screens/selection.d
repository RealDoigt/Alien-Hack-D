module menu.screens.selection;
import menu.screens;

  //Enum of all available screens
  enum Screens
  {
    main_menu,
    game,
    success,
    failed,
    options,
    controls,
    save_game,
    load_game
  }

  auto currentScreen = Screens.success;

  //Function to switch btw all screens available to the player
  void displayCurrentScreen() 
  {
    final switch (currentScreen) 
    {
        case Screens.main_menu:
          displayScreenMainMenu;
          break;
        case Screens.game:
          displayScreenGame;
          break;
        case Screens.success:
          displayScreenSuccess;
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
    }
  }