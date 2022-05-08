# Hex sticker: {r.oguelike}
# Matt Dray May 2022

# See https://www.ddrive.no/post/making-hex-and-twittercard-with-bunny-and-magick/

# Attach packages 
# Note that {ggforce} should be installed
library(magick)
library(bunny)  # remotes::install_github("dmi3kno/bunny")

# Create hex
r.oguelike_hex <-
  image_canvas_hex(  # generate basic hex
    border_color = "#00FF00",
    border_size = 3,
    fill_color = "#000000"
  ) %>% 
  image_annotate(  # add text
    text = paste0(
      "###....$.#\n",
      "##..@...##\n",
      "#......###\n",
      "r.oguelike"
    ),
    font = "Victor Mono",  # https://rubjo.github.io/victor-mono/
    color = "#00FF00",
    gravity = "center",  
    size = 200
  )

# Write the image to disk
image_write(r.oguelike_hex, here::here("output", "r.oguelike_hex.png"))
