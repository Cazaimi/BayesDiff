# Cooperate UQ into ddim sampler, experiment results will be saved in ./ddim_exp/skipUQ/
CUDA_VISIBLE_DEVICES=0 python ddim_skipUQ.py --prompt "Old Major, an aged boar, addressing a gathering of diverse farm animals under dim light in a barn, stirring revolutionary zeal, digital art." \
--ckpt "/content/drive/MyDrive/v1-5-pruned-emaonly.ckpt" --local_image_path "/content/drive/MyDrive/image_from_url-20240426T020530Z-001/image_from_url" --laion_art_path "/content/drive/MyDrive/laion-art.parquet" \
--H 512 --W 512 --scale 3 --train_la_data_size 1000 --train_la_batch_size 10 \
--sample_batch_size 2 --total_n_samples 48 --timesteps 50

#Cooperate UQ into dpm-solver-2 sampler, experiment results will be saved in ./dpm_solver_2_exp/skipUQ/
CUDA_VISIBLE_DEVICES=0 python dpmsolver_skipUQ.py --prompt "Old Major, an aged boar, addressing a gathering of diverse farm animals under dim light in a barn, stirring revolutionary zeal, digital art." \
--ckpt "/content/drive/MyDrive/v1-5-pruned-emaonly.ckpt" --local_image_path '/content/drive/MyDrive/image_from_url-20240426T020530Z-001/image_from_url' --laion_art_path "/content/drive/MyDrive/laion-art.parquet" \
--H 512 --W 512 --scale 3 --train_la_data_size 1000 --train_la_batch_size 10 \
--sample_batch_size 2 --total_n_samples 48 --timesteps 50
