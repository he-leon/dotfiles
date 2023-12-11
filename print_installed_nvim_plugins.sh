#!/bin/bash
nvim --headless -c ":lua t = require('lazy').plugins(); for k,v in pairs(t) do print(v[1]) end" -c 'q'
