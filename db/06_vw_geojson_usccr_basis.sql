-- View: vw_geojson_usccr_basis

-- DROP VIEW vw_geojson_usccr_basis;

CREATE OR REPLACE VIEW vw_geojson_usccr_basis AS 
 SELECT states_gen.geom, usccr_complaints_basis.state, usccr_complaints_basis.state_abbr, usccr_complaints_basis.total, usccr_complaints_basis.a, usccr_complaints_basis."as", usccr_complaints_basis.cas, usccr_complaints_basis.d, usccr_complaints_basis.i, usccr_complaints_basis.o, usccr_complaints_basis.no, usccr_complaints_basis.noh, usccr_complaints_basis.ra, usccr_complaints_basis.rb, usccr_complaints_basis.rna, usccr_complaints_basis.ro, usccr_complaints_basis.rel, usccr_complaints_basis.rep, usccr_complaints_basis.s, usccr_complaints_basis.sh, usccr_complaints_basis.unk, usccr_complaints_basis.month, usccr_complaints_basis.year, usccr_complaints_basis.id, vw_usccr_basis_ytd.ytd, vw_usccr_basis_ytd.ytd_a, vw_usccr_basis_ytd.ytd_as, vw_usccr_basis_ytd.ytd_cas, vw_usccr_basis_ytd.ytd_d, vw_usccr_basis_ytd.ytd_i, vw_usccr_basis_ytd.ytd_o, vw_usccr_basis_ytd.ytd_no, vw_usccr_basis_ytd.ytd_noh, vw_usccr_basis_ytd.ytd_ra, vw_usccr_basis_ytd.ytd_rb, vw_usccr_basis_ytd.ytd_rna, vw_usccr_basis_ytd.ytd_ro, vw_usccr_basis_ytd.ytd_rel, vw_usccr_basis_ytd.ytd_rep, vw_usccr_basis_ytd.ytd_s, vw_usccr_basis_ytd.ytd_sh, vw_usccr_basis_ytd.ytd_unk
   FROM states_gen, usccr_complaints_basis, vw_usccr_basis_ytd
  WHERE states_gen.state_abbr::text = usccr_complaints_basis.state_abbr::text AND usccr_complaints_basis.state_abbr::text = vw_usccr_basis_ytd.state_abbr::text AND usccr_complaints_basis.year = vw_usccr_basis_ytd.year;

ALTER TABLE vw_geojson_usccr_basis
  OWNER TO postgres;

