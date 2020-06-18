use pres_primary_data /*The .dta file can be found in the Git Hub repository */

*Table 2 Logit Regressions*****************
*Model 1 (The second regressions have errors clustered by state)
logit PD citi_1 density state_power_dem de_ind de_mor de_trad same_date gdp_percap uni_dem  Incumbent_R South_ext favsonD Tashijan Incumbent_D swing party_regist counter2 _spline1 i.Year if Year > 1968 & NBD!=1, robust
logit PD citi_1 density state_power_dem de_ind de_mor de_trad same_date gdp_percap uni_dem  Incumbent_R South_ext favsonD Tashijan Incumbent_D swing party_regist counter2 _spline1 i.Year if Year > 1968 & NBD!=1, robust cluster(state)

*Model 2
logit PD citi_1 nominate_dim1 density state_power_dem de_ind de_mor de_trad same_date gdp_percap uni_dem  Incumbent_R South_ext favsonD Tashijan Incumbent_D swing party_regist counter2 _spline1 i.Year if Year > 1968 & NBD!=1, robust
logit PD citi_1 nominate_dim1 density state_power_dem de_ind de_mor de_trad same_date gdp_percap uni_dem  Incumbent_R South_ext favsonD Tashijan Incumbent_D swing party_regist counter2 _spline1 i.Year if Year > 1968 & NBD!=1, robust cluster(state)

*Model 3
logit PD zdiff_1 density state_power_dem de_ind de_mor de_trad same_date gdp_percap uni_dem Incumbent_R South_ext favsonD Tashijan Incumbent_D swing party_regist counter2 _spline1 i.Year if Year > 1968 & NBD!=1, robust
logit PD zdiff_1 density state_power_dem de_ind de_mor de_trad same_date gdp_percap uni_dem Incumbent_R South_ext favsonD Tashijan Incumbent_D swing party_regist counter2 _spline1 i.Year if Year > 1968 & NBD!=1, robust cluster(state)
******************************

*Table 3 Multinomial Logit Regressions*************
mlogit primaryDem zdiff_1 density state_power_dem de_ind de_mor de_trad same_date gdp_percap uni_dem  Incumbent_R South_ext favsonD Tashijan Incumbent_D swing party_regist counter2 _spline1 i.Year if Year > 1968 & NBD!=1, robust cluster(state)
mlogit primaryDem zdiff_1 density state_power_dem de_ind de_mor de_trad same_date gdp_percap uni_dem  Incumbent_R South_ext favsonD Tashijan Incumbent_D swing party_regist counter2 _spline1 i.Year if Year > 1968 & NBD!=1, robust 
*************************************************

*Table 4 Multinomial Logit Regressions Changing the base category****
*Base Category (Sem-Closed0
mlogit primaryDem zdiff_1 density state_power_dem de_ind de_mor de_trad same_date gdp_percap uni_dem  Incumbent_R South_ext favsonD Tashijan Incumbent_D swing party_regist counter2 _spline1 i.Year if Year > 1968 & NBD!=1, b(4) robust cluster(state) 
mlogit primaryDem zdiff_1 density state_power_dem de_ind de_mor de_trad same_date gdp_percap uni_dem  Incumbent_R South_ext favsonD Tashijan Incumbent_D swing party_regist counter2 _spline1 i.Year if Year > 1968 & NBD!=1, b(4) robust

*Base Category (Open)
mlogit primaryDem zdiff_1 density state_power_dem de_ind de_mor de_trad same_date gdp_percap uni_dem  Incumbent_R South_ext favsonD Tashijan Incumbent_D swing party_regist counter2 _spline1 i.Year if Year > 1968 & NBD!=1, b(5) robust cluster(state) 
mlogit primaryDem zdiff_1 density state_power_dem de_ind de_mor de_trad same_date gdp_percap uni_dem  Incumbent_R South_ext favsonD Tashijan Incumbent_D swing party_regist counter2 _spline1 i.Year if Year > 1968 & NBD!=1, b(5) robust
*****************************************************************
