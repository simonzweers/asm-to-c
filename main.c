#include <stdint.h>
extern void _print(char *str, uint64_t len);

extern int main() {
  char *str = "Help Me Please\n";
  _print(str, 15);
  int value = 111;
  return value;
}
