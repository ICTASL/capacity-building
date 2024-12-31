---
layout: resource
title: "Types of Prompting"
description: "Explore various prompting techniques to maximize the effectiveness of your interactions with Generative AI."
permalink: /students/ai-aptitude/types-of-prompting/
lang: en 
---

* TOC
{:toc}

## Introduction
Do you want to become an AI whisperer? Learning different types of prompting techniques is key to unlocking the full potential of Generative AI tools like **ChatGPT**, **Google Gemini**, and **Bing Copilot**. By understanding how to give AI effective instructions, you can get better answers, generate amazing content, and explore new ideas. Let's dive into the exciting world of prompting and discover how you can make the most out of these powerful AI tools!

## Basic Prompting Types
Starting with the basics is essential to build a strong foundation. Here are some fundamental prompting types you can use:

### Informational/Instructional Prompts
These prompts focus on getting information or instructions from the AI. Think of them as asking questions or giving commands to learn something new.

- **Examples:**
  - "What is the capital of France?"
  - "Explain how photosynthesis works."
  - "List the planets in our solar system."
  - "Write a Python code to calculate the area of a circle."

### Creative Prompts
These prompts unleash the AI's creative potential, asking it to generate original content like stories, poems, or ideas.

- **Examples:**
  - "Write a short story about a talking dog who goes on a space adventure."
  - "Compose a song about the beauty of nature."
  - "Imagine you are a superhero. Describe your powers and your costume."

### Interactive Prompts
These prompts are all about having a conversation or role-playing with the AI, making interactions more engaging and fun.

- **Examples:**
  - "Let's have a debate about the pros and cons of artificial intelligence."
  - "Act like a detective and help me solve this mystery: 'The Case of the Missing Cookies'."
  - "Pretend you are a time traveler from the future. Tell me about the world in the year 3000."

## Advanced Prompting Techniques
Once you're comfortable with the basics, you can explore advanced prompting techniques to get even more out of AI tools:

### Zero-Shot Prompting
**Definition:** In zero-shot prompting, you ask the AI to perform a task without providing any examples. This evaluates the AI's ability to generalize its existing knowledge to new situations.

**Example:**  
Prompt: "Write a short story about a cat who can travel through time."  
*(The AI needs to use its understanding of cats, time travel, and storytelling to generate a response.)*

### One-Shot Prompting
**Definition:** In one-shot prompting, you provide a single example to guide the AI's response. This helps the AI understand the desired format or style.

**Example:**  
Prompt: "Generate a creative product name, similar to this: 'Sparkling Clean' for a dish soap. Now, generate a name for a new brand of sneakers."  
*(The AI is given one example of a product name and asked to generate a similar one for a different product.)*

### Few-Shot Prompting
**Definition:** In few-shot prompting, you provide a small number of examples to help the AI learn a pattern or task. This can improve the accuracy and relevance of the AI's responses.

**Example:**  
Prompt:  
Identify the sentiment of the following sentences: 
Example 1: 'This movie was amazing!' - Positive 
Example 2: 'I'm so disappointed with this product.' - Negative 
Example 3: 'The weather is pleasant today.' - Neutral 
Now identify the sentiment of this sentence: 'I can't wait for the weekend!'

*(The AI is given a few examples of sentiment analysis to learn from.)*

### Chain-of-Thought Prompting
**Definition:** In chain-of-thought prompting, you guide the AI through a step-by-step reasoning process. This helps the AI break down complex tasks and generate more logical and comprehensive responses.

**Example:**  
Prompt:  
f a store sells 3 apples for $2, how much would 9 apples cost? Let's think step by step. Find the cost of one apple: $2 / 3 apples = $0.67 per apple (approximately). Calculate the cost of 9 apples: $0.67/apple * 9 apples = $6. 
Answer: 9 apples would cost $6.

*(The prompt guides the AI through the steps of solving the word problem.)*

### Iterative Prompting
**Definition:** Iterative prompting involves refining a prompt based on the AI's initial response. This is a dynamic process where you interact with the AI to gradually improve the output.

**Example:**  
- **Initial Prompt:** "Write a poem about the feeling of loneliness."  
- **Refined Prompt:** "That's a good start. Now, focus the poem on the loneliness of a robot who longs for connection with humans."  
*(The prompt is refined to provide more specific guidance.)*

### Negative Prompting
**Definition:** In negative prompting, you explicitly tell the AI what to avoid in its response. This helps to prevent unwanted or irrelevant outputs.

**Example:**  
Prompt: "Describe the benefits of exercising regularly. Do not mention weight loss."  
*(The AI is instructed to focus on benefits other than weight loss.)*

### Hybrid Prompting
**Definition:** Hybrid prompting involves combining different prompting techniques to achieve a more nuanced and effective response.

**Example:**  
Prompt:  
I'm writing a story about a detective. Give me some ideas for a mystery they could solve. Here are some examples: A stolen painting A missing person A haunted house Now, let's think step-by-step how the detective would solve the 'Case of the Missing Jewels'.

The detective would arrive at the crime scene. They would interview witnesses and gather clues.

*(After the AI provides the next step)*
Prompt: "That's a good point! Now, let's add a twist. What if the detective discovers a secret passage in the house?"  
*(This example combines few-shot prompting with chain-of-thought prompting and iterative prompting. It provides examples of mysteries, guides the AI through a reasoning process, and iteratively refines the scenario.)*

### Prompt Chaining
**Definition:** Prompt chaining involves using the output of one prompt as the input for another. This allows you to create a sequence of interconnected prompts that build upon each other.

**Example:**  
- **Prompt 1:** "Imagine a world where animals can talk. Describe what a typical day in a school for animals would be like."  
- **Prompt 2 (using the output of Prompt 1):** "Now write a short story about a shy penguin who attends this school and overcomes his fear of public speaking."  
*(The first prompt sets the stage for the second prompt, creating a cohesive narrative.)*

