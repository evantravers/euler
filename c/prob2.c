#include <stdio.h>;

int main(int argc, char const *argv[])
{
  int f1 = 1;
  int f2 = 2;
  int f3;
  int result = 0;

  while (f1 < 4000000)
  {
    f3 = f1 + f2;
    f1 = f2;
    f2 = f3;
    if (f3 % 2 == 0)
    {
      result += f3;
    }
  }
  printf("%i\n", result);
}
