#!/bin/bash

#pip install autoawq
#pip install fschat

#nohup bash ./start.sh &
#disown -h

python -m vllm.entrypoints.openai.api_server \
  --host 0.0.0.0 \
  --port 3000 \
  --model TheBloke/Llama-2-70B-chat-AWQ \
  --quantization awq \
  --tensor-parallel-size 2 \
  --trust-remote-code

