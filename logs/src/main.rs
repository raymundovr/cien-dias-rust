use log::{debug, trace, info, error};

fn main() {
    env_logger::init();
    
    debug!("Hello, world");
    trace!("Trace my {}", "world");
    info!("Info this into {}", "this");
    error!("Awww snap! {}", "nope");
}
