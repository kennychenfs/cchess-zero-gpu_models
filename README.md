#cchess-zero-GPU-models
關於chengstone/cchess-zero我自己用https://colab.research.google.com/ 提供的gpu訓練的模型，時不時會更新。<BR/>
參數如下:<BR/>
visit=1600<BR/>
batch_size=16<BR/>
processor<BR/>
<P>
關於 push-github.sh, 這個 shell script 必須放在上一層, 並且將下載的 gpu_models 也一樣放在上一層<BR/>
也就是在上一層看來檔案如下:<BR/>
$ tree<BR/>
.<BR/>
├── best_model.ckpt-834.data-00000-of-00001<BR/>
├── best_model.ckpt-834.index<BR/>
├── best_model.ckpt-834.meta<BR/>
├── cchess-zero-GPU-models<BR/>
│   ├── best_model.ckpt-824.data-00000-of-00001<BR/>
│   ├── best_model.ckpt-824.index<BR/>
│   ├── best_model.ckpt-824.meta<BR/>
│   ├── cchess_zero.ipynb<BR/>
│   ├── checkpoint<BR/>
│   ├── push-github.sh<BR/>
│   └── README.md<BR/>
└── checkpoint<BR/>
<BR/>
執行範例類似下面這樣:<BR/><BR/>
<i>cd ../; cchess-zero-GPU-models/push-github.sh</i><BR/>

<P>執行完， cchess-zero-GPU-models/ 變成如下, 而且會自動 git commit 最新的編號並且 git push 上傳:<BR/>
$ tree<BR/>
.<BR/>
├── best_model.ckpt-834.data-00000-of-00001<BR/>
├── best_model.ckpt-834.index<BR/>
├── best_model.ckpt-834.meta<BR/>
├── cchess_zero.ipynb<BR/>
├── checkpoint<BR/>
├── push-github.sh<BR/>
└── README.md<BR/>
<BR/>
<P>在 colab 中可以:<BR/>
<BR/>
# 準備系統
!cchess-zero/gpu_models/colab-prepare-system.sh
# 執行訓練
!cchess-zero/gpu_models/colab-train.sh
# 上傳到 github
!cchess-zero/gpu_models/colab-push-github.sh
# cchess-zero-gpu_models
