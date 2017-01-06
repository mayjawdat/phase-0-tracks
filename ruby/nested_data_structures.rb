# Unicorn State College Fall Semester Course Catalog
# Departments: strings
# Classes: array of strings
# Professors: array of strings
# Student Info: hash of integers



USC_Fall_2016 = {
  horn_management: {
    department: "Horn Management" ,
    classes: [
      "Intro to Protrusions",
      "Advanced Horn Upkeep",
      "Politics of Pointiness"
    ],
    professors:[
      "Dr. Lollipop",
      "Dr. Candy Cane"
    ],
    student_info: {
      majors: 12,
      minors: 3
    }
  },

  glitter_studies: {
    department: "Glitter Studies",
    classes: [
      "Shiny vs. Sparkley",
      "Festive Uses of Glitter Post-WWII",
    ],
    professors: [
      "Dr. Bubblegum",
      "Dr. Jelly Bean"
    ],
    student_info: {
      majors: 4,
      minors: 5
    }
  },

  history_of_rainbows: {
    department: "History of Rainbows",
    classes: [
      "Primary Colors 101",
      "Roy G. Biv, American Icon",
      "Controversies in History of Rainbows - Pink",
      "Invitation to Crayon Theory"
    ],
    professors: [
      "Dr. Kittens",
      "Dr. Licorice",
      "Dr. Cotton Candy"
    ],
    student_info: {
      majors: 14,
      minors: 6
    }  
  },

  friendship_science: {
    department: "Friendship Science",
    classes: [
      "Gender and Friendship - Sleepovers 201",
      "Understanding Grumpiness",
      "Turning That Frown Upside Down"
    ],
    professors: [
      "Dr. Fluffy Clouds",
      "Dr. Overwhelming Exuberance",
      "Dr. Snuggles"
    ],
    student_info: {
      majors: 8,
      minors: 3
    }
  }
}


# Sample Nested Data
puts USC_Fall_2016[:friendship_science][:classes][2]
puts USC_Fall_2016[:history_of_rainbows][:professors]
puts USC_Fall_2016[:glitter_studies][:department]
puts USC_Fall_2016[:horn_management][:classes].reverse
