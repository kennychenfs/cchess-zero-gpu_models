cd cchess-zero/gpu_models
export CP=`tail -n1 checkpoint | sed 's/.*-//g' | sed 's/"//g'`
[ "x$CP" = "x0" ] && echo "" && echo "[[[ 警告警告: 目前 checkpoint 的值為 0 ]]]" || echo "" && echo "[ Checkpoint is $CP ]" && echo ""
ls -l
