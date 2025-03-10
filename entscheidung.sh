#!/bin/bash
#
# Name: entscheidung.sh - Überprüft, ob genug Argumente mitgegeben wurde.
# -----------------
# SYNOPSIS: entscheidung.sh [OPTION]
# Description: Überprüft, ob genug Argumente mitgegeben wurde.
# entscheidung  -> Erste Datei
# entscheidung -> Zweite Datei
#
# Autoren: R. Stalder
# Version: 1.0.0
# Datum: 14.9.2021
#
#

if test $# -ne 2; then
  echo "Sie müssen zwei Dateinamen als Argumente eingeben!"
  echo "Usage: entscheidung.sh dateiname1 dateiname2"
else
  if test -e $1; then
    echo "Die Datei existiert"
  else
    echo "Die Datei \"$1\" existiert nicht"
    #exit 1
  fi
  if test -e $2; then
    echo "Die Datei existiert"
  else
    echo "Die Datei \"$2\" existiert nicht"
    #exit 1
  fi
fi
