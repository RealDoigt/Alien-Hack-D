module menu.screens.selection;
import menu.screens;

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

  void displayCurrentScreen() 
  {
    final switch (currentScreen) 
    {
        case Screens.main_menu:
          displayMainMenu;
          break;
        case Screens.game:
          displayGameMenu;
          break;
        case Screens.success:
          displaySuccessMenu;
          break;
        case Screens.failed:
          displayFailedMenu;
          break;
        case Screens.options:
          displayOptionsMenu;
          break;
        case Screens.controls:
          displayControlsMenu;
          break;
        case Screens.save_game:
          displaySaveGameMenu;
          break;
        case Screens.load_game:
          displayLoadGameMenu;
          break;
    }
  }

  void displayMainMenu() 
  {
    currentScreen = Screens.main_menu;
    setScreenMainMenu;
  }

  void displayGameMenu() 
  {
    currentScreen = Screens.game;
  }

  void displaySuccessMenu()
  {
    currentScreen = Screens.success;
  }

  void displayFailedMenu()
  {
    currentScreen = Screens.failed;
  }
  
  void displayOptionsMenu()
  {
    currentScreen = Screens.options;
  }

  void displayControlsMenu() 
  {
    currentScreen = Screens.controls;
  }

  void displayLoadGameMenu()
  {
    currentScreen = Screens.load_game;
  }

  void displaySaveGameMenu()
  {
    currentScreen = Screens.save_game;
    setScreenSaveGame;
  }