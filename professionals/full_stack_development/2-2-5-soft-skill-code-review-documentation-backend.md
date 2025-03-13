---
layout: resource
title: "2.2.5. Soft Skill: Emphasis on code review and documentation"
description: "Soft Skill: Emphasis on code review and documentation for Back-end Development Beginner Level"
permalink: /professionals/full_stack_development/2-2-5-soft-skill-code-review-documentation-backend/
lang: en
---

* TOC
{:toc}


### 2.2.5. Soft Skill: Emphasis on Code Review and Documentation:

#### 2.2.5.1. Emphasis on Code Review and Documentation

While technical skills are paramount in back-end development, **soft skills** like effective **code review** and **documentation** are equally critical for building high-quality, maintainable, and collaborative software.  Think of these as the "lubricant" that makes your technical skills work smoothly in a team environment and over the long term.

*   **Why Code Review and Documentation are Essential Soft Skills:**

    *   **Code Review: Improving Code Quality and Knowledge Sharing:** **Code review** is the systematic process of having other developers review your code *before* it's merged into the main codebase. Code review is not about finding fault or criticizing; it's a collaborative practice with numerous benefits:

        *   **Bug Detection (Early Bug Catching):** Fresh eyes often catch bugs, logic errors, security vulnerabilities, and performance issues that the original author might have missed. Code review is a very effective way to catch defects early in the development process – when they are cheaper and easier to fix.
        *   **Improved Code Quality and Consistency:** Code reviews help ensure that code adheres to coding standards, style guides, and best practices. They promote code consistency across the codebase, making it easier to read and maintain.
        *   **Knowledge Sharing and Learning:** Code reviews are excellent opportunities for knowledge transfer within a team. Reviewers learn about different parts of the codebase, new techniques, and alternative approaches.  The original author also learns from the feedback and suggestions of reviewers.
        *   **Team Collaboration and Shared Ownership:** Code review fosters a culture of collaboration and shared code ownership. When multiple developers review and approve code, the team as a whole feels more responsible for the quality and maintainability of the codebase.
        *   **Reduced Technical Debt:** By catching and fixing issues early through code review, you prevent the accumulation of technical debt (shortcuts or poor code quality that can slow down development and increase maintenance costs in the future).
        *   **Mentoring and Skill Development:** Code reviews can be a valuable mentoring tool, especially for junior developers. Senior developers can provide guidance and feedback to help junior developers improve their coding skills and learn best practices.

    *   **Documentation: Enabling Maintainability, Onboarding, and API Usability:** **Documentation** is the creation of written or other illustrative material that describes how software works, how to use it, or how it's designed. In back-end development, good documentation is essential for:

        *   **Maintainability:**  Codebases evolve over time.  Developers (including your future self!) need documentation to understand the purpose, design, and functionality of different parts of the system, making it easier to maintain, debug, and extend the code in the future.  Without documentation, understanding legacy code can become extremely difficult and time-consuming.
        *   **Onboarding New Team Members:** When new developers join a team, good documentation is crucial for helping them quickly understand the codebase, APIs, and system architecture, enabling them to become productive members of the team faster.
        *   **API Usability and Discoverability:** For back-end APIs, clear and comprehensive documentation is *essential* for external developers (front-end developers, third-party developers) to understand how to use your APIs effectively. Good API documentation should describe endpoints, request/response formats, authentication methods, error codes, and provide usage examples. Well-documented APIs are easier to adopt and integrate with.
        *   **Communication and Collaboration:** Documentation serves as a communication tool within development teams and between teams (e.g., between back-end and front-end teams). It helps ensure everyone is on the same page and reduces misunderstandings about system design and functionality.
        *   **Knowledge Preservation:**  Developers may leave projects or teams. Documentation ensures that critical knowledge about the system is preserved and doesn't get lost when individuals move on.

*   **Principles of Effective Code Reviews:** To make code reviews valuable and positive, follow these principles:

    *   **Focus on Code Quality, Not Personal Criticism:**  Code review is about improving the *code*, not judging the *author*. Frame feedback constructively and focus on technical aspects, not personal style or preferences (unless style guides are specifically defined by the team).
    *   **Be Specific and Actionable:**  Provide concrete and specific feedback. Instead of saying "This code is bad," say "In this function, the error handling is not robust. Consider adding logging and returning a more specific error response."
    *   **Explain the "Why":** When you suggest a change, explain *why* you are suggesting it.  Explain the benefit of the change, the potential issue it addresses, or the best practice it follows. Understanding the "why" helps the author learn and improves the effectiveness of the review.
    *   **Be Timely and Respectful of Time:**  Conduct code reviews promptly.  Don't let code reviews become bottlenecks.  Also, be respectful of the reviewer's time by submitting code that is reasonably well-structured and tested.
    *   **Keep Reviews Focused and Manageable:**  Don't review huge amounts of code in one go. Break down large changes into smaller, more manageable chunks for review. Smaller reviews are more effective and less overwhelming for reviewers.
    *   **Automate Code Style Checks (Linters and Formatters):** Use linters and code formatters to automatically enforce code style and catch basic style issues. This automates many style-related checks and allows code reviews to focus on more important logic and design issues.
    *   **Be Open to Feedback and Discussion (For Both Reviewer and Author):**  Reviewers should be open to discussion and willing to explain their feedback. Authors should be receptive to feedback and see code review as a learning opportunity.  Code review should be a dialogue, not just a one-way critique.
    *   **Positive Reinforcement and Appreciation:**  Don't just focus on finding problems.  Also, acknowledge good code, clever solutions, and well-written sections. Positive feedback encourages good practices and creates a more positive review environment.

