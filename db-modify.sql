ALTER TABLE cached_sletat_tours DROP COLUMN hotel_name RESTRICT;
ALTER TABLE cached_sletat_tours DROP COLUMN town_name RESTRICT;
ALTER TABLE cached_sletat_tours DROP COLUMN star_name RESTRICT;
ALTER TABLE cached_sletat_tours DROP COLUMN meal_name RESTRICT;
--ALTER TABLE cached_sletat_tours DROP COLUMN room_name RESTRICT;
--ALTER TABLE cached_sletat_tours DROP COLUMN htplace_name RESTRICT;
ALTER TABLE cached_sletat_tours DROP COLUMN original_hotel_name RESTRICT;
ALTER TABLE cached_sletat_tours DROP COLUMN original_town_name RESTRICT;
ALTER TABLE cached_sletat_tours DROP COLUMN original_star_name RESTRICT;
ALTER TABLE cached_sletat_tours DROP COLUMN original_meal_name RESTRICT;
ALTER TABLE cached_sletat_tours DROP COLUMN original_room_name RESTRICT;
ALTER TABLE cached_sletat_tours DROP COLUMN original_htplace_name RESTRICT;
ALTER TABLE cached_sletat_tours DROP COLUMN original_country_name RESTRICT;
ALTER TABLE cached_sletat_tours DROP COLUMN original_dptcity_name RESTRICT;
ALTER TABLE cached_sletat_tours DROP COLUMN original_currency_id RESTRICT;
ALTER TABLE cached_sletat_tours DROP COLUMN original_currency_name RESTRICT;

ALTER TABLE cached_sletat_tours ADD COLUMN room_id INTEGER;
ALTER TABLE cached_sletat_tours ADD COLUMN kid1age INTEGER;
ALTER TABLE cached_sletat_tours ADD COLUMN kid2age INTEGER;
ALTER TABLE cached_sletat_tours ADD COLUMN kid3age INTEGER;

ALTER TABLE cached_sletat_tours ALTER COLUMN price_byr TYPE BIGINT;

CREATE TABLE agregate_data_for_cached_sletat_tours (
  agregate_item_id INTEGER,
  agregate_for_type VARCHAR(32),
  price INTEGER,
  price_byr BIGINT,
  price_eur INTEGER,
  price_usd INTEGER
);
