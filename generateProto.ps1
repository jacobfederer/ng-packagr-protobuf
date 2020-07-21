$Env:PROTOC_GEN_TS_PATH=".\node_modules\.bin\protoc-gen-ts.cmd"

$Env:REGULAR_OUT_TS_DIR=".\projects\lib\src\lib"

protoc --plugin="protoc-gen-ts=$Env:PROTOC_GEN_TS_PATH" --js_out="import_style=commonjs,binary:$Env:REGULAR_OUT_TS_DIR" --ts_out="service=grpc-web:$Env:REGULAR_OUT_TS_DIR" "message.proto"
