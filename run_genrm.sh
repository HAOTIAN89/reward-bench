#!/bin/bash

# 设置要使用的模型名，可以是多个
MODELS="../Models/Qwen2.5-7B-Instruct"
# MODELS="deepseek-chat"

# 可选的 chat template，如果没有可以留空或去掉参数
# CHAT_TEMPLATE=""

# 启用/禁用可选 flags，例如 --trust_remote_code, --score_w_ratings 等
TRUST_REMOTE_CODE="--trust_remote_code"
SCORE_WITH_RATINGS=""

# GPU 设置
NUM_GPUS=1
VLLM_GPU_UTIL=0.8

# 线程数
NUM_THREADS=10

# 其它 flags，可以按需开启
DEBUG="--debug"
FORCE_LOCAL="--force_local"
# FORCE_LOCAL=""
DO_NOT_SAVE="--do_not_save"
DISABLE_BEAKER_SAVE="--disable_beaker_save"
PREF_SETS=""
SCALAR="--scalar"
# SCALAR=""

# 执行脚本
python ./scripts/run_generative.py \
  --model $MODELS \
  $TRUST_REMOTE_CODE \
  $SCORE_WITH_RATINGS \
  --num_gpus $NUM_GPUS \
  --vllm_gpu_util $VLLM_GPU_UTIL \
  --num_threads $NUM_THREADS \
  $SCALAR \
  $DEBUG \
  $FORCE_LOCAL \
  $DO_NOT_SAVE \
  $DISABLE_BEAKER_SAVE \
  $PREF_SETS

  # --chat_template $CHAT_TEMPLATE
