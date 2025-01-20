#!/bin/bash

# Create folder structure for the Government Information and Data Security module
mkdir -p ta/government-officials/information_and_data_security

# Create index.md
cat << 'EOF' >  ta/government-officials/information_and_data_security/index.md
---
layout: resource
title: "Information and Data Security - Overview"
description: "Overview of topics in Information and Data Security for Government Officials."
personas: ["Government Officials"]
tags: [information security, data security, government, capacity building]
permalink: /ta/government-officials/information_and_data_security/index/
lang: "ta"
---

> "Share your knowledge. It's a way to achieve immortality." - Dalai Lama

* TOC
{:toc}

## Overview

Welcome to the Information and Data Security section for Government Officials. This page provides an overview and links to the following topics:

- [Introduction](./introduction/) - Sets the context and explains the importance of information security and privacy in government.
- [Fundamentals of Information Security](./fundamentals_of_info_security/) - Provides key definitions and explains core concepts of information security.
- [Identifying Threats and Vulnerabilities](./identifying_threats_and_vulnerabilities/) - Examines common security threats and how to recognize them.
- [Best Practices for Information Security](./best_practices_info_security/) - Shares actionable best practices for securing systems and data.
- [Privacy and Data Protection](./privacy_and_data_protection/) - Discusses the importance of privacy, legal frameworks, and ethical data handling.
- [Additional Topics](./additional_topics/) - Covers supplementary subjects such as social media responsibility, mobile security, and software licensing.
EOF

# Create introduction.md
cat << 'EOF' >  ta/government-officials/information_and_data_security/introduction.md
---
layout: resource
title: "Introduction to Information and Data Security"
description: "Sets the context and highlights the importance of information and data security in government operations."
personas: ["Government Officials"]
tags: [introduction, information security, government]
permalink: /ta/government-officials/information_and_data_security/introduction/
lang: "ta"
---

> "Share your knowledge. It's a way to achieve immortality." - Dalai Lama

* TOC
{:toc}

## Introduction

- Welcome and objectives of the session.
- Importance of information security and privacy in government operations.
- Brief introduction to legal and regulatory frameworks such as the Data Protection Act and Cybersecurity policies.
- Overview of additional digital topics like social media responsibility, mobile security, and software licensing.
EOF

# Create fundamentals_of_info_security.md
cat << 'EOF' > ta/government-officials/information_and_data_security/fundamentals_of_info_security.md
---
layout: resource
title: "Fundamentals of Information Security & Privacy"
description: "Overview of key concepts, definitions, and the importance of safeguarding sensitive data in government."
personas: ["Government Officials"]
tags: [information security, fundamentals, privacy, government]
permalink: /ta/government-officials/information_and_data_security/fundamentals_of_info_security/
lang: "ta"
---

> "Share your knowledge. It's a way to achieve immortality." - Dalai Lama

* TOC
{:toc}

## Fundamentals of Information Security & Privacy

- Definition of information security, data privacy, and cybersecurity.
- Types of information handled in government: public vs. sensitive data.
- Discussion on common threats such as phishing, ransomware, data breaches, and insider threats.
- Interactive element: A short quiz to test fundamental knowledge.
EOF

# Create identifying_threats_and_vulnerabilities.md
cat << 'EOF' >  ta/government-officials/information_and_data_security/identifying_threats_and_vulnerabilities.md
---
layout: resource
title: "Identifying Threats and Vulnerabilities"
description: "Examine common security threats and vulnerabilities in government operations and learn how to identify them."
personas: ["Government Officials"]
tags: [threat modeling, vulnerabilities, security risks]
permalink: /ta/government-officials/information_and_data_security/identifying_threats_and_vulnerabilities/
lang: "ta"
---

> "Share your knowledge. It's a way to achieve immortality." - Dalai Lama

* TOC
{:toc}

## Identifying Threats and Vulnerabilities

- Real-life examples of security incidents in government.
- Indicators of potential threats: suspicious emails, unauthorized access, malware.
- Discussion on social engineering tactics and effective countermeasures.
- Activity: Analyze scenarios to identify security red flags.
EOF

# Create best_practices_info_security.md
cat << 'EOF' >  ta/government-officials/information_and_data_security/best_practices_info_security.md
---
layout: resource
title: "Best Practices for Information Security"
description: "Actionable steps and guidelines for maintaining robust information security in government operations."
personas: ["Government Officials"]
tags: [best practices, information security, guidelines]
permalink: /ta/government-officials/information_and_data_security/best_practices_info_security/
lang: "ta"
---

> "Share your knowledge. It's a way to achieve immortality." - Dalai Lama

* TOC
{:toc}

## Best Practices for Information Security

- Guidelines for secure password policies, strong authentication methods, and effective access controls.
- Best practices for handling sensitive data, including classification, secure storage, and safe sharing.
- Recommendations for secure use of technology: protecting devices, avoiding public Wi-Fi, and implementing regular updates.
- Procedures for incident reporting and escalation.
- Activity: Compare examples of weak vs. strong security practices.
EOF

# Create privacy_and_data_protection.md
cat << 'EOF' >  ta/government-officials/information_and_data_security/privacy_and_data_protection.md
---
layout: resource
title: "Privacy and Data Protection"
description: "Focuses on the significance of data privacy, ethical handling of information, and compliance with regulatory frameworks in the government sector."
personas: ["Government Officials"]
tags: [privacy, data protection, compliance]
permalink: /ta/government-officials/information_and_data_security/privacy_and_data_protection/
lang: "ta"
---

> "Share your knowledge. It's a way to achieve immortality." - Dalai Lama

* TOC
{:toc}

## Privacy and Data Protection

- Explain the difference between data security and data privacy.
- Discuss the importance of protecting citizens' data privacy in government operations.
- Overview of local data protection laws and regulatory frameworks.
- Practical guidelines for ethical data handling and responsible sharing.
- Activity: Brainstorm steps to enhance privacy measures in daily operations.
EOF

# Create additional_topics.md
cat << 'EOF' >  ta/government-officials/information_and_data_security/additional_topics.md
---
layout: resource
title: "Additional Topics in Information and Data Security"
description: "Explores supplementary topics including social media responsibility, mobile security, and software licensing in government operations."
personas: ["Government Officials"]
tags: [additional topics, social media, mobile security, software licensing]
permalink: /ta/government-officials/information_and_data_security/additional_topics/
lang: "ta"
---

> "Share your knowledge. It's a way to achieve immortality." - Dalai Lama

* TOC
{:toc}

## Additional Topics in Information and Data Security

- Overview of responsible use of social media in government.
- Best practices for securing mobile devices and networks.
- Introduction to software licensing and managing third-party software risks.
- Discussion on how these topics integrate into overall data security strategies.
- Activity: Analyze case studies on social media mishaps, mobile security breaches, and licensing issues.
EOF
