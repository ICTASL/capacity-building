@echo off
setlocal enabledelayedexpansion

REM --- Configuration ---
set "baseFolder=professionals/full_stack_development"
set "layout=resource"
set "lang=en"

REM --- File List and Titles ---
set filenames[1]=1-front-end-design-development
set titles[1]=1. Front-end Design and Development
set descriptions[1]=Introduction to Front-end Design and Development

set filenames[2]=1-1-learning-objectives-frontend

set descriptions[2]=Learning Objectives for Front-end Design and Development

set filenames[3]=1-2-beginner-level-frontend
set titles[3]=1.2. Beginner Level
set descriptions[3]=Beginner Level for Front-end Design and Development

set filenames[4]=1-2-1-fundamentals-web-technologies
set titles[4]=1.2.1 Fundamentals of Web Technologies
set descriptions[4]=Fundamentals of Web Technologies for Front-end Development Beginner Level

set filenames[5]=1-2-2-basic-ui-ux-principles
set titles[5]=1.2.2 Basic UI/UX Principles
set descriptions[5]=Basic UI/UX Principles for Front-end Development Beginner Level

set filenames[6]=1-3-intermediate-level-frontend
set titles[6]=1.3. Intermediate Level
set descriptions[6]=Intermediate Level for Front-end Design and Development

set filenames[7]=1-3-1-modern-js-frameworks-libraries
set titles[7]=1.3.1 Modern JavaScript Frameworks and Libraries
set descriptions[7]=Modern JavaScript Frameworks and Libraries for Front-end Development Intermediate Level

set filenames[8]=1-3-2-advanced-css-techniques
set titles[8]=1.3.2 Advanced CSS Techniques
set descriptions[8]=Advanced CSS Techniques for Front-end Development Intermediate Level

set filenames[9]=1-3-3-web-accessibility-performance-frontend
set titles[9]=1.3.3 Web Accessibility & Performance
set descriptions[9]=Web Accessibility & Performance for Front-end Development Intermediate Level

set filenames[10]=1-4-advanced-level-frontend
set titles[10]=1.4. Advanced Level
set descriptions[10]=Advanced Level for Front-end Design and Development

set filenames[11]=1-4-1-advanced-frontend-architectures
set titles[11]=1.4.1 Advanced Front-end Architectures
set descriptions[11]=Advanced Front-end Architectures for Front-end Development Advanced Level

set filenames[12]=1-4-2-performance-profiling-advanced-testing
set titles[12]=1.4.2 Performance Profiling and Advanced Testing
set descriptions[12]=Performance Profiling and Advanced Testing for Front-end Development Advanced Level

set filenames[13]=1-4-3-design-patterns-security-advanced-interactions
set titles[13]=1.4.3 Design Patterns, Security & Advanced Interactions
set descriptions[13]=Design Patterns, Security & Advanced Interactions for Front-end Development Advanced Level

set filenames[14]=2-back-end-design-development
set titles[14]=2. Back-end Design and Development
set descriptions[14]=Introduction to Back-end Design and Development

set filenames[15]=2-1-learning-objectives-backend

set descriptions[15]=Learning Objectives for Back-end Design and Development

set filenames[16]=2-2-beginner-level-backend
set titles[16]=2.2. Beginner Level
set descriptions[16]=Beginner Level for Back-end Design and Development

set filenames[17]=2-2-1-fundamentals-web-servers-apis
set titles[17]=2.2.1. Fundamentals of Web Servers and APIs
set descriptions[17]=Fundamentals of Web Servers and APIs for Back-end Development Beginner Level

set filenames[18]=2-2-2-security-focus-basic-api-auth-safe-coding
set titles[18]=2.2.2. Security Focus: Basic API authentication and safe coding practices
set descriptions[18]=Security Focus: Basic API authentication and safe coding practices for Back-end Development Beginner Level

set filenames[19]=2-2-3-testing-unit-tests-api-endpoints
set titles[19]=2.2.3. Testing: Write unit tests for API endpoints
set descriptions[19]=Testing: Write unit tests for API endpoints for Back-end Development Beginner Level

set filenames[20]=2-2-4-basic-security-logging-monitoring-backend
set titles[20]=2.2.4. Basic Security, Logging & Monitoring
set descriptions[20]=Basic Security, Logging & Monitoring for Back-end Development Beginner Level

set filenames[21]=2-2-5-soft-skill-code-review-documentation-backend
set titles[21]=2.2.5. Soft Skill: Emphasis on code review and documentation
set descriptions[21]=Soft Skill: Emphasis on code review and documentation for Back-end Development Beginner Level

set filenames[22]=2-3-intermediate-level-backend
set titles[22]=2.3. Intermediate Level
set descriptions[22]=Intermediate Level for Back-end Design and Development

