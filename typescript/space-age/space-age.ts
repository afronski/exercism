const YEAR_IN_SECONDS_ON_EARTH = 31_557_600;

const PLANETS = [
  'mercury',
  'venus',
  'earth',
  'mars',
  'jupiter',
  'saturn',
  'uranus',
  'neptune'
] as const;

type Planet = typeof PLANETS[number];

const ORBITAL_PERIODS_IN_SECONDS: Record<Planet, number> = {
  'mercury': 0.2408467 * YEAR_IN_SECONDS_ON_EARTH,
  'venus': 0.61519726 * YEAR_IN_SECONDS_ON_EARTH,
  'earth': YEAR_IN_SECONDS_ON_EARTH,
  'mars': 1.8808158 * YEAR_IN_SECONDS_ON_EARTH,
  'jupiter': 11.862615 * YEAR_IN_SECONDS_ON_EARTH,
  'saturn': 29.447498 * YEAR_IN_SECONDS_ON_EARTH,
  'uranus': 84.016846 * YEAR_IN_SECONDS_ON_EARTH,
  'neptune': 164.79132 * YEAR_IN_SECONDS_ON_EARTH
};

export function age(planet: string, seconds: number): number {
  if (!(planet in ORBITAL_PERIODS_IN_SECONDS)) {
    throw new Error(`Unknown planet: ${planet}`)
  }

  const years_for_planet: number = seconds / ORBITAL_PERIODS_IN_SECONDS[<Planet> planet];

  return Number(years_for_planet.toFixed(2));
};
