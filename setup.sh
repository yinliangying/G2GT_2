
source_str=-i https://pypi.tuna.tsinghua.edu.cn/simple/
pip install pytorch-lightning==1.4.5  {source_str}
pip install torch==1.9.0+cu111 torchvision==0.10.0+cu111 torchaudio==0.9.0 -f https://download.pytorch.org/whl/torch_stable.html {source_str}
pip install networkx   {source_str}
pip install tensorboardX==2.4.1   {source_str}
pip install rdkit-pypi==2021.9.3   {source_str}
pip install torch-scatter torch-sparse torch-cluster torch-spline-conv torch-geometric -f https://data.pyg.org/whl/torch-1.9.0+cu111.html   {source_str}
pip install pympler   {source_str}
pip install --upgrade easy-kubeflow   {source_str}
pip install Cython   {source_str}
pip install joblib  {source_str}