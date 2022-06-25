module menu.selection;

  enum Screens
  {
    mainMenu,
    game,
    success,
    failed,
    options,
    controls,
    saveGame,
    loadGame
  }

  auto menuSelected = Screens.mainMenu;

  void displayMenuSelection() 
  {
      final switch (menuSelected) 
      {
          case Screens.mainMenu:
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
          case Screens.saveGame:
            displaySaveGameMenu;
            break;
          case Screens.loadGame:
            displayLoadGameMenu;
            break;
      }
  }

  void displayMainMenu() 
  {
    menuSelected = Screens.mainMenu;
  }

  void displayGameMenu() 
  {
    menuSelected = Screens.game;
  }

  void displaySuccessMenu()
  {
    menuSelected = Screens.success;
  }

  void displayFailedMenu()
  {
    menuSelected = Screens.failed;
  }
  
  void displayOptionsMenu()
  {
    menuSelected = Screens.options;
  }

  void displayControlsMenu() 
  {
    menuSelected = Screens.controls;
  }

  void displayLoadGameMenu()
  {
    menuSelected = Screens.loadGame;
  }

  void displaySaveGameMenu()
  {
    menuSelected = Screens.saveGame;
  }