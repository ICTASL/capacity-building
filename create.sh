#!/bin/bash

# create.sh
# Script to create the AI Aptitude folder structure and markdown files,
# including 'si' and 'ta' subfolders.

# Exit immediately if a command exits with a non-zero status.
set -e

# Define the base directory
BASE_DIR="./ta/students/ai-aptitude"

# Create the main ai-aptitude directory
mkdir -p "$BASE_DIR"

echo "Created directory: $BASE_DIR"

# Define an array of markdown files with their titles and descriptions
FILES=(
    "introduction-to-ai.md|Introduction to AI|A simple overview of what Artificial Intelligence is and its basic concepts."
    "what-is-chatgpt.md|What is ChatGPT?|An introduction to ChatGPT, its purpose, and basic functionalities."
    "what-is-gemini.md|What is Google Gemini?|An introduction to Google Gemini, its features, and how it differs from other Generative AI tools."
    "bing-copilot.md|What is Bing Copilot?|An introduction to Bing Copilot, its features, and how it enhances productivity."
    "other-generative-ai-tools.md|Other Generative AI Tools|Overview of various Generative AI tools besides ChatGPT, Google Gemini, and Bing Copilot, highlighting their unique features."
    "how-to-use-chatgpt.md|How to Use ChatGPT|Step-by-step guide on interacting with ChatGPT for various tasks."
    "how-to-use-gemini.md|How to Use Google Gemini|Guide on effectively utilizing Google Gemini for various educational and creative tasks."
    "how-to-use-bing-copilot.md|How to Use Bing Copilot|Guide on effectively utilizing Bing Copilot for various productivity and research tasks."
    "introduction-to-prompting.md|Introduction to Prompting|Understand the fundamentals of prompting and why it's essential for interacting with Generative AI models."
    "types-of-prompting.md|Types of Prompting|Explore various prompting techniques to maximize the effectiveness of your interactions with Generative AI."
    "best-practices-prompting.md|Best Practices for Prompting|Comprehensive guide on effective prompting strategies to maximize interactions with Generative AI tools."
    "advanced-prompting-techniques.md|Advanced Prompting Techniques|Explore sophisticated prompting strategies to fully leverage the capabilities of Generative AI tools."
    "ethical-considerations-ai.md|Ethical Considerations in AI|Explore the ethical implications of using AI tools and learn responsible AI interaction practices."
    "ai-use-cases.md|AI Use Cases|Explore various real-world applications of AI and how they benefit different sectors."
    "future-of-ai.md|Future of AI|Insight into upcoming trends and the future impact of AI on society and various industries."
    "gpt-prompting.md|GPT Prompting and Generative AI Tools|Learn about Generative AI tools like ChatGPT, Google Gemini, and Bing Copilot, how to use them, and master the art of prompting from basic to advanced levels."
)

# Function to create a markdown file with front matter and placeholder content
create_markdown_file() {
    local file_path="$1"
    local title="$2"
    local description="$3"

    cat <<EOL > "$file_path"
---
layout: resource
title: "$title"
description: "$description"
permalink: /students/ai-aptitude/$(basename "$file_path" .md)/
---

# $title

## Introduction
$title

## Content Overview
*(Detailed content goes here.)*

## Conclusion
*(Summary and concluding remarks go here.)*

## Resources for Further Learning

1. **Book:** *(Insert relevant book title and author)*
2. **Online Course:** [*(Insert course name)*](#)
3. **Article:** [*(Insert article title)*](#)
4. **Video:** [*(Insert video title)*](#)
5. **Website:** [*(Insert website name)*](#)

## GPT Prompts

1. **Prompt 1:**
   - "$(echo $title | tr '[:upper:]' '[:lower:]')"

2. **Prompt 2:**
   - "$(echo $title | tr '[:upper:]' '[:lower:]')"

3. **Prompt 3:**
   - "$(echo $title | tr '[:upper:]' '[:lower:]')"

4. **Prompt 4:**
   - "$(echo $title | tr '[:upper:]' '[:lower:]')"

5. **Prompt 5:**
   - "$(echo $title | tr '[:upper:]' '[:lower:]')"

## Conclusion
*(Additional concluding content can be added here.)*

## Call to Action
*(Encourage users to explore related sections or take specific actions.)*
EOL

    echo "Created file: $file_path"
}

# Loop through the FILES array and create each markdown file
for entry in "${FILES[@]}"; do
    IFS='|' read -r file_name title description <<< "$entry"
    file_path="$BASE_DIR/$file_name"
    create_markdown_file "$file_path" "$title" "$description"
done

# Create 'si' and 'ta' folders with their own index.md files
for folder in si ta; do
    mkdir -p "$BASE_DIR/$folder"
    echo "Created directory: $BASE_DIR/$folder"

    file_path="$BASE_DIR/$folder/index.md"

    # Define titles and descriptions for 'si' and 'ta'
    if [ "$folder" == "si" ]; then
        folder_title="Supplemental Information"
        folder_description="Additional resources and information to support your AI learning journey."
    elif [ "$folder" == "ta" ]; then
        folder_title="Teaching Assistance"
        folder_description="Guidance and support materials for teachers to facilitate AI education."
    else
        folder_title="Index"
        folder_description="Introduction to the $folder section."
    fi

    cat <<EOL > "$file_path"
---
layout: resource
title: "$folder_title"
description: "$folder_description"
permalink: /students/ai-aptitude/$folder/
---

# $folder_title

## Introduction
Welcome to the **$folder_title** section! Here you will find additional resources and support to enhance your understanding of Artificial Intelligence.

## Content Overview
*(Detailed content goes here.)*

## Conclusion
*(Summary and concluding remarks go here.)*

## Resources for Further Learning

1. **Book:** *(Insert relevant book title and author)*
2. **Online Course:** [*(Insert course name)*](#)
3. **Article:** [*(Insert article title)*](#)
4. **Video:** [*(Insert video title)*](#)
5. **Website:** [*(Insert website name)*](#)

## GPT Prompts

1. **Prompt 1:**
   - "Provide an overview of supplemental resources available for AI learning."

2. **Prompt 2:**
   - "How can teachers utilize AI tools in the classroom?"

3. **Prompt 3:**
   - "List some creative projects students can undertake using AI."

4. **Prompt 4:**
   - "Explain the benefits of using AI for personalized learning."

5. **Prompt 5:**
   - "Describe ways to integrate AI ethics into the curriculum."

## Conclusion
*(Additional concluding content can be added here.)*

## Call to Action
*(Encourage users to explore related sections or take specific actions.)*
EOL

    echo "Created file: $file_path"
done

echo "AI Aptitude folder structure and files have been created successfully."
