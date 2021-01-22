CLIMATE CRISIS - AI HACKATON
January 22-24, 2021

THE DRIFT  - a kaggle style challenge
Estimate the velocity of drifting sea ice to help us better understand the dynamical response of the Arctic Ocean to a changing climate.

Proposed by Charles Brunette & Bruno Tremblay, McGill University

%%%%%%%%%%%%%%%%%%%%%%%%
%DESCRIPTION OF THE DATA
%%%%%%%%%%%%%%%%%%%%%%%%

DRIFT_DATA.csv :

year: year
month: month
day: day
doy: day of year (1 to 365)
x_EASE: x cartesian coordinate on the EASE-grid
y_EASE: y cartesian coordinate on the EASE-grid
u_buoy: u component of the sea ice buoy velocity (in the EASE-grid x direction) [cm/s]
v_buoy: v component of the sea ice buoy velocity (in the EASE-grid y direction) [cm/s]
id_buoy:	 numerical buoy identifier
u_ERA5: u component of the ERA5 10-m wind speed (in the EASE-grid x direction) [m/s]
v_ERA5: v component of the ERA5 10-m wind speed (in the EASE-grid y direction) [m/s]
sic_CDR: sea ice concentration from the Climate Data Record [%, on a scale from 0-1]
h_cs2smos: sea ice thickness, from cryostat-2/smos satellite observations [m]
h_piomas: sea ice thickness, from the PIOMAS ice-ocean reanalysis
d2c: distance to coast [km]

*u_buoy, v_buoy, u_ERA5, v_ERA5, sic_CDR, h_cs2smos and h_piomas represent daily-averaged values.

latitude_EASE.csv & longitude_EASE.csv

361x361 grids containing EASE-grid latitude and longitude values



