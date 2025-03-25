group "default" {
  targets = ["baai-bge-base-en-v15"]
}

target "baai-bge-base-en-v15" {
  context = "."
  dockerfile = "Dockerfile"
  args = {
    MODEL = "BAAI/bge-base-en-v1.5"
  }
  platforms = ["linux/amd64"]
  tags = ["connyay/hf-tei-cpu-1.6:baai-bge-base-en-v15"]
}
