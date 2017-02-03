#!/bin/bash
mcorr --progress anthina_core.xmfa anthina_core.csv
python $GOPATH/src/github.com/mingzhi/mcorr/cmd/fitting/FitP2.py anthina_core.csv anthina_core