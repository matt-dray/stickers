# Hex sticker: {tamRgo}
# Matt Dray,  2022

# Learn how to use {magick} and {bunny} for making hex stickeres
# https://www.ddrive.no/post/making-hex-and-twittercard-with-bunny-and-magick/

# Attach packages 
# Note that {ggforce} should be installed
library(magick) # CRAN v2.3
library(bunny)  # [github::dmi3kno/bunny] v0.0.0.9000

# Font installed locally via https://fonts.google.com/specimen/Press+Start+2P
my_font <- "Press Start 2P"

img <- image_read("img/evolve.png") |> 
  image_resize("1500x")

# Set colours
main_col <- "#161616"
red_col  <- "#fbc15b"
blue_col <- "#fbc15b"

# Build sticker
tamRgo_hex <-
  image_canvas_hex(
    border_color = blue_col,
    border_size = 5, 
    fill_color = "#161616"
  ) |>
  image_compose(
    img, 
    gravity = "center",
    offset = "+0-150"
  ) |> 
  image_annotate(
    text = "{tamRgo}",
    font = my_font,
    size = 120,
    color = red_col,
    gravity = "center",
    location = "+0+350",
    degrees = 0
  )

# Write the image to disk
image_write(tamRgo_hex, "output/tamRgo_hex.png")
