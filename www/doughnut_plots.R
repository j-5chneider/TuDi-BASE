library(ggplot2)

##### GAMIFICATION ##########################################################################################
# Create test data.
data <- data.frame(
  category=c("Grundschule",    # 1st category
             "Sekundarstufe",    # 2nd category 
             "Hochschule"     # 3rd category
             ),
  count=c(9,        # 1st count
          5,        # 2nd count 
          13         # 3rd count
          )
)

# Compute percentages
data$fraction <- data$count / sum(data$count)

# Compute the cumulative percentages (top of each rectangle)
data$ymax <- cumsum(data$fraction)

# Compute the bottom of each rectangle
data$ymin <- c(0, head(data$ymax, n=-1))

# Compute label position
data$labelPosition <- (data$ymax + data$ymin) / 2

# Compute a good label
data$label <- paste0(data$category, "\n", data$count, " Studien")

# Make the plot
ggplot(data, aes(ymax=ymax, ymin=ymin, xmax=4, xmin=3, fill=category)) +
  geom_rect() +
  geom_label( x=5.2, aes(y=labelPosition, label=label, fontface = "bold"), 
              size=8, 
              # fill = NA, 
              label.size = NA, 
              alpha = .3,
              color = "gray15") +
  scale_fill_brewer(palette=2) +
  coord_polar(theta="y") +
  xlim(c(2, 7)) +
  theme_void() +
  theme(legend.position = "none")

ggsave("www/gam_age_tmp.jpg",
       width = 10,
       height = 10,
       units = "mm",
       scale = 22,
       dpi = 250)

################################################### #


# Create test data.
data <- data.frame(
  category=c("Ostasien",       # 1st category
             "Südamerika",      # 2nd category 
             "Nordamerika",    # 3rd category
             "Westasien",    # 4th category
             "Europa"    # 5th category
  ),
  count=c(15,       # 1st count
          2,        # 2nd count 
          2,        # 3rd count
          5,        # 4rd count
          2         # 5rd count
  )
)

# Compute percentages
data$fraction <- data$count / sum(data$count)

# Compute the cumulative percentages (top of each rectangle)
data$ymax <- cumsum(data$fraction)

# Compute the bottom of each rectangle
data$ymin <- c(0, head(data$ymax, n=-1))

# Compute label position
data$labelPosition <- (data$ymax + data$ymin) / 2

# Compute a good label
data$label <- paste0(data$category, "\n", data$count, " Studien")


# Make the plot
ggplot(data, aes(ymax=ymax, ymin=ymin, xmax=4, xmin=3, fill=category)) +
  geom_rect() +
  geom_label( x=5.2, aes(y=labelPosition, label=label, fontface = "bold"), 
              size=8, 
              # fill = NA, 
              label.size = NA, 
              alpha = .3,
              color = "gray15") +
  scale_fill_brewer(palette=1) +
  coord_polar(theta="y") +
  xlim(c(2, 7)) +
  theme_void() +
  theme(legend.position = "none")


ggsave("www/gam_loc_tmp.jpg",
       width = 10,
       height = 10,
       units = "mm",
       scale = 22,
       dpi = 250)
################################################### #


# Create test data.
data <- data.frame(
  category=c("Informatik",       # 1st category
             "Kunst",      # 2nd category 
             "Sprachen",    # 3rd category
             "MINT",    # 4th category
             "außerschulisch"    # 5th category
  ),
  count=c(9,       # 1st count
          3,        # 2nd count 
          7,        # 3rd count
          5,        # 4rd count
          5         # 5rd count
  )
)

# Compute percentages
data$fraction <- data$count / sum(data$count)

# Compute the cumulative percentages (top of each rectangle)
data$ymax <- cumsum(data$fraction)

# Compute the bottom of each rectangle
data$ymin <- c(0, head(data$ymax, n=-1))

# Compute label position
data$labelPosition <- (data$ymax + data$ymin) / 2

# Compute a good label
data$label <- paste0(data$category, "\n", data$count, " Studien")

# Make the plot
ggplot(data, aes(ymax=ymax, ymin=ymin, xmax=4, xmin=3, fill=category)) +
  geom_rect() +
  geom_label( x=5.2, aes(y=labelPosition, label=label, fontface = "bold"), 
              size=8, 
              # fill = NA, 
              label.size = NA, 
              alpha = .3,
              color = "gray15") +
  scale_fill_brewer(palette=3) +
  coord_polar(theta="y") +
  xlim(c(2, 7)) +
  theme_void() +
  theme(legend.position = "none")

ggsave("www/gam_sub_tmp.jpg",
       width = 10,
       height = 10,
       units = "mm",
       scale = 22,
       dpi = 250)



##### MOBILE INQUIRY-BASED LEARNING ######################################################################################

# Create test data.
data <- data.frame(
  category=c("Sozialwissenschaften",       # 1st category
             "Informatik",      # 2nd category 
             "Sprachen",    # 3rd category
             "außerschulisch",    # 4th category
             "MINT"    # 5th category
  ),
  count=c(6,       # 1st count
          3,        # 2nd count 
          2,        # 3rd count
          5,        # 4rd count
          25         # 5rd count
  )
)

# Compute percentages
data$fraction <- data$count / sum(data$count)

# Compute the cumulative percentages (top of each rectangle)
data$ymax <- cumsum(data$fraction)

# Compute the bottom of each rectangle
data$ymin <- c(0, head(data$ymax, n=-1))

# Compute label position
data$labelPosition <- (data$ymax + data$ymin) / 2

# Compute a good label
data$label <- paste0(data$category, "\n", data$count, " Studien")

# Make the plot
ggplot(data, aes(ymax=ymax, ymin=ymin, xmax=4, xmin=3, fill=category)) +
  geom_rect() +
  geom_label( x=5.2, aes(y=labelPosition, label=label, fontface = "bold"), 
              size=8, 
              # fill = NA, 
              label.size = NA, 
              alpha = .3,
              color = "gray15") +
  scale_fill_brewer(palette=3) +
  coord_polar(theta="y") +
  xlim(c(2, 7)) +
  theme_void() +
  theme(legend.position = "none")

ggsave("www/inq_sub_tmp.jpg",
       width = 10,
       height = 10,
       units = "mm",
       scale = 22,
       dpi = 250)