set filenames[23]=2-3-1-advanced-api-design-microservices-backend
set titles[23]=2.3.1. Advanced API Design and Microservices
set descriptions[23]=Advanced API Design and Microservices for Back-end Development Intermediate Level

set filenames[24]=2-3-2-testing-integration-end-to-end-backend
set titles[24]=2.3.2. Testing: Incorporate integration and end-to-end tests
set descriptions[24]=Testing: Incorporate integration and end-to-end tests for Back-end Development Intermediate Level

set filenames[25]=2-3-3-security-auth-authorization-backend
set titles[25]=2.3.3. Security, Authentication & Authorization
set descriptions[25]=Security, Authentication & Authorization for Back-end Development Intermediate Level

set filenames[26]=2-3-4-performance-scalability-backend
set titles[26]=2.3.4. Performance and Scalability
set descriptions[26]=Performance and Scalability for Back-end Development Intermediate Level

set filenames[27]=2-4-advanced-level-backend
set titles[27]=2.4. Advanced Level
set descriptions[27]=Advanced Level for Back-end Design and Development

set filenames[28]=2-4-1-distributed-systems-cloud-native-architectures
set titles[28]=2.4.1. Distributed Systems & Cloud Native Architectures
set descriptions[28]=Distributed Systems & Cloud Native Architectures for Back-end Development Advanced Level

set filenames[29]=2-4-2-scalability-resilience-observability-backend
set titles[29]=2.4.2. Scalability, Resilience & Observability
set descriptions[29]=Scalability, Resilience & Observability for Back-end Development Advanced Level

set filenames[30]=2-4-3-devsecops-security-integration-backend
set titles[30]=2.4.3. DevSecOps and Security Integration
set descriptions[30]=DevSecOps and Security Integration for Back-end Development Advanced Level

set filenames[31]=3-database-technologies
set titles[31]=3. Database Technologies
set descriptions[31]=Introduction to Database Technologies

set filenames[32]=3-1-learning-objectives-database

set descriptions[32]=Learning Objectives for Database Technologies

set filenames[33]=3-2-beginner-level-database
set titles[33]=3.2. Beginner Level
set descriptions[33]=Beginner Level for Database Technologies

set filenames[34]=3-2-1-introduction-databases
set titles[34]=3.2.1. Introduction to Databases
set descriptions[34]=Introduction to Databases for Database Technologies Beginner Level

set filenames[35]=3-2-2-data-modeling-normalization
set titles[35]=3.2.2. Data Modeling & Normalization
set descriptions[35]=Data Modeling & Normalization for Database Technologies Beginner Level

set filenames[36]=3-3-intermediate-level-database
set titles[36]=3.3. Intermediate Level
set descriptions[36]=Intermediate Level for Database Technologies

set filenames[37]=3-3-1-advanced-sql-nosql-intro
set titles[37]=3.3.1. Advanced SQL and Introduction to NoSQL
set descriptions[37]=Advanced SQL and Introduction to NoSQL for Database Technologies Intermediate Level

set filenames[38]=3-3-2-orms-data-abstraction
set titles[38]=3.3.2. ORMs and Data Abstraction
set descriptions[38]=ORMs and Data Abstraction for Database Technologies Intermediate Level

set filenames[39]=3-4-advanced-level-database
set titles[39]=3.4. Advanced Level
set descriptions[39]=Advanced Level for Database Technologies

set filenames[40]=3-4-1-database-scalability-performance-tuning
set titles[40]=3.4.1. Database Scalability & Performance Tuning
set descriptions[40]=Database Scalability & Performance Tuning for Database Technologies Advanced Level

set filenames[41]=3-4-2-newsql-bigdata-technologies
set titles[41]=3.4.2. NewSQL and Big Data Technologies
set descriptions[41]=NewSQL and Big Data Technologies for Database Technologies Advanced Level

set filenames[42]=4-devops-and-operations
set titles[42]=4. DevOps and Operations
set descriptions[42]=Introduction to DevOps and Operations

set filenames[43]=4-1-learning-objectives-devops
set descriptions[43]=Learning Objectives for DevOps and Operations

set filenames[44]=4-2-beginner-level-devops
set titles[44]=4.2. Beginner Level
set descriptions[44]=Beginner Level for DevOps and Operations

set filenames[45]=4-2-1-version-control-system-admin
set titles[45]=4.2.1. Version Control & System Administration
set descriptions[45]=Version Control & System Administration for DevOps and Operations Beginner Level

set filenames[46]=4-2-2-introduction-cicd
set titles[46]=4.2.2. Introduction to CI/CD
set descriptions[46]=Introduction to CI/CD for DevOps and Operations Beginner Level