*   **Importance of Clear and Concise Documentation:** Good documentation is characterized by:

    *   **Clarity and Accuracy:** Documentation should be written in clear, concise, and unambiguous language. It should be technically accurate and up-to-date with the current state of the system.
    *   **Completeness (Appropriate Level of Detail):**  Documentation should be sufficiently complete to cover the necessary information for its intended audience. The level of detail will vary depending on the type of documentation (API docs vs. internal technical docs). API documentation needs to be comprehensive for external users, while internal technical documentation can be more concise for team members who already have some context.
    *   **Target Audience Awareness:**  Write documentation with a specific target audience in mind.  API documentation is for developers using your API. Internal technical documentation is for developers maintaining the back-end system. User documentation is for end-users. Tailor the language, level of detail, and examples to the needs of the intended audience.
    *   **Organization and Structure:**  Organize documentation logically and use headings, subheadings, lists, and code examples to improve readability and navigation.  Well-structured documentation is easier to use and find information in.
    *   **Code Comments (for Internal Documentation):**  Write clear and concise comments in your code to explain complex logic, non-obvious design decisions, or important sections of code. Comments are primarily for internal developers who will work with the code directly.
    *   **README Files (Project Overview and Setup):** Every project should have a well-written README file at the root of the repository. The README should provide a high-level overview of the project, its purpose, how to set it up (installation instructions, dependencies, environment variables), how to run it, and basic usage instructions.
    *   **API Documentation Generators (e.g., Swagger/OpenAPI for REST APIs):** For REST APIs, use API documentation generators like Swagger/OpenAPI to automatically generate interactive and comprehensive API documentation from your API code (annotations or configuration files). These tools create documentation that is always synchronized with your API code and is interactive, allowing users to explore endpoints and even try out API requests directly from the documentation.

*   **Learning Methods for Code Review and Documentation Skills:**

    *   **Code Review Exercises:** Participate in code review exercises in pairs or small groups. Review each other's API code (from the hands-on exercises you've done). Focus on providing constructive feedback based on the principles discussed.
    *   **Documentation Writing Workshops:** Attend workshops focused on writing different types of documentation (API documentation, README files, technical documentation). Practice writing documentation for your API projects.
    *   **Peer Feedback on Code and Documentation:** Give and receive peer feedback on both code and documentation.  Critique each other's code reviews and documentation to improve your skills in both areas.
    *   **Discussions and Role-Playing:** Engage in discussions about the benefits of code review and documentation. Role-play code review scenarios to practice giving and receiving feedback effectively.
    *   **Real-World Examples and Case Studies:** Analyze examples of good and bad code reviews and documentation from real-world projects to learn best practices and common pitfalls.

    By focusing on code review and documentation, you'll not only improve the quality of your code and APIs but also develop crucial collaboration and communication skills that are essential for success in any software development team. These soft skills, combined with your growing technical back-end skills, will set you up for a successful journey in back-end architecture.


    ### GPT Prompts for Practice:

    1. **Prompt for Code Review:**
        - "Review the following code snippet for potential bugs, adherence to coding standards, and opportunities for optimization. Provide constructive feedback and suggest improvements."

    2. **Prompt for Documentation:**
        - "Write comprehensive API documentation for the following endpoints, including request/response formats, authentication methods, and usage examples."

    3. **Prompt for Code Quality:**
        - "Analyze the given codebase for maintainability and readability. Identify areas that could benefit from refactoring and explain why."

    4. **Prompt for Knowledge Sharing:**
        - "Create a knowledge-sharing document that explains a complex feature or module in the codebase. Ensure it is understandable for new team members."

    5. **Prompt for Technical Debt:**
        - "Evaluate the provided code for technical debt. Identify shortcuts or poor code quality that could slow down future development and suggest ways to address them."

    6. **Prompt for Mentoring:**
        - "As a senior developer, review a junior developer's code and provide mentoring feedback. Highlight good practices and areas for improvement."

    ### Future Reading Links:

- [Code Review Best Practices - GitHub Blog](https://github.blog/2019-10-10-code-review-best-practices/)
- [A Guide to Code Review - Google Engineering Practices](https://google.github.io/eng-practices/review/)
- [Code Review Etiquette: Dos and Don’ts](https://smartbear.com/blog/code-review-best-practices/)
- [Effective Code Reviews for Better Code Quality](https://www.perforce.com/blog/qac/code-review-process)
- [Introduction to Code Review - Atlassian](https://www.atlassian.com/engineering/code-review)
- [The Beginner's Guide to Writing Documentation - GitHub Guides](https://github.com/matiassingers/awesome-readme)
- [Write the Docs: Documentation Best Practices](https://www.writethedocs.org/guide/)
- [Software Documentation Tips and Tricks - Better Programming](https://medium.com/better-programming/software-documentation-tips-and-tricks-f2a6b2bfc981)
- [Creating Maintainable Software Documentation](https://opensource.com/article/20/1/create-maintainable-docs)
- [Code Comments Best Practices](https://www.welcometothejungle.com/en/articles/how-to-code-comment-best-practices)
- [How to Write Great Documentation for Your API](https://idratherbewriting.com/learnapidoc/)
- [Technical Documentation for Beginners](https://www.w3schools.com/whatis/whatis_technical_documentation.asp)
- [Code Review Tools and Tips](https://bitbucket.org/product/guides/code-review)
- [Collaborative Documentation Strategies](https://docs.microsoft.com/en-us/learn/modules/write-documentation-markdown/)
