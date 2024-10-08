# jpcity 0.3.0

* Change internal representation of `jpcity_city` object to not use `NA`. This allows `tidyr::drop_na()` (`vctrs::vec_detect_complete()`) to work correctly.
* Add `is_city_desig()` to check if a city is a designated city.

# jpcity 0.2.1

* Fix bug for raw data of Kamikuishiki Village that occurred in version 0.2.0.
* Add tests for Kamikuishiki Village and Hamamatsu City.

# jpcity 0.2.0

* Add `city_to_pref()`, `city_data()` and `pref_data()`.
* Delete deprecated function `as_pref()` and deprecated arguments.
* Support for Hamamatsu City ward reorganization (2024-01-01).

# jpcity 0.1.1

* Fix bugs of raw data and add tests.
* Speed up `vec_restore.jpcity_city()`.
* Update raw data.

# jpcity 0.1.0

* Added a `NEWS.md` file to track changes to the package.
