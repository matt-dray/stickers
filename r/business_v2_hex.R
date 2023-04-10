# Hex sticker: business v2
# Matt Dray, 2020-12-22

# See https://www.ddrive.no/post/making-hex-and-twittercard-with-bunny-and-magick/
# Font installed from https://fontlibrary.org/en/font/fantasque-sans-mono

# Attach packages 
# Note that {ggforce} should be installed
library(magick)
library(bunny)  # remotes::install_github("dmi3kno/bunny")

# Read in image as magick-image class
img <- image_read("img/matt.png") %>% 
  image_resize("1000x") %>% 
  image_transparent(color = "#FFFFFF", fuzz = 20)

# Set variables
loc_x <- 400
loc_y <- 600
deg_up <- 30
deg_down <- 330
f_col <- "#000000"
f_size <- 100
f_font <- "Fantasque Sans Mono"
f_grav <- "center"

# Create hex
business_hex <- image_canvas_hex(  # generate basic hex
  border_color = "#000000",
  border_size = 3,
  fill_color = "#8C8C8C"   # grey
) %>% 
  image_compose(img, gravity = f_grav, offset = "+0-50") %>%
  image_annotate(  # add text
    text = "matt-dray.com",  
    location = "+0+570",
    font = f_font,
    size = f_size,
    color = f_col,
    gravity = f_grav
  )
  # image_annotate(  # add text
  #   text = "matt-dray.com",  
  #   location = paste0("-", loc_x, "+", loc_y), degrees = deg_up,
  #   font = f_font,
  #   size = f_size, color = f_col, gravity = f_grav
  # ) %>%
  # image_annotate(  # add text
  #   text = "rostrum.blog", 
  #   location = paste0("+", loc_x, "+", loc_y), degrees = deg_down,
  #   font = f_font, size = f_size, color = f_col, gravity = f_grav
  # ) %>% 
  # image_annotate(  # add text
  #   text = emo::ji_glue(":bird: mattdray"), 
  #   location = paste0("-", loc_x, "-", loc_y), degrees = deg_down,
  #   font = f_font, size = f_size, color = f_col, gravity = f_grav
  # ) %>% 
  # image_annotate(  # add text
  #   text = "matt-dray", 
  #   location = paste0("+", loc_x, "-", loc_y), degrees = deg_up,
  #   font = f_font, size = f_size, color = f_col, gravity = f_grav
  # )

# Write the image to disk
image_write(business_hex, here::here("output", "business_v2_hex.png"))
