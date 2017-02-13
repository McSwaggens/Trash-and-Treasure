#!/bin/bash
cd ~/
cd projects
for d in ./*/ ; do (cd "$d" && git add . && git commit -m 'Pushed by SAMANTHA!' && git push); done
