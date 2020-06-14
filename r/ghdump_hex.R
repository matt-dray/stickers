# Hex sticker: {ghdump}
# Created originally 14 June 2020
# Matt Dray

library(magick)
library(bunny)
library(ggforce)

img <- image_read("img/landfill2.png")

ghdump_hex <- image_canvas_hex(border_color="#000000", border_size = 15) %>% 
  bunny::image_compose(img, gravity = "west", offset = "+120+270") %>% 
  image_annotate(
    "{ghdump}",
    font = "Open Sans Condensed", color = "#000000",
    gravity = "center", location = "+230-400",
    size = 250, degrees = 30
  )
  
image_write(ghdump_hex, here::here("output", "ghdump_hex.png"))
