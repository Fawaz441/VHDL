TYPE enum IS (idle, fill, heat_w, wash, drain);
SIGNAL dshwshr_st:enum;
drain_led <=1 WHEN dshwshtr_st = drain ELSE '0';