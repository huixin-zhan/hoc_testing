#!/bin/bash
#$ -pe smp 4
#$ -N job_test_zhanh
#$ -cwd
#$ -q 1tb.q
#$ -o /common/zhanh/out_test
#$ -e /common/zhanh/error_test
source /common/zhanh/anaconda3/etc/profile.d/conda.sh
conda activate <myenv>
/common/zhanh/anaconda3/envs/tf_test_zhanh/bin/python
python \
/common/zhanh/hpc_testing/tensorflow_testing.py \
--index 3 \
--template 'False' \
--population 100 \
--generations 100 \
--njobs 16
