%define CARD_TOP_LEFT 0xDA
%define CARD_TOP_RIGHT 0xBF
%define CARD_BOTTOM_LEFT 0xC0
%define CARD_BOTTOM_RIGHT 0xD9
%define CARD_BAR 0xB3
%define CARD_LINE 0xC4

header:
  db CARD_TOP_LEFT
  times 17 db CARD_LINE
  db CARD_TOP_RIGHT, 0
helloword:
  db CARD_BAR
  db '  Hello, World!  '
  db CARD_BAR, 0
blank:
  db CARD_BAR
  times 17 db ' '
  db CARD_BAR, 0
website:
  db CARD_BAR
  db '  pmqueiroz.dev  '
  db CARD_BAR, 0
footer:
  db CARD_BOTTOM_LEFT
  times 17 db CARD_LINE
  db CARD_BOTTOM_RIGHT, 0
