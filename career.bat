@REM run using command ".\career.bat"


@echo off
setlocal enabledelayedexpansion

REM --- Configuration ---
set "baseFolder=students/career_guidance/career_paths"
set "layout=article"
set "lang=en"

REM --- File List and Titles ---
set filenames[1]=1-Introduction
set titles[1]=1. Introduction
set descriptions[1]=Introduction to Career Paths in the Software Industry

set filenames[2]=2-Foundational_Skills
set titles[2]=2. Foundational Skills
set descriptions[2]=Foundational Skills for a Career in the Software Industry

set filenames[3]=3-Deep_Dive_into_Software_Industry_Roles
set titles[3]=3. Deep Dive into Software Industry Roles
set descriptions[3]=Deep Dive into Various Software Industry Roles

set filenames[4]=4-Full_Stack_Developer
set titles[4]=4. Full Stack Developer
set descriptions[4]=Career Path for a Full Stack Developer

set filenames[5]=5-Data_Scientist
set titles[5]=5. Data Scientist
set descriptions[5]=Career Path for a Data Scientist

set filenames[6]=6-DevOps_Engineer
set titles[6]=6. DevOps Engineer
set descriptions[6]=Career Path for a DevOps Engineer

set filenames[7]=7-Computer_Network_Architect
set titles[7]=7. Computer Network Architect
set descriptions[7]=Career Path for a Computer Network Architect

set filenames[8]=8-Cloud_Engineer
set titles[8]=8. Cloud Engineer
set descriptions[8]=Career Path for a Cloud Engineer

set filenames[9]=9-Video_Game_Developer
set titles[9]=9. Video Game Developer
set descriptions[9]=Career Path for a Video Game Developer

set filenames[10]=10-Quality_Assurance_Engineer
set titles[10]=10. Quality Assurance Engineer
set descriptions[10]=Career Path for a Quality Assurance Engineer

set filenames[11]=11-Software_Engineer
set titles[11]=11. Software Engineer
set descriptions[11]=Career Path for a Software Engineer

set filenames[12]=12-Mobile_Developer
set titles[12]=12. Mobile Developer
set descriptions[12]=Career Path for a Mobile Developer

set filenames[13]=13-Systems_Engineer
set titles[13]=13. Systems Engineer
set descriptions[13]=Career Path for a Systems Engineer

set filenames[14]=14-Machine_Learning_Engineer
set titles[14]=14. Machine Learning Engineer
set descriptions[14]=Career Path for a Machine Learning Engineer

set filenames[15]=15-Web_Developer
set titles[15]=15. Web Developer
set descriptions[15]=Career Path for a Web Developer

set filenames[16]=16-Engineering_Manager
set titles[16]=16. Engineering Manager
set descriptions[16]=Career Path for an Engineering Manager

set filenames[17]=17-IT_Security_Specialist
set titles[17]=17. IT Security Specialist
set descriptions[17]=Career Path for an IT Security Specialist

set filenames[18]=18-Product_Manager
set titles[18]=18. Product Manager
set descriptions[18]=Career Path for a Product Manager

set filenames[19]=19-Software_Tester
set titles[19]=19. Software Tester
set descriptions[19]=Career Path for a Software Tester

set filenames[20]=20-Business_Analyst
set titles[20]=20. Business Analyst
set descriptions[20]=Career Path for a Business Analyst (mentioning Systems Analyst aspect)

set filenames[21]=21-Backend_Developer
set titles[21]=21. Backend Developer
set descriptions[21]=Career Path for a Backend Developer

REM Corrected index from 23 to 22
set filenames[22]=22-Business_Intelligence_Developer
set titles[22]=22. Business Intelligence Developer
set descriptions[22]=Career Path for a Business Intelligence Developer

set filenames[23]=23-Cybersecurity_Engineer
set titles[23]=23. Cybersecurity Engineer
set descriptions[23]=Career Path for a Cybersecurity Engineer

set filenames[24]=24-Data_Engineer
set titles[24]=24. Data Engineer
set descriptions[24]=Career Path for a Data Engineer

set filenames[25]=25-Database_Administrator
set titles[25]=25. Database Administrator
set descriptions[25]=Career Path for a Database Administrator

set filenames[26]=26-Project_Manager
set titles[26]=26. Project Manager
set descriptions[26]=Career Path for a Project Manager

set filenames[27]=27-SecOps_Engineer
set titles[27]=27. SecOps Engineer
set descriptions[27]=Career Path for a SecOps Engineer

set filenames[28]=28-Technical_Writer
set titles[28]=28. Technical Writer
set descriptions[28]=Career Path for a Technical Writer

set filenames[29]=29-Technical_Sales
set titles[29]=29. Technical Sales
set descriptions[29]=Career Path for a Technical Sales role

set filenames[30]=30-Technical_Marketing
set titles[30]=30. Technical Marketing
set descriptions[30]=Career Path for a Technical Marketing role

set filenames[31]=31-Support_Engineer_Customer_Success_Engineer
set titles[31]=31. Support Engineer / Customer Success Engineer
set descriptions[31]=Career Path for a Support Engineer / Customer Success Engineer

set filenames[32]=32-Leadership_and_Management_Paths_in_Software
set titles[32]=32. Leadership and Management Paths in Software
set descriptions[32]=Leadership and Management Paths in the Software Industry

set filenames[33]=33-Intersections_and_Common_Career_Transitions
set titles[33]=33. Intersections and Common Career Transitions
set descriptions[33]=Intersections and Common Career Transitions in Software Careers

set filenames[34]=34-Resources_for_Further_Exploration
set titles[34]=34. Resources for Further Exploration
set descriptions[34]=Resources for Further Exploration for Software Career Paths

set filenames[35]=35-Conclusion
set titles[35]=35. Conclusion
set descriptions[35]=Conclusion about Career Paths in the Software Industry


REM --- Create Directories if they don't exist ---
if not exist "%baseFolder%" mkdir "%baseFolder%"
if not exist "%baseFolder%" (
    echo Error creating directory "%baseFolder%"
    exit /b 1
) else (
    echo Directory "%baseFolder%" created or already exists.
)

REM --- Loop through filenames and create files ---
for /l %%i in (1,1,35) do (
    set "filename=!filenames[%%i]!"
    set "title=!titles[%%i]!"
    set "description=!descriptions[%%i]!"
    set "filepath=%baseFolder%\!filename!.md"
    set "permalink=/%baseFolder:/=/%/!filename!/"

    echo Creating file: !filepath!
    (
        echo ---
        echo layout: !layout!
        echo title: "!title!"
        echo description: "!description!"
        echo permalink: !permalink!
        echo lang: !lang!
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