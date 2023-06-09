full_datasets <- function(grp, ...) {
  
  file_list <- list(...)
  
  class <- lapply(file_list, FUN = function(x){
    c <- tibble(class = class(x))
    if ("sf" %in% c$class == T) (x <- st_set_geometry(x, NULL))
    else (x <- x)
  })
  
  t <- class %>% 
    reduce(inner_join, by= grp, suffix=c(".x",".y")) %>%
    select(-ends_with(".x"),-ends_with(".y"))
  
  return(t)
  
  
}