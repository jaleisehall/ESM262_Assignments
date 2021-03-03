#Calculating power
#Contract:
#*Input*: vehicle mass in kg (m), vehicle speed in m/s (V)
#*Output*: power in watts (Pb)
#*Parameters*: c_rolling (rolling coefficient), g (acceleration due to gravity), A (surface area of vehicle), p_air (air density), and c_drag (aerodynamic resistive coefficient)
#What will the function do?
#Compute the power required to keep a car moving at a given speed, as a proxy for automobile fuel efficiency, using the following equation - *body* of the function
#$Pb = c_rolling * m * g * V + ½ * A *p_air * c_drag * V^3$
#Pb is power in watts, c_rolling is a rolling coefficient, m is vehicle mass in kg, g is acceleration due to gravity, V is vehicle speed in m/s, A is surface area of vehicle in m^2, p_air is air density, and c_drag is an aerodynamic resistive coefficient. 
#Typical values for:
#c_rolling = 0.015
#c_drag = 0.3
#g = 9.8 m/s^2
#A = 28 m^2 (found online) 
#p_air = 1.2 mg/m^3
#Compute power given:
#m = 31752 kg 
#range of vehicle speeds (30 m/s, 80 km/hr, 120 km/hr, 40 km/hr )
#Unit conversions: km/hr to m/s, 1 km = 1000m, 1 hr = 3600 s, 1 km/hr = 0.277778 m/s

car_fuel_eff = function(m, V, c_rolling = 0.015,  g = 9.8, A = 9, p_air = 1.2, c_drag = 0.3) {
  result =  c_rolling * m * g * V + 0.5 * A *p_air * c_drag * V^3
  return(result) 
}
