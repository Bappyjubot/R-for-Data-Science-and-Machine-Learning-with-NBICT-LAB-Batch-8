# Matrix in R
study_hours = c(89, 69, 45, 75, 63, 54, 23, 25, 57, 46)
subject_markes = c(79, 83, 71, 57, 63, 54, 74, 77, 61, 69)

# creating a matrix just using study_hours
stu_hours_mat = matrix(study_hours)
study_hours
stu_hours_mat

# joining two columns in a matrix
student_data = c(study_hours, subject_markes)
student_matrix = matrix(student_data, byrow = FALSE, nrow = 10)
student_matrix

# Naming roes and columns
colnames(student_matrix) = c('Hours', 'Marks')
student_matrix
rownames(student_matrix) = c(1:10)
student_matrix

# Selecting and element from matrix
student_matrix[8, 2]
summary(student_matrix)

# Data frames in R
student_names = c('Mr1', 'Mr2', 'Mr3', 'Mr4', 'Mr5')
study_hours = c(20, 24, 46, 62, 22)
marks = c(40, 55, 69, 54, 45)
Gander = c('Male', 'Female', 'Female', 'Male', 'Female')
Male = c(TRUE, FALSE, FALSE, TRUE, FALSE)

stu_data = data.frame(student_names, study_hours, marks, Male)
summary(stu_data)

mean(stu_data$study_hours)
