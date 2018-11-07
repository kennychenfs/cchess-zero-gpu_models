cd cchess-zero/gpu_models/ && export CP=`tail -n1 checkpoint | sed 's/.*-//g' | sed 's/"//g'` && mv checkpoint cc && grep $CP cc > checkpoint && git rm -f `\ls best_model* | grep -v $CP` cc

