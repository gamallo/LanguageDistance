#!/bin/bash

TEST="./corpora/test"
PROG="./scripts"
MODEL="./models"

Train=$1
Target=$2

#echo $Target
cat $TEST/$Target |tr -d '\015' |$PROG/tokenizer_ch.perl  |$PROG/7grams.perl  |$PROG/perplexity_setegrams.perl $Train $Target



