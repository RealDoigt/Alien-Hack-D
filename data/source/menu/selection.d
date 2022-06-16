module menu.selection;

class GameLoop {

  enum Menus
  {
    Main_menu = 1,
    Game = 2,
    Success = 3,
    Failed = 4,
    Options = 5,
    Controls = 6,
    Save_Game = 7,
    Load_Game = 8
  }

  int menu_selected = Menus.Main_menu;

  void menu_selection() 
  {
      switch (menu_selected) 
      {
          case 1:
            main_menu();
            break;
          case 2:
            game_menu();
            break;
          case 3:
            success_menu();
            break;
          case 4:
            failed_menu();
            break;
          case 5:
            options_menu();
            break;
          case 6:
            controls_menu();
            break;
          case 7:
            save_game_menu();
            break;
          case 8:
            load_game_menu();
            break;
      }
  }

  void main_menu() 
  {

  }

  void game_menu() 
  {

  }

  void success_menu()
  {

  }

  void failed_menu()
  {

  }
  
  void options_menu()
  {

  }

  void controls_menu() 
  {

  }

  void load_game_menu()
  {

  }

  void save_game_menu()
  {

  }
}