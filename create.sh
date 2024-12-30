#!/bin/bash

# Script to create folder structure and Markdown files for Digital Literacy Skills

# Base directory
BASE_DIR="./ta/students/digital_literacy"

# Create main directory
mkdir -p "$BASE_DIR"

# Function to create index.md for a given directory
create_index() {
  local dir="$1"
  local title="$2"
  local description="$3"
  local permalink="$4"
  local content="$5"

  cat <<EOF > "$dir/index.md"
---
layout: resource
title: "$title"
description: "$description"
permalink: "$permalink"
lang: "ta"
---

# $title

$content
EOF
}

# Function to create a sub-section Markdown file
create_subsection() {
  local file="$1"
  local title="$2"
  local description="$3"
  local permalink="$4"
  local outline="$5"

  cat <<EOF > "$file"
---
layout: resource
title: "$title"
description: "$description"
permalink: "$permalink"
lang: "ta"
---

# $title

$outline
EOF
}

# Create the main Digital Literacy Skills index.md
create_index "$BASE_DIR" "Digital Literacy Skills" "Comprehensive digital literacy resources tailored for various student levels to build essential digital competencies." "/students/digital-literacy/" '
Welcome to the Digital Literacy section. Explore the tailored resources below for each student level to enhance your digital skills.

## Student Levels

### Primary Students

- [Basic Computer Skills](/students/digital-literacy/primary/basic-computer-skills/)
- [Internet Safety](/students/digital-literacy/primary/internet-safety/)
- [Digital Citizenship](/students/digital-literacy/primary/digital-citizenship/)

### Secondary Students

- [Intermediate Computer Skills](/students/digital-literacy/secondary/intermediate-computer-skills/)
- [Cybersecurity Basics](/students/digital-literacy/secondary/cybersecurity-basics/)
- [Digital Projects](/students/digital-literacy/secondary/digital-projects/)

### O/L Students

- [Advanced Computer Skills](/students/digital-literacy/o_l/advanced-computer-skills/)
- [Internet Safety and Privacy](/students/digital-literacy/o_l/internet-safety-and-privacy/)
- [Career Exploration](/students/digital-literacy/o_l/career-exploration/)

### A/L Students

- [Advanced Digital Skills](/students/digital-literacy/a_l/advanced-digital-skills/)
- [Digital Portfolio Development](/students/digital-literacy/a_l/digital-portfolio-development/)
- [Career Pathways](/students/digital-literacy/a_l/career-pathways/)

### Undergraduate Students

- [Specialized Digital Skills](/students/digital-literacy/undergraduate/specialized-digital-skills/)
- [Project-Based Learning](/students/digital-literacy/undergraduate/project-based-learning/)
- [Internship Preparation](/students/digital-literacy/undergraduate/internship-preparation/)

### Vocational Program Students

- [Technical Skills](/students/digital-literacy/vocational/technical-skills/)
- [Industry Certifications](/students/digital-literacy/vocational/industry-certifications/)
- [Practical Applications](/students/digital-literacy/vocational/practical-applications/)
'

# Define student levels and their sub-sections using arrays
STUDENT_LEVELS=("primary" "secondary" "o_l" "a_l" "undergraduate" "vocational")
STUDENT_TITLES=("Primary Students" "Secondary Students" "O/L Students" "A/L Students" "Undergraduate Students" "Vocational Program Students")
STUDENT_DESCRIPTIONS=(
  "Digital literacy resources designed for primary students to build foundational computer and online skills."
  "Enhance your digital proficiency with resources tailored for secondary students, covering intermediate computer skills and cybersecurity."
  "Advanced digital literacy resources for O/L students, focusing on computer skills, privacy, and career exploration."
  "Comprehensive digital resources for A/L students to develop advanced skills and explore career pathways."
  "Specialized digital literacy resources for undergraduate students, including project-based learning and internship preparation."
  "Practical digital literacy resources for vocational program students, focusing on technical skills and industry certifications."
)

PRIMARY_SUB=("Basic Computer Skills" "Internet Safety" "Digital Citizenship")
SECONDARY_SUB=("Intermediate Computer Skills" "Cybersecurity Basics" "Digital Projects")
O_L_SUB=("Advanced Computer Skills" "Internet Safety and Privacy" "Career Exploration")
A_L_SUB=("Advanced Digital Skills" "Digital Portfolio Development" "Career Pathways")
UNDERGRAD_SUB=("Specialized Digital Skills" "Project-Based Learning" "Internship Preparation")
VOCATIONAL_SUB=("Technical Skills" "Industry Certifications" "Practical Applications")

