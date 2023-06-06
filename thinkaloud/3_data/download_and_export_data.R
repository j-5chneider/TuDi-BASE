library(formr)
library(tidyverse)

formr_connect(keyring = "juergen")
pretest <- formr_results("base_ld_1b")
posttest <- formr_results("base_ld_2b") 
names(posttest)[names(posttest) == 'texture1'] <- 'texture1_post' # I need to rename a variable
                                                                  # in the posttest because it 
                                                                  # has the same name as a variable
                                                                  # in the pretest

pretest <- pretest |>
  dplyr::filter(!is.na(ended)) |>
  dplyr::select(-c(session, created, modified, ended, expired))

rio::export(pretest, file = "thinkaloud/3_data/pretest_data.Rds")


posttest <- posttest |>
  dplyr::filter(!is.na(ended)) |>
  dplyr::select(-c(session, created, modified, ended, expired))

rio::export(posttest, file = "thinkaloud/3_data/posttest_data.Rds")

pretest_posttest <- full_join(pretest, posttest, by ="calcmycode") # person with code 3212b550961b1f730891ce083e22bfde
                                                                   # has answered the posttest 2 times??
                                                                   # there are two rows for that person in the data set

rio::export(pretest_posttest, file = "thinkaloud/3_data/pretest_posttest_data.Rds")