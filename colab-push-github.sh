cd /content/cchess-zero/gpu_models
CP=`tail -n1 checkpoint | sed 's/.*-//g' | sed 's/"//g'`
mv checkpoint cc && grep $CP cc > checkpoint && rm cc
git pull
git add best*${CP}*
rm -f `\ls best_model* | grep -v $CP`
git config --global user.email wade.fs@gmail.com && git config --global user.name wade 
git remote set-url origin https://wade-fs:jjchen0701@github.com/kennychenfs/cchess-zero-gpu_models
git commit -a -m "$CP `date`" && git push
