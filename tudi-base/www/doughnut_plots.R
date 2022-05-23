library(ggplot2)
######################################################################################################### #
##### GAMIFICATION ########################################################################################
######################################################################################################### #
#----- AGE -----------------------------------------------------------------------------------------------#
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
  theme(legend.position = "none",
        panel.grid = element_blank())

ggsave("www/gam_age_tmp.png",
       width = 10,
       height = 10,
       units = "mm",
       scale = 22,
       dpi = 250)


#----- LOCATION ------------------------------------------------------------------------------------------#
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
  theme(legend.position = "none",
        panel.grid = element_blank())


ggsave("www/gam_loc_tmp.png",
       width = 10,
       height = 10,
       units = "mm",
       scale = 22,
       dpi = 250)


#----- SUBJECT -------------------------------------------------------------------------------------------#
# Create test data.
data <- data.frame(
  category=c("Informatik",       # 1st category
             "Kunst",      # 2nd category 
             "Sprachen",    # 3rd category
             "Math./Nat.",    # 4th category
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
  theme(legend.position = "none",
        panel.grid = element_blank())

ggsave("www/gam_sub_tmp.png",
       width = 10,
       height = 10,
       units = "mm",
       scale = 22,
       dpi = 250)


######################################################################################################### #
##### MOBILE INQUIRY-BASED LEARNING #######################################################################
######################################################################################################### #
#----- SUBJECT -------------------------------------------------------------------------------------------#
# Create test data.
data <- data.frame(
  category=c("Sozialwissenschaften",       # 1st category
             "Informatik",      # 2nd category 
             "Sprachen",    # 3rd category
             "außerschulisch",    # 4th category
             "Math./Nat."    # 5th category
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
  theme(legend.position = "none",
        panel.grid = element_blank())

ggsave("www/inq_sub_tmp.png",
       width = 10,
       height = 10,
       units = "mm",
       scale = 22,
       dpi = 250)

######################################################################################################### #
##### ITS #################################################################################################
######################################################################################################### #
#----- AGE -----------------------------------------------------------------------------------------------#
# Create test data.
data <- data.frame(
  category=c("Grundschule",    # 1st category
             "Sekundarstufe",    # 2nd category 
             "Hochschule"     # 3rd category
  ),
  count=c(19,        # 1st count
          24,        # 2nd count 
          60         # 3rd count
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
  theme(legend.position = "none",
        panel.grid = element_blank())

ggsave("www/its_age_tmp.png",
       width = 10,
       height = 10,
       units = "mm",
       scale = 22,
       dpi = 250)

#----- LOCATION ------------------------------------------------------------------------------------------#
# Create test data.
data <- data.frame(
  category=c("Nordamerika",       # 1st category
             "Asien",
             "Europa",      # 2nd category 
             "Australien"
             ),
  count=c(75,       # 1st count
          6,
          18,        # 2nd count 
          8
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
  theme(legend.position = "none",
        panel.grid = element_blank())


ggsave("www/its_loc_tmp.png",
       width = 10,
       height = 10,
       units = "mm",
       scale = 22,
       dpi = 250)


#----- SUBJECT -------------------------------------------------------------------------------------------#
# Create test data.
data <- data.frame(
  category=c("Mathematik",       # 1st category
             "Chemie",
             "Physik",      # 2nd category 
             "Biologie",
             "Informatik",    # 3rd category
             "Sprachen",    # 4th category
             "Gemeinschaftskunde"
  ),
  count=c(35,       # 1st count
          2,
          24,        # 2nd count 
          3,
          19,        # 3rd count
          14,        # 4rd count
          8
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
  theme(legend.position = "none",
        panel.grid = element_blank())

ggsave("www/its_sub_tmp.png",
       width = 10,
       height = 10,
       units = "mm",
       scale = 22,
       dpi = 250)





######################################################################################################### #
##### Digital Trace Data  #################################################################################
######################################################################################################### #
#----- FOCUS ----------------------------------------------------------------------------------------------#
# Create test data.
data <- data.frame(
  category=c("Big Data",    # 1st category
             "Educational\ndata mining",
             "Learning Analytics",
             "Datafizierung/\nGovernance",
             "Recht"
  ),
  count=c(19,
          4,
          37,
          21,
          8
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
  scale_fill_brewer(palette=7) +
  coord_polar(theta="y") +
  xlim(c(2, 7)) +
  theme_void() +
  theme(legend.position = "none",
        panel.grid = element_blank())

ggsave("www/tra_foc_tmp.png",
       width = 10,
       height = 10,
       units = "mm",
       scale = 22,
       dpi = 250)


#----- INSTITUTION -----------------------------------------------------------------------------------------------#
# Create test data.
data <- data.frame(
  category=c("Hochschule",    # 1st category
             "Schule",    # 2nd category 
             "Unternehmen",     # 3rd category
             "keine Angabe"
  ),
  count=c(41,        # 1st count
          17,        # 2nd count 
          14,         # 3rd count
          14
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
  theme(legend.position = "none",
        panel.grid = element_blank())

ggsave("www/tra_ein_tmp.png",
       width = 10,
       height = 10,
       units = "mm",
       scale = 22,
       dpi = 250)


#----- LOCATION ------------------------------------------------------------------------------------------#
# Create test data.
data <- data.frame(
  category=c("Nordamerika",
             "Naher Osten",
             "Europa",
             "Südliche\nHemisphäre" 
  ),
  count=c(26,
          3,
          41,       # 1st count
          24
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
  theme(legend.position = "none",
        panel.grid = element_blank())


ggsave("www/tra_loc_tmp.png",
       width = 10,
       height = 10,
       units = "mm",
       scale = 22,
       dpi = 250)

#----- TYPE OF STUDY --------------------------------------------------------------------------------------#
# Create test data.
data <- data.frame(
  category=c("empirisch",
             "Review",
             "theoretisch/\nkonzeptuell",
             "handlungs-\nbezogen"

  ),
  count=c(14,
          1,
          53,
          11
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
  theme(legend.position = "none",
        panel.grid = element_blank())

ggsave("www/tra_stu_tmp.png",
       width = 10,
       height = 10,
       units = "mm",
       scale = 22,
       dpi = 250)



######################################################################################################### #
##### AR  #################################################################################################
######################################################################################################### #
#----- AGE -----------------------------------------------------------------------------------------------#
# Create test data.
data <- data.frame(
  category=c("Grundschule",    # 1st category
             "Sekundarstufe",    # 2nd category 
             "Hochschule"     # 3rd category
  ),
  count=c(19,        # 1st count
          24,        # 2nd count 
          60         # 3rd count
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
  theme(legend.position = "none",
        panel.grid = element_blank())

ggsave("www/its_age_tmp.png",
       width = 10,
       height = 10,
       units = "mm",
       scale = 22,
       dpi = 250)

#----- LOCATION ------------------------------------------------------------------------------------------#
# Create test data.
data <- data.frame(
  category=c("Nordamerika",       # 1st category
             "Asien",
             "Europa",      # 2nd category 
             "Australien"
  ),
  count=c(75,       # 1st count
          6,
          18,        # 2nd count 
          8
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
  theme(legend.position = "none",
        panel.grid = element_blank())


ggsave("www/its_loc_tmp.png",
       width = 10,
       height = 10,
       units = "mm",
       scale = 22,
       dpi = 250)


#----- SUBJECT -------------------------------------------------------------------------------------------#
# Create test data.
data <- data.frame(
  category=c("Mathematik",       # 1st category
             "Chemie",
             "Physik",      # 2nd category 
             "Biologie",
             "Informatik",    # 3rd category
             "Sprachen",    # 4th category
             "Gemeinschaftskunde"
  ),
  count=c(35,       # 1st count
          2,
          24,        # 2nd count 
          3,
          19,        # 3rd count
          14,        # 4rd count
          8
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
  theme(legend.position = "none",
        panel.grid = element_blank())

ggsave("www/its_sub_tmp.png",
       width = 10,
       height = 10,
       units = "mm",
       scale = 22,
       dpi = 250)



######################################################################################################### #
##### MEDIENKOMPETENZ  ####################################################################################
######################################################################################################### #

#----- LOCATION ------------------------------------------------------------------------------------------#
# Create test data.
data <- data.frame(
  category=c("andere Länder",
             "USA"
  ),
  count=c(8,
          43
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
  theme(legend.position = "none",
        panel.grid = element_blank())


ggsave("tudi-base/www/kom_loc.png",
       width = 10,
       height = 10,
       units = "mm",
       scale = 22,
       dpi = 250)


#----- SUBJECT -------------------------------------------------------------------------------------------#
# Create test data.
data <- data.frame(
  category=c("Werbung",       # 1st category
             "Alkohol, \nTabak & Drogen",
             "Körperwahrnehmung & Ernährung",      # 2nd category 
             "Generelle \nMedienkompetenz",
             "Sexualität & Soziales",    # 3rd category
             "Gewalt"
  ),
  count=c(8,       # 1st count
          10,
          16,        # 2nd count 
          4,
          4,        # 3rd count
          9
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
  geom_label( x=5.8, aes(y=labelPosition, label=label, fontface = "bold"), 
              size=8, 
              # fill = NA, 
              label.size = NA, 
              alpha = .3,
              color = "gray15") +
  scale_fill_brewer(palette=3) +
  coord_polar(theta="y") +
  xlim(c(2, 7)) +
  theme_void() +
  theme(legend.position = "none",
        panel.grid = element_blank())

ggsave("tudi-base/www/kom_sub.png",
       width = 10,
       height = 10,
       units = "mm",
       scale = 22,
       dpi = 250)



######################################################################################################### #
##### social Media & risky behavior  ######################################################################
######################################################################################################### #
#----- SEX ------------------------------------------------------------------------------------------#
# Create test data.
data <- data.frame(
  category=c("weiblich",
             "männlich"
  ),
  count=c(52,
          48
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
data$label <- paste0(data$category, "\n", data$count, " %")


# Make the plot
ggplot(data, aes(ymax=ymax, ymin=ymin, xmax=4, xmin=3, fill=category)) +
  geom_rect() +
  geom_label( x=5.2, aes(y=labelPosition, label=label, fontface = "bold"), 
              size=8, 
              # fill = NA, 
              label.size = NA, 
              alpha = .3,
              color = "gray15") +
  scale_fill_brewer(palette=7) +
  coord_polar(theta="y") +
  xlim(c(2, 7)) +
  theme_void() +
  theme(legend.position = "none",
        panel.grid = element_blank())


ggsave("tudi-base/www/soc_sex.png",
       width = 10,
       height = 10,
       units = "mm",
       scale = 22,
       dpi = 250)

#----- AGE ------------------------------------------------------------------------------------------#
# Create test data.
data <- data.frame(
  category=c("",
             ""
  ),
  count=c(8,
          43
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
  theme(legend.position = "none",
        panel.grid = element_blank())


ggsave("tudi-base/www/soc_age.png",
       width = 10,
       height = 10,
       units = "mm",
       scale = 22,
       dpi = 250)

#----- LOCATION ------------------------------------------------------------------------------------------#
# Create test data.
data <- data.frame(
  category=c("Europa",
             "Australien",
             "Afrika",
             "Nordamerika",
             "China"
             
  ),
  count=c(8,
          1,
          2,
          15,
          1
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
  geom_label(x=5.8, aes(y=labelPosition, label=label, fontface = "bold"), 
             size=8, 
             # fill = NA, 
             label.size = NA, 
             alpha = .3,
             color = "gray15") +
  scale_fill_brewer(palette=1) +
  coord_polar(theta="y") +
  xlim(c(2, 7)) +
  theme_void() +
  theme(legend.position = "none",
        panel.grid = element_blank())


ggsave("tudi-base/www/soc_loc.png",
       width = 10,
       height = 10,
       units = "mm",
       scale = 22,
       dpi = 250)


#----- SUBJECT -------------------------------------------------------------------------------------------#
# Create test data.
data <- data.frame(
  category=c("Werbung",       # 1st category
             "Alkohol, \nTabak & Drogen",
             "Körperwahrnehmung & Ernährung",      # 2nd category 
             "Generelle \nMedienkompetenz",
             "Sexualität & Soziales",    # 3rd category
             "Gewalt"
  ),
  count=c(8,       # 1st count
          10,
          16,        # 2nd count 
          4,
          4,        # 3rd count
          9
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
  geom_label( x=5.8, aes(y=labelPosition, label=label, fontface = "bold"), 
              size=8, 
              # fill = NA, 
              label.size = NA, 
              alpha = .3,
              color = "gray15") +
  scale_fill_brewer(palette=3) +
  coord_polar(theta="y") +
  xlim(c(2, 7)) +
  theme_void() +
  theme(legend.position = "none",
        panel.grid = element_blank())

ggsave("tudi-base/www/soc_sub.png",
       width = 10,
       height = 10,
       units = "mm",
       scale = 22,
       dpi = 250)