# Function to trim whitespace
trim() {
  local var="$*"
  # remove leading whitespace characters
  var="${var#"${var%%[![:space:]]*}"}"
  # remove trailing whitespace characters
  var="${var%"${var##*[![:space:]]}"}"
  echo -n "$var"
}

# Loop through each student level
for i in "${!STUDENT_LEVELS[@]}"; do
  level="${STUDENT_LEVELS[$i]}"
  title="${STUDENT_TITLES[$i]}"
  description="${STUDENT_DESCRIPTIONS[$i]}"

  # Create subfolder
  mkdir -p "$BASE_DIR/$level"

  # Determine sub-sections based on the current student level
  case "$level" in
    "primary")
      SUB_SECTIONS=("${PRIMARY_SUB[@]}")
      ;;
    "secondary")
      SUB_SECTIONS=("${SECONDARY_SUB[@]}")
      ;;
    "o_l")
      SUB_SECTIONS=("${O_L_SUB[@]}")
      ;;
    "a_l")
      SUB_SECTIONS=("${A_L_SUB[@]}")
      ;;
    "undergraduate")
      SUB_SECTIONS=("${UNDERGRAD_SUB[@]}")
      ;;
    "vocational")
      SUB_SECTIONS=("${VOCATIONAL_SUB[@]}")
      ;;
    *)
      echo "Unknown student level: $level"
      continue
      ;;
  esac

  # Prepare the content for the index.md
  sub_content=""
  for sub in "${SUB_SECTIONS[@]}"; do
    sub_trimmed=$(trim "$sub")
    sub_slug=$(echo "$sub_trimmed" | tr '[:upper:]' '[:lower:]' | sed 's/ /-/g')
    sub_content+="- [$sub_trimmed](/students/digital-literacy/$level/${sub_slug}/)\n"
  done

  create_index "$BASE_DIR/$level" "$title - Digital Literacy" "$description" "/students/digital-literacy/$level/" "$sub_content"

  # Loop through each sub-section to create individual Markdown files
  for sub in "${SUB_SECTIONS[@]}"; do
    # Trim whitespace
    sub_trimmed=$(trim "$sub")

    # Create slug for file naming and permalinks
    sub_slug=$(echo "$sub_trimmed" | tr '[:upper:]' '[:lower:]' | sed 's/ /-/g')

    # Define file path
    file_path="$BASE_DIR/$level/${sub_slug}.md"

    # Define descriptions and outlines based on level and sub-section
    case "$level" in
      "primary")
        case "$sub_trimmed" in
          "Basic Computer Skills")
            sub_description="Introduction to computers, basic typing, and using educational software for primary students."
            outline="Develop foundational computer skills essential for primary students, including:

- **Introduction to Computers:** Learn about different parts of a computer and their functions.
- **Basic Typing:** Practice typing skills to improve speed and accuracy.
- **Educational Software:** Explore and utilize educational software tools for enhanced learning experiences."
            ;;
          "Internet Safety")
            sub_description="Understanding online safety practices and recognizing safe websites to ensure a secure online experience."
            outline="Learn the importance of staying safe online with primary-level Internet Safety resources:

- **Online Safety Practices:** Basic guidelines to protect personal information.
- **Recognizing Safe Websites:** How to identify and use secure websites for learning."
            ;;
          "Digital Citizenship")
            sub_description="Basic concepts of being responsible and respectful online, including etiquette and ethical behavior."
            outline="Understand the fundamentals of Digital Citizenship for primary students:

- **Responsible Online Behavior:** Being respectful and kind online.
- **Ethical Conduct:** Understanding right and wrong in digital interactions."
            ;;
        esac
        ;;
      "secondary")
        case "$sub_trimmed" in
          "Intermediate Computer Skills")
            sub_description="Enhancing computer proficiency with word processing, spreadsheets, and presentation tools for secondary students."
            outline="Enhance your computer skills with these intermediate resources:

- **Word Processing:** Create, edit, and format documents using word processing software.
- **Spreadsheets:** Learn to organize data, perform calculations, and create charts.
- **Presentations:** Design and deliver effective presentations using presentation tools."
            ;;
          "Cybersecurity Basics")
            sub_description="Introduction to cybersecurity principles and recognizing potential online threats."
            outline="Gain a foundational understanding of Cybersecurity Basics:

- **Cybersecurity Principles:** Learn the key concepts of protecting digital information.
- **Recognizing Threats:** Identify common online threats and how to mitigate them."
            ;;
          "Digital Projects")
            sub_description="Engaging in simple coding exercises and multimedia projects to apply digital skills creatively."
            outline="Apply your digital skills through engaging projects:

- **Simple Coding Exercises:** Introduction to basic programming concepts.
- **Multimedia Projects:** Create and manage multimedia content for enhanced learning."
            ;;
        esac
        ;;
      "o_l")
        case "$sub_trimmed" in
          "Advanced Computer Skills")
            sub_description="Intermediate programming, data management, and enhancing technical proficiency."
            outline="Develop advanced computer skills with these resources:

