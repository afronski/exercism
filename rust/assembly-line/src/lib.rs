const BASE_PRODUCTION_RATE: f64 = 221.0;

fn success_rate(speed: u8) -> f64 {
    match speed {
        0..=4 => 1.0,
        5..=8 => 0.9,
        9..=10 => 0.77,
        _ => panic!("Unexpected speed: {}", speed)
    }
}

pub fn production_rate_per_hour(speed: u8) -> f64 {
    let base: f64 = BASE_PRODUCTION_RATE * (speed as f64);

    return base * success_rate(speed);
}

pub fn working_items_per_minute(speed: u8) -> u32 {
    let per_hour: u32 = production_rate_per_hour(speed) as u32;

    return per_hour / 60;
}
