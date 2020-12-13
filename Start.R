subject_name <- c("Jone Doe", "Jane Doe", "Steve Graves")
subject_name
temperature <- c(98.1, 98.6, 101.4)
temperature
flu_status <- c(FALSE, FALSE, TRUE)
flu_status

temperature[2]
temperature[2:3]
temperature[-2]
temperature[c(TRUE, TRUE, FALSE)]

gender <- factor(c("MALE", "FEMALE", "FEMALE"))
gender

blood <- factor(c("O", "AB", "A"),
                levels = c("A", "B", "AB", "O"))
blood

symptoms <- factor(c("SEVERE", "MILD", "MODERATE"),
                   levels = c("MILD", "MODERATE", "SEVERE"),
                   ordered = TRUE)
symptoms

subject_name[1]
temperature[1]
flu_status[1]
gender[1]
blood[1]
symptoms[1]

subject1 <- list(fullname = subject_name[1],
                 temperature = temperature[1],
                 flu_status = flu_status[1],
                 gender = gender[1],
                 blood = blood[1],
                 symptoms = symptoms[1])
subject1

subject1[2]
subject1[[2]]
subject1$temperature
subject1[c("temperature", "flu_status")]

pt_data <- data.frame(subject_name, temperature, flu_status, gender, blood, symptoms, stringsAsFactors = FALSE)
pt_data

pt_data$subject_name
pt_data[c("temperature", "flu_status")]
pt_data[2:3]
pt_data[c(1, 3), c(2, 4)]
pt_data[ , 1]
pt_data[1, ]
pt_data[ , ]
pt_data[c(1, 3), c("temperature", "gender")]
pt_data[-2, c(-1, -3, -5, -6)]

m <- matrix(c(1, 2, 3, 4), nrow = 2)
m
m <- matrix(c(1, 2, 3, 4), ncol = 2)
m
m <- matrix(c(1, 2, 3, 4, 5, 6), nrow = 2)
m
m <- matrix(c(1, 2, 3, 4, 5, 6), ncol = 2)
m
