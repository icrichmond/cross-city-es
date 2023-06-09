targets_prepare_datasets <- c(
  
  tar_target(
    city_data, 
    full_datasets()
  ),
  
  tar_target(
    neighbourhood_data,
    full_datasets()
  ),
  
  tar_target(
    road_data,
    full_datasets()
  )
  
)