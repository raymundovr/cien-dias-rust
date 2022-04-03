pub mod images {
    use image::{GenericImageView, ImageError, Pixel, RgbaImage, GenericImage};
    use std::path::Path;

    pub fn single_pixel() {
        let mut img = RgbaImage::new(200, 200);
        img.put_pixel(100, 100, Pixel::from_channels(250, 255, 255, 255));
        img.save("single.png").unwrap();
        println!("Single pixel!");
    }

    pub fn apply_filter(image_path: &str) -> Result<(), ImageError> {
        let original_img = image::open(image_path)?;
        let (width, height) = original_img.dimensions();
        let mut img = RgbaImage::new(width, height);
        img.copy_from(&original_img, 0, 0)?;

        for i in 0..width {
            for j in 0..height {
                let pixel = img.get_pixel_mut(i, j);
                let image::Rgba([red, green, yellow, alpha]) = *pixel;
                // let new_pixel = [red.wrapping_add(20), green.wrapping_sub(10), yellow.wrapping_add(10), alpha];
                // let new_pixel = [red.reverse_bits(), green.reverse_bits(), yellow.reverse_bits(), alpha];
                let new_pixel = [red.saturating_add(40), green.saturating_add(20), yellow.saturating_add(40), alpha];
                *pixel = image::Rgba(new_pixel);
            }
        }
        let extension = Path::new(image_path).extension().unwrap();
        let stem = Path::new(image_path).file_stem().unwrap();
        let new_path = format!(
            "{}_filtered.{}",
            stem.to_str().unwrap(),
            extension.to_str().unwrap()
        );
        img.save(new_path).unwrap();

        Ok(())
    }
}
