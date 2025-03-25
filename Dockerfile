ARG TEI_IMAGE=ghcr.io/huggingface/text-embeddings-inference:cpu-1.6

FROM $TEI_IMAGE

ARG MODEL=BAAI/bge-base-en-v1.5

RUN apt-get update && apt-get install -y python3 python3-pip git git-lfs
RUN git lfs install

RUN mkdir -p /data && git clone https://huggingface.co/$MODEL /data/embed-model

ENTRYPOINT [ "text-embeddings-router" ]
CMD ["--json-output", "--model-id", "/data/embed-model"]
