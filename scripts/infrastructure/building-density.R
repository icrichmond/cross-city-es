targets_building_density <- c(
  
  tar_target(
    build_dens,
    dens_build(can_build)
  ),
  
  tar_target(
    cities_builddens,
    geo_build_dens(mun_bound_trees, build_dens, 'city')
  ),
  
  tar_target(
    neighbourhood_builddens,
    geo_build_dens(neighbourhood_bound_trees, build_dens, 'neighbourhood')
  ),
  
  tar_target(
    build_dens_road,
    geo_build_dens(road_bound_trees, build_dens, 'road')
  )
)