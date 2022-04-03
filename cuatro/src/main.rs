mod generate;
use std::env;
use std::process::exit;
use image::{ GenericImageView, ImageError};
pub use crate::generate::images;

fn main() -> Result<(), ImageError> {

    if env::args().skip(1).count() != 1 {
        eprintln!("I just need an image path to work...");
        exit(1);
    }

    let image_path = env::args().nth(1).unwrap();
    println!("Opening {}", image_path);

    let image = image::open(&image_path)?;

    println!("Dimensions: {:?}", image.dimensions());
    println!("Color: {:?}", image.color());
    // images::single_pixel();
    images::apply_filter(&image_path)?;
    Ok(())
}
