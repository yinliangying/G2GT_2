export PYTHONPATH=$PYTHONPATH:/root/Uni-Electrolyte/retrosynthesis/g2gt/src
cp ./train.sh /root/Uni-Electrolyte/retrosynthesis/g2gt/src/train.sh #for bohrium task 更灵活
sh -x /root/Uni-Electrolyte/retrosynthesis/g2gt/src/train.sh