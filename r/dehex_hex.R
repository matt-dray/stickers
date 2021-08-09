# Hex sticker: {dehex} package
# Aug 2021
# Matt Dray

# See https://www.ddrive.no/post/making-hex-and-twittercard-with-bunny-and-magick/
# Font installed via https://google-webfonts-helper.herokuapp.com/fonts

# Attach packages 
# Note that {ggforce} should be installed
library(magick)
library(bunny)  # remotes::install_github("dmi3kno/bunny")

library(tibble)
library(ggplot2)

plot <- tibble(rgb = c("R", "G", "B"), value = c(10, 8, 12)) %>% 
  ggplot() +
  geom_col(aes(rgb, value), fill = c("red", "green", "blue")) +
  coord_flip() +
  theme_void()

file <- file.path(tempdir(), "colour-bars.png")
ggsave(file)  # Saving 15.4 x 9.49 in image

plot_mgk <- image_read(file) %>% 
  image_transparent("white", 10) %>% 
  image_scale("1500") %>% 
  image_rotate(60)

# Create hex

dehex_hex <- 
  image_canvas_hex(  # generate basic hex
    border_size = 0,
    fill_color = "white"
  ) %>% 
  image_compose(
    plot_mgk,
    gravity = "center",
    offset = "+0+0",
  ) %>% 
  image_annotate(  # add text
    text = "dehex",
    font = "Anonymous Pro for Powerline",
    color = "#000000",
    gravity = "southeast",  
    location = "+110+550",
    size = 200,
    degrees = 330
  )

# Write the image to disk
image_write(dehex_hex, "output/dehex_hex.png")
       
