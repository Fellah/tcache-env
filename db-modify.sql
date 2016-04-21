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

CREATE INDEX index_cached_sletat_tours_on_source_id on cached_sletat_tours (source_id);
CREATE INDEX index_cached_sletat_tours_on_room_id  on cached_sletat_tours (room_id);
CREATE INDEX index_cached_sletat_tours_on_hotel_id on cached_sletat_tours (hotel_id);
CREATE INDEX index_cached_sletat_tours_on_dpt_city_id_and_star_id on cached_sletat_tours (dpt_city_id,star_id);
CREATE INDEX index_cached_sletat_tours_on_dpt_city_id_and_meal_id on cached_sletat_tours (dpt_city_id,meal_id);
CREATE INDEX index_cached_sletat_tours_on_dpt_city_id_and_kids on cached_sletat_tours (dpt_city_id,kids);
CREATE INDEX index_cached_sletat_tours_on_dpt_city_id_and_adults on cached_sletat_tours (dpt_city_id,adults);
CREATE INDEX index_cached_sletat_tours_on_country_id  ON cached_sletat_tours (country_id);
CREATE INDEX index_cached_sletat_tours_on_source_id on cached_sletat_tours (town_id);
CREATE UNIQUE INDEX offer_id_and_request_id ON cached_sletat_tours (offer_id, request_id);
CREATE UNIQUE INDEX agregate_type_and_item_id ON agregate_data_for_cached_sletat_tour (agregate_for_type, agregate_item_id);

CREATE TABLE agregate_data_for_cached_sletat_tours (
  id INTEGER PRIMARY KEY,
  agregate_item_id INTEGER,
  agregate_for_type VARCHAR(32),
  price INTEGER,
  price_byr BIGINT,
  price_eur INTEGER,
  price_usd INTEGER
);
