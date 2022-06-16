module menu.selection;

class GameLoop {

  enum Menus
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

  int menuSelected = Menus.mainMenu;

  void menu_Selection() 
  {
      final switch (menuSelected) 
      {
          case Menus.mainMenu:
            mainMenu();
            break;
          case Menus.game:
            gameMenu();
            break;
          case Menus.success:
            successMenu();
            break;
          case Menus.failed:
            failedMenu();
            break;
          case Menus.options:
            optionsMenu();
            break;
          case Menus.controls:
            controlsMenu();
            break;
          case Menus.saveGame:
            saveGameMenu();
            break;
          case Menus.loadGame:
            loadGameMenu();
            break;
      }
  }

  void mainMenu() 
  {
    menuSelected = Menus.mainMenu;
  }

  void gameMenu() 
  {
    menuSelected = Menus.game;
  }

  void successMenu()
  {
    menuSelected = Menus.success;
  }

  void failedMenu()
  {
    menuSelected = Menus.failed;
  }
  
  void optionsMenu()
  {
    menuSelected = Menus.options;
  }

  void controlsMenu() 
  {
    menuSelected = Menus.controls;
  }

  void loadGameMenu()
  {
    menuSelected = Menus.loadGame;
  }

  void saveGameMenu()
  {
    menuSelected = Menus.saveGame;
  }
}