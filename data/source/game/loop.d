module game.loop;



void displayGameplay()
{
    for (int y = level.height - 1; y >= 0; --y)
    {
        for (int x = 0; x < LEVEL_MAX; ++x)
        {
            Color color;

            switch (level.bits[y][x].type)
            {
                case NORMAL:
                    color = GREEN;
                    break;

                case EXPLOSIVE:
                    color = RED;
                    break;

                case VIRAL:
                    color = PURPLE;
                    break;

                case ZOMBIE:
                    color = YELLOW;
                    break;

                case WISE:
                    color = WHITE;
                    break;

                default: return;
            }

            if (!level.bits[y][x].is_alive)
            {
                color.r >>= 3;
                color.g >>= 3;
                color.b >>= 3;
            }

            DrawRectangle(START_X + (x << 5), START_Y + y * 100, BIT_WIDTH, BIT_HEIGHT, color);
        }
    }
}
