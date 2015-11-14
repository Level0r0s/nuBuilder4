# This will only insert if there is no row in setup, as we don't want to overwrite a sites table if data exists
INSERT INTO zzzzsys_setup (zzzzsys_setup_id, set_site_name)
SELECT * FROM (SELECT '1', 'Demo') AS tmp
WHERE NOT EXISTS (
    SELECT zzzzsys_setup_id FROM zzzzsys_setup WHERE zzzzsys_setup_id = '1'
) LIMIT 1;
REPLACE INTO zzzzsays_debug (zzzzsys_debug_id, dbg_message, dbg_added) VALUES ('1','test',NOW());
REPLACE INTO zzzzsys_error (zzzzsys_error_id, err_message, err_added) VALUES ('2','tests',NOW());