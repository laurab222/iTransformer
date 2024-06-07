export CUDA_VISIBLE_DEVICES=2

model_name=iTransformer

python -u run.py \
  --is_training 1 \
  --root_path ./dataset/NeurIPS-TS/synthetic/ \
  --data_path 0_withdate.csv \
  --target anomaly \
  --model_id neurips0_96_96 \
  --model $model_name \
  --data custom \
  --features M \
  --des 'Exp' \
  --d_model 512\
  --d_ff 512 \
  --batch_size 16 \
  --learning_rate 0.001 \
  --train_epochs 2 \
  --itr 1


# --is_training 1 --root_path ./dataset/NeurIPS-TS/synthetic/ --data_path 0_withdate.csv --target anomaly --model_id neurips0_96_96 --model iTransformer --data custom --features M --des 'Exp' --d_model 512 --d_ff 512 --batch_size 16 --learning_rate 0.001 --train_epochs 2 --itr 1