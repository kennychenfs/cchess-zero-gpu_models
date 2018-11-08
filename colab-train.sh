BATCH_SIZE=$1
[ "x#BATCH_SIZE" = "x" ] && BATCH_SIZE=512
END_OF_BATCH=$2
[ "x#END_OF_BATCH" = "x" ] && END_OF_BATCH=10
pushd cchess-zero
echo python main.py --mode train --train_playout 1600 --processor gpu --num_gpus 2 --batch_size ${BATCH_SIZE} --end_of_batch ${END_OF_BATCH}
while true; do
  python main.py --mode train --train_playout 1600 --processor gpu --num_gpus 2 --batch_size ${BATCH_SIZE} --end_of_batch ${END_OF_BATCH}
  pushd gpu_models
  CP=`tail -n1 checkpoint | sed 's/.*-//g' | sed 's/"//g'`
  mv checkpoint cc && grep $CP cc > checkpoint && rm cc
  git pull
  git add best*${CP}*
  rm -f `\ls best_model* | grep -v $CP`
  git config --global user.email wade.fs@gmail.com && git config --global user.name wade
  git remote set-url origin https://wade-fs:jjchen0701@github.com/kennychenfs/models-batch512.git
  git commit -a -m "$CP `date`" && git push
  popd
done
