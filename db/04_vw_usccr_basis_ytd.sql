-- View: vw_usccr_basis_ytd

-- DROP VIEW vw_usccr_basis_ytd;

CREATE OR REPLACE VIEW vw_usccr_basis_ytd AS 
 SELECT usccr_complaints_basis.state_abbr, usccr_complaints_basis.year, sum(usccr_complaints_basis.total) AS ytd, sum(usccr_complaints_basis.a) AS ytd_a, sum(usccr_complaints_basis."as") AS ytd_as, sum(usccr_complaints_basis.cas) AS ytd_cas, sum(usccr_complaints_basis.d) AS ytd_d, sum(usccr_complaints_basis.i) AS ytd_i, sum(usccr_complaints_basis.o) AS ytd_o, sum(usccr_complaints_basis.no) AS ytd_no, sum(usccr_complaints_basis.noh) AS ytd_noh, sum(usccr_complaints_basis.ra) AS ytd_ra, sum(usccr_complaints_basis.rb) AS ytd_rb, sum(usccr_complaints_basis.rna) AS ytd_rna, sum(usccr_complaints_basis.ro) AS ytd_ro, sum(usccr_complaints_basis.rel) AS ytd_rel, sum(usccr_complaints_basis.rep) AS ytd_rep, sum(usccr_complaints_basis.s) AS ytd_s, sum(usccr_complaints_basis.sh) AS ytd_sh, sum(usccr_complaints_basis.unk) AS ytd_unk
   FROM usccr_complaints_basis
  GROUP BY usccr_complaints_basis.state_abbr, usccr_complaints_basis.year;

ALTER TABLE vw_usccr_basis_ytd
  OWNER TO postgres;

