#!/bin/bash

#setxkbmap -display :0 -print | xkbcomp - :10
cat x.map | xkbcomp - :10
