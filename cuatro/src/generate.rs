
pub mod images {
    use image::{Pixel, RgbaImage};

    pub fn single_pixel() {
        let mut img = RgbaImage::new(200, 200);
        img.put_pixel(100, 100, Pixel::from_channels(250, 255, 255, 255));
        img.put_pixel(101, 101, Pixel::from_channels(250, 255, 255, 255));
        img.put_pixel(99, 99, Pixel::from_channels(250, 255, 255, 255));
        img.save("single.png").unwrap();
        println!("Single pixel!");
    }
}