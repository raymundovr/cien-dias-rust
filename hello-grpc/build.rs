fn main() -> Result<(), Box<dyn std::error::Error>> {
    tonic_build::compile_protos("proto/helloworld.proto")?;
    tonic_build::compile_protos("proto/persongreeter.proto")?;
    tonic_build::compile_protos("proto/hellostreams.proto")?;
    Ok(())
}