- **Intermediate Programming:** Learn coding languages and programming concepts.
- **Data Management:** Understand how to manage and analyze data effectively."
            ;;
          "Internet Safety and Privacy")
            sub_description="Detailed understanding of privacy settings, data protection, and safeguarding personal information online."
            outline="Deepen your knowledge of Internet Safety and Privacy:

- **Privacy Settings:** Configure and manage your online privacy settings.
- **Data Protection:** Learn strategies to protect personal and sensitive information."
            ;;
          "Career Exploration")
            sub_description="Resources on digital careers, required skills, and pathways to enter various technology fields."
            outline="Explore digital career opportunities and pathways:

- **Digital Careers:** Overview of various careers in the digital field.
- **Skill Requirements:** Identify the skills needed for different digital professions."
            ;;
        esac
        ;;
      "a_l")
        case "$sub_trimmed" in
          "Advanced Digital Skills")
            sub_description="Advanced programming techniques, AI fundamentals, and data analysis for specialized knowledge."
            outline="Master advanced digital skills with these resources:

- **Advanced Programming Techniques:** Dive deeper into coding and software development.
- **AI Fundamentals:** Introduction to artificial intelligence concepts.
- **Data Analysis:** Learn how to analyze and interpret complex data sets."
            ;;
          "Digital Portfolio Development")
            sub_description="Creating and showcasing digital portfolios to highlight projects and skills to potential employers or educational institutions."
            outline="Build and showcase your digital portfolio:

- **Creating Portfolios:** Steps to create a comprehensive digital portfolio.
- **Showcasing Projects:** Highlight your best projects and skills effectively."
            ;;
          "Career Pathways")
            sub_description="In-depth resources on digital career paths, higher education options, and professional growth opportunities."
            outline="Explore in-depth digital career pathways:

- **Career Paths:** Detailed information on various digital career options.
- **Higher Education:** Guidance on pursuing higher education in digital fields."
            ;;
        esac
        ;;
      "undergraduate")
        case "$sub_trimmed" in
          "Specialized Digital Skills")
            sub_description="Mastery of coding languages, AI and machine learning, and data science for specialized applications."
            outline="Acquire specialized digital skills essential for your career:

- **Coding Languages:** Advanced knowledge of multiple programming languages.
- **AI and Machine Learning:** In-depth understanding of artificial intelligence and machine learning.
- **Data Science:** Techniques for data analysis and interpretation."
            ;;
          "Project-Based Learning")
            sub_description="Engaging in capstone projects and research initiatives to apply theoretical knowledge in practical scenarios."
            outline="Engage in project-based learning to apply your knowledge:

- **Capstone Projects:** Develop comprehensive projects that integrate your skills.
- **Research Initiatives:** Participate in research projects to explore new ideas."
            ;;
          "Internship Preparation")
            sub_description="Building resumes, mastering interview techniques, and exploring internship opportunities to gain industry experience."
            outline="Prepare for internships with these resources:

- **Resume Building:** Create effective resumes tailored for digital roles.
- **Interview Techniques:** Learn strategies to excel in interviews.
- **Internship Opportunities:** Explore and apply for relevant internships."
            ;;
        esac
        ;;
      "vocational")
        case "$sub_trimmed" in
          "Technical Skills")
            sub_description="Specific IT skills such as network administration, graphic design, and other technical proficiencies relevant to vocational training."
            outline="Develop specific technical skills for your vocational training:

- **Network Administration:** Learn how to manage and maintain computer networks.
- **Graphic Design:** Master graphic design tools and techniques."
            ;;
          "Industry Certifications")
            sub_description="Resources and preparation materials for obtaining industry-recognized certification exams."
            outline="Prepare for industry certifications with these resources:

- **Certification Guides:** Comprehensive guides for various IT certifications.
- **Exam Preparation:** Tips and materials to excel in certification exams."
            ;;
          "Practical Applications")
            sub_description="Hands-on tutorials and real-world scenarios to apply technical skills effectively in professional environments."
            outline="Apply your technical skills through practical applications:

- **Hands-On Tutorials:** Step-by-step tutorials to practice your skills.
- **Real-World Scenarios:** Simulate professional environments to test your knowledge."
            ;;
        esac
        ;;
    esac

    # Define permalinks based on level and sub-section
    permalink="/students/digital-literacy/$level/${sub_slug}/"

    # Create the sub-section Markdown file
    create_subsection "$file_path" "$sub_trimmed" "$sub_description" "$permalink" "$outline"
  done
done

echo "Folder structure and Markdown files for Digital Literacy Skills have been created successfully."
