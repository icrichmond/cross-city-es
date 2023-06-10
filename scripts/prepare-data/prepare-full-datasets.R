targets_prepare_datasets <- c(
  
  tar_target(
    city_data, 
    full_datasets(c('city'), 
                  cities_lst, cities_pollution, 
                  cities_builddens, cities_roadclass, cities_ndvi_ndbi, cities_bldhgt, 
                  cities_treerichness, cities_treesize, cities_treedensity, 
                  cities_census)
  ),
  
  tar_target(
    neighbourhood_data,
    full_datasets(c('city', 'hood'),
                  neighbourhood_lst, neighbourhood_pollution, 
                  neighbourhood_builddens, neighbourhood_roadclass, neighbourhood_ndvi_ndbi, neighbourhood_bldhgt,
                  neighbourhood_treerichness, neighbourhood_treesize, neighbourhood_treedensity, 
                  neighbourhood_census)
  )
  
#  tar_target(
#    road_data,
#    full_datasets()
#  )
#  
)