set filenames[47]=4-3-intermediate-level-devops
set titles[47]=4.3. Intermediate Level
set descriptions[47]=Intermediate Level for DevOps and Operations

set filenames[48]=4-3-1-containerization-orchestration
set titles[48]=4.3.1. Containerization and Orchestration
set descriptions[48]=Containerization and Orchestration for DevOps and Operations Intermediate Level

set filenames[49]=4-3-2-infrastructure-as-code-automated-deployments
set titles[49]=4.3.2. Infrastructure as Code & Automated Deployments
set descriptions[49]=Infrastructure as Code & Automated Deployments for DevOps and Operations Intermediate Level

set filenames[50]=4-3-3-collaboration-documentation-team-workflow
set titles[50]=4.3.3. Collaboration: Emphasis on documentation and team workflow practices
set descriptions[50]=Collaboration: Emphasis on documentation and team workflow practices for DevOps and Operations Intermediate Level

set filenames[51]=4-3-4-monitoring-logging-incident-management
set titles[51]=4.3.4. Monitoring, Logging, and Incident Management
set descriptions[51]=Monitoring, Logging, and Incident Management for DevOps and Operations Intermediate Level

set filenames[52]=4-4-advanced-level-devops
set titles[52]=4.4. Advanced Level
set descriptions[52]=Advanced Level for DevOps and Operations

set filenames[53]=4-4-1-advanced-devops-cloud-native-infra
set titles[53]=4.4.1. Advanced DevOps and Cloud Native Infrastructure
set descriptions[53]=Advanced DevOps and Cloud Native Infrastructure for DevOps and Operations Advanced Level

set filenames[54]=4-4-2-security-compliance-sre-practices
set titles[54]=4.4.2. Security, Compliance & SRE Practices
set descriptions[54]=Security, Compliance & SRE Practices for DevOps and Operations Advanced Level

set filenames[55]=4-4-3-automation-continuous-improvement
set titles[55]=4.4.3. Automation and Continuous Improvement
set descriptions[55]=Automation and Continuous Improvement for DevOps and Operations Advanced Level

set filenames[56]=4-4-4-soft-skills-teamwork-communication-problem-solving
set titles[56]=4.4.4. Soft Skills: Enhance teamwork, communication, and problem-solving in high-pressure environments
set descriptions[56]=Soft Skills: Enhance teamwork, communication, and problem-solving in high-pressure environments for DevOps and Operations Advanced Level

set filenames[57]=5-supplemental-components-across-all-layers
set titles[57]=5. Supplemental Components Across All Layers
set descriptions[57]=Introduction to Supplemental Components Across All Layers

set filenames[58]=5-1-capstone-projects-real-world-case-studies
set titles[58]=5.1. Capstone Projects & Real-World Case Studies
set descriptions[58]=Capstone Projects & Real-World Case Studies for Supplemental Components

set filenames[59]=5-2-assessments-smart-learning-objectives
set descriptions[59]=Assessments & SMART Learning Objectives for Supplemental Components

set filenames[60]=5-3-soft-skills-workshops
set titles[60]=5.3. Soft Skills Workshops
set descriptions[60]=Soft Skills Workshops for Supplemental Components

set filenames[61]=5-4-guest-lectures-industry-panels
set titles[61]=5.4. Guest Lectures & Industry Panels
set descriptions[61]=Guest Lectures & Industry Panels for Supplemental Components

set filenames[62]=5-5-digital-library-integration
set titles[62]=5.5. Digital Library Integration
set descriptions[62]=Digital Library Integration for Supplemental Components


REM --- Create Directories if they don't exist ---
if not exist "%baseFolder%" mkdir "%baseFolder%"
if not exist "%baseFolder%" (
    echo Error creating directory "%baseFolder%"
    exit /b 1
) else (
    echo Directory "%baseFolder%" created or already exists.
)

REM --- Loop through filenames and create files ---
for /l %%i in (1,1,62) do (
    set "filename=!filenames[%%i]!"
    set "title=!titles[%%i]!"
    set "description=!descriptions[%%i]!"
    set "filepath=%baseFolder%\!filename!.md"
    set "permalink=/%baseFolder:/=/%/!filename!/"

    echo Creating file: !filepath!
    (
        echo ---
        echo layout: %layout%
        echo title: "!title!"
        echo description: "!description!"
        echo permalink: !permalink!
        echo lang: %lang%
        echo ---
        echo.
        echo # !title!
        echo.
        echo *!description!*
        echo.
        echo &nbsp;
    ) > "!filepath!"

    if exist "!filepath!" (
        echo File "!filepath!" created successfully.
    ) else (
        echo ERROR: File "!filepath!" NOT created. Check permissions or path.
    )
)

echo.
echo Batch file finished. Files created in "%baseFolder%"
pause
endlocal