## Comparison of Advanced Prompting Techniques
Understanding the differences between these advanced prompting techniques can help you choose the right one for your needs. Here's a comparison table to guide you:

| **Technique**              | **Description**                                                                                 | **Pros**                                                                                   | **Cons**                                                                                      |
|----------------------------|-------------------------------------------------------------------------------------------------|--------------------------------------------------------------------------------------------|-----------------------------------------------------------------------------------------------|
| **Zero-Shot Prompting**    | Ask the AI to perform a task without any examples.                                             | Quick and straightforward for simple tasks.                                                | May result in less accurate or relevant responses for complex tasks.                         |
| **One-Shot Prompting**     | Provide a single example to guide the AI's response.                                           | Helps the AI understand specific expectations with minimal input.                         | Limited guidance, which might not be sufficient for highly complex tasks.                     |
| **Few-Shot Prompting**     | Give the AI a few examples to learn from before asking it to complete a similar task.           | Improves response accuracy and relevance by providing context.                            | Requires more input, which can be time-consuming to prepare.                                 |
| **Negative Prompting**     | Specify what you *don't* want in the output to refine the AI's response.                      | Helps avoid unwanted content and steer the AI in the right direction.                      | Can be tricky to phrase effectively, and may not always prevent all unwanted outputs.        |
| **Chain-of-Thought**       | Encourage the AI to think through problems step by step for detailed reasoning.                | Leads to more logical and comprehensive answers.                                           | Can be time-consuming and may produce longer responses than necessary.                        |
| **Iterative Prompting**    | Start with a basic prompt and refine it based on the AI's response for better results.         | Allows for gradual improvement and more precise outputs through feedback.                 | Requires multiple interactions, which can be time-consuming.                                 |
| **Prompt Chaining**        | Use the output of one prompt as the input for another to build upon the initial response.      | Enables creation of complex and layered content by building on previous outputs.           | Requires careful planning to ensure continuity and relevance between prompts.                  |
| **Hybrid Prompting**       | Combine different prompting techniques to achieve specific or multifaceted goals.            | Leverages the strengths of multiple techniques for versatile and comprehensive outputs.    | Can be complex to design and may require advanced understanding of prompting techniques.        |

## Fine-Tuning Prompts
Fine-tuning prompts is all about customization. It involves adjusting your prompts to achieve very specific outcomes. This might include:

- **Adding More Details and Constraints:**
  - **Example:** "Write a short story about a talking cat who solves mysteries, but make sure the story is no more than 500 words long and has a surprise ending."
  
- **Specifying the Tone or Style:**
  - **Example:** "Write a poem about the ocean in a hopeful and inspiring tone."
  
- **Providing Specific Keywords or Information:**
  - **Example:** "Write a news article about the latest developments in artificial intelligence, focusing on the impact of AI on education."

## Conclusion
By understanding and utilizing different types of prompting techniques, you can enhance your interactions with AI tools, making them more effective and tailored to your specific needs. As you become more skilled at prompting, you'll be able to unlock the true potential of Generative AI for learning, creativity, and problem-solving.

## Resources for Further Learning
Expand your knowledge and improve your prompting skills with these helpful resources:

- **[Prompt Engineering Guide](https://www.promptingguide.ai/)**: A comprehensive prompt engineering guide.
- **[Free Prompt Engineering Course - The Art of the Prompt](https://medium.com/p/a77bcd074d97)**: 10 Need-to-Know Techniques.
- **[The ChatGPT list of lists](https://medium.com/mlearning-ai/the-chatgpt-list-of-lists-a-collection-of-1500-useful-mind-blowing-and-strange-use-cases-8b14c35eb)**: A collection of 3000+ prompts, GPTs, use-cases, tools, APIs, extensions, fails and other resources.

## GPT Prompts for Practice
Put your prompting skills to the test with these practice prompts.
(New to prompting? Read our [Guide to Prompting for Learning](../guide-to-prompting-for-learning/) ) 

1. **Informational:** "What are the main causes of climate change?"
2. **Instructional:** "Write a Python code to calculate the factorial of a number."
3. **Creative:** "Imagine you could talk to animals. Write a conversation between you and a dolphin."
4. **Interactive:** "Let's play a game of 20 questions. You think of something, and I'll try to guess it."
5. **Chain-of-Thought:** "A train leaves New York at 9:00 AM traveling at 60 mph. Another train leaves Chicago at 10:00 AM traveling at 70 mph towards New York. If the distance between New York and Chicago is 800 miles, at what time will the two trains meet? Let's think step by step."
6. **Few-Shot:** "Here are some examples of rhyming words: cat/hat, dog/fog, sun/run. Now give me a rhyming word for 'tree'."
7. **Zero-Shot:** "Write a short story about a robot who learns to feel emotions."
8. **Iterative:** 
   - **Initial Prompt:** "Write a song about a rainy day."
   - **Refined Prompt (after seeing the output):** "That's a good start. Now make the song about a rainy day in a magical forest."
9. **Negative:** "Generate a creative story idea, but avoid any stories about love or romance."
10. **Hybrid:** "Write a funny poem about a squirrel who loves to eat nuts, and then generate an image of the squirrel based on the poem."
11. **Prompt Chaining:** 
    - **Prompt 1:** "Invent a new food dish and describe its ingredients and how to prepare it."
    - **Prompt 2:** "Now write a restaurant review for a restaurant that serves this dish."

<!-- ## Call to Action
Enhance your prompting skills by visiting our [Best Practices for Prompting](./best-practices-prompting.md) page! -->

---
*Happy Learning!*
