# WHILE: for repeating until a condition is met

# Contract: How many more wastewater treatment plants (globally (US) must adopt tertiary treatment as part of their treatment process for oceanic plastic toxicity by WWTP outfall into surrounding oceans to decrease by 20% if there are currently 6,000 US WWTPs utilizing tertiary treatment.

# # of WWTPs in US: 14,748 (2017)
# Current tertiary: 6,000 (made up value)
# current toxicity: 900 kg/AF
# % decrease: 20%
# toxicity goal: 720 kg/AF
# addition of 1 plant using tertiary causes: 0.03% decrease in toxicity

tertiary_plants <- function(tox = 1, tert = 0) {

  # error checking
  tox = ifelse(
    tox > 720,
    return("Plastic toxicity must be less than 720"),
    tox
  )
  
  tert = ifelse(
    tert > 8748,
    return("Number of plants must be less than 8748"),
    tert
  )
  
  # initial 
  toxicity = tox
  tertiary = tert
  
  # while loop
  while((tertiary < 8748) &&(toxicity < 720)) {
    toxicity = 900*(tertiary*0.0003)
    tertiary = tertiary + 1
    toxicity = toxicity + 0.27
    print(tertiary)
    print(toxicity)
  }
  # return the number of plants that must adopt tertiary treatment
  return(tertiary)
}

