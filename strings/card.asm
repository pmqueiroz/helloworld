%define CARD_TOP_LEFT      0xDA
%define CARD_TOP_RIGHT     0xBF
%define CARD_BOTTOM_LEFT   0xC0
%define CARD_BOTTOM_RIGHT  0xD9
%define CARD_BAR           0xB3
%define CARD_LINE          0xC4
%define BLANK              0x20

header:
  db CARD_TOP_LEFT
  times 26 db CARD_LINE
  db CARD_TOP_RIGHT, 0
helloword:
  db CARD_BAR, BLANK
  db 'Hello, World', BLANK, 0x01
  times 11 db BLANK
  db CARD_BAR, 0
blank:
  db CARD_BAR
  times 26 db BLANK
  db CARD_BAR, 0
linkedin:
  db CARD_BAR
  db BLANK, 0x04, BLANK, 'linkedin.com/pmqueiroz'
  db BLANK
  db CARD_BAR, 0
github:
  db CARD_BAR
  db BLANK, 0x04, BLANK, 'github.com/pmqueiroz'
  times 3 db BLANK
  db CARD_BAR, 0
website:
  db CARD_BAR
  db BLANK, 0x04, BLANK, 'pmqueiroz.dev'
  times 10 db BLANK
  db CARD_BAR, 0
footer:
  db CARD_BOTTOM_LEFT
  times 26 db CARD_LINE
  db CARD_BOTTOM_RIGHT, 0
