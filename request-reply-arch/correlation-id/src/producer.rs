use common_q::*;

pub fn init(url: &str, id: &str, queue_name: &str) {
    let q = Queue::new(url, queue_name).expect("Cannot instantiate new Queue");

    q.publish_message(format!("Hello, my ID is {}", id).as_bytes()).expect("Cannot publish message");

    q.close().expect("Cannot close Queue");
}