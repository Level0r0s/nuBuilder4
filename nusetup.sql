# This will only insert if there is no row in setup, as we don't want to overwrite a sites table if data exists
INSERT INTO zzzzsys_setup (zzzzsys_setup_id, set_site_name, set_timeout)
SELECT * FROM (SELECT '1', 'Demo', 3600) AS tmp
WHERE NOT EXISTS (
    SELECT zzzzsys_setup_id FROM zzzzsys_setup WHERE zzzzsys_setup_id = '1'
) LIMIT 1;

REPLACE INTO zzzzsys_form (zzzzsys_form_id, frm_code, frm_title) VALUES ('globeadminhome','GAHOME', 'globeadmin HOME');