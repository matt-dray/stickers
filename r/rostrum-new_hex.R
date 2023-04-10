# Hex sticker: rostrum.blog (new)
# Matt Dray, April 2023

# Learn how to use {magick} and {bunny} for making hex stickeres
# https://www.ddrive.no/post/making-hex-and-twittercard-with-bunny-and-magick/

# Attach packages 
# Note that {ggforce} should be installed
library(magick) # CRAN v2.3
library(bunny)  # [github::dmi3kno/bunny] v0.0.0.9000

# Resize and rotate
# image_read("img/rostrum-new-black.png") |>
#   image_resize(1200) |>
#   image_rotate(330) |>
#   image_write("img/rostrum-new-black-rotated.png")  # manually make bg transparent

# Pre-prepared image
img <- image_read("img/rostrum-new-black-rotated.png")

# Build sticker
rostrum_new_hex <- 
  image_canvas_hex(fill_color = "green", border_size = 0) |>
  image_compose(img, gravity = "center")

# Write the image to disk
image_write(rostrum_new_hex, "output/rostrum-new_hex.png")
