targets_census <- c(
  
  tar_target(
    cities_census,
    geo_census(mun_bound_trees, census_da_clean, 'city')
    
  ),
  
  tar_target(
    neighbourhood_census,
    geo_census(neighbourhood_bound_trees, census_da_clean, 'neighbourhood')
  )
  
)