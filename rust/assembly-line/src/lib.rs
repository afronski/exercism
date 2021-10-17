const BASE_PRODUCTION_RATE: u32 = 221;

const SLOW: std::ops::RangeInclusive<u8> = 1..=4;
const FASTER: std::ops::RangeInclusive<u8> = 5..=8;
const FASTEST: std::ops::RangeInclusive<u8> = 9..=10;

fn success_rate(speed: u8) -> f64 {
    if SLOW.contains(&speed) {
        return 1.0;
    } else if FASTER.contains(&speed) {
        return 0.9;
    } else if FASTEST.contains(&speed) {
        return 0.77;
    } else {
        return 0.0;
    }
}

pub fn production_rate_per_hour(speed: u8) -> f64 {
    let base: f64 = (BASE_PRODUCTION_RATE * speed as u32) as f64;

    return base * success_rate(speed);
}

pub fn working_items_per_minute(speed: u8) -> u32 {
    let per_hour = production_rate_per_hour(speed);

    return (per_hour / 60.0).floor() as u32;
}
