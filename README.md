SmartDOX

AI-Powered Smart Tender Evaluation Platform with Verified Document Intelligence and Multilingual Assistive System

🚀 Overview

SmartDOX is an end-to-end AI-driven platform designed to automate and standardize tender evaluation for government procurement systems such as CRPF.

The platform works similar to a resume analyzer, where:

📄 Tender Document → Job Description
📁 Bidder Submissions → Candidate Resumes

SmartDOX extracts eligibility criteria, processes multi-format bidder documents, verifies authenticity, and generates explainable, audit-ready evaluation reports.

It is built as a decision-support system, enhancing human evaluators rather than replacing them.

❗ Problem Statement

Current tender evaluation systems are:

Manual and time-consuming
Inconsistent across evaluators
Difficult to audit
Prone to human error and bias

Evaluators must review hundreds of pages across multiple formats (PDFs, scans, images), making the process inefficient and unreliable.

💡 Our Solution

SmartDOX introduces:

Automated document understanding
Structured data extraction
Intelligent criteria matching
Explainable AI-based decision making
🧠 Core Features
1. Tender Understanding Engine
Extracts:
Technical requirements
Financial thresholds
Compliance conditions
Certifications & documents
Classifies:
Mandatory criteria
Optional criteria
Converts criteria into structured, machine-readable format
2. Bidder Document Processing Engine

Supports:

Typed PDFs
Scanned documents
Word files
Tables
Images & certificates

Uses:

OCR (Tesseract)
NLP techniques

Extracts:

Turnover & financials
Project experience
GST / registration details
Certifications
3. Intelligent Matching Engine
Maps bidder data to criteria
Performs:
Criterion-level evaluation
Overall eligibility decision

Outputs:

✅ Eligible
❌ Not Eligible
⚠️ Needs Manual Review
4. Document Verification Layer (Key Innovation)
Detects tampering or inconsistencies
Validates structure and metadata
Cross-verifies extracted values
5. Explainable AI Decision System

Each decision includes:

Requirement checked
Document used
Extracted value
Reason for decision

➡️ Fully transparent & audit-ready

6. AI Assistive Chat Interface (Optional)
Query tender requirements
Summarize documents
Clarify eligibility rules
Multilingual support (English + Hindi + extensible)
7. Dual Dashboard System
👨‍💼 Admin Dashboard
View evaluations
Review flagged cases
Approve/override decisions
Audit logs
🧑‍💻 Bidder Dashboard
Upload documents
Get submission feedback
Ensure completeness
8. Multilingual Capability
Supports multi-language inputs
Handles legal & technical variations
Extendable to regional languages
9. Human-in-the-Loop System
Flags low-confidence cases
Allows manual review
Improves system over time
10. Auditability & Compliance
Tracks:
Data sources
Decision steps
Outputs
Human interventions

➡️ Suitable for official procurement workflows

🏗️ Tech Stack
Frontend
React.js
Tailwind CSS
Backend
Python
FastAPI
Document Processing
Tesseract OCR
PyMuPDF / pdfplumber
Pillow / OpenCV
AI / NLP Layer
Regex (data extraction)
Keyword matching
(Optional) OpenAI API
Storage
JSON (current prototype)
SQLite (optional upgrade)
🔌 API Endpoints
/upload-tender → Extract criteria
/evaluate-bidder → Evaluate bidder
/results → Final output
🎨 UI Features
File upload system
Evaluation dashboard
Color-coded results (PASS / FAIL / REVIEW)
Explanation panel
Clean, responsive UI
📊 Expected Impact
⏱️ Reduced evaluation time
⚖️ Improved fairness & consistency
🔍 Full transparency
📈 Better scalability
🛡️ Fraud detection & validation
🔮 Future Scope
Integration with government APIs (GST, PAN)
Advanced fraud detection models
Predictive procurement analytics
Expansion across departments
⚙️ Setup Instructions
Backend
cd backend
venv\Scripts\activate
uvicorn main:app --reload
Frontend
cd frontend
npm install
npm start
🧪 Demo Flow
Upload tender (future scope in UI)
Upload bidder document
Click Evaluate
View:
Final Status
Criteria-wise evaluation
Explanation
🏆 Key Highlights
Explainable AI (not black-box)
Handles scanned + structured data
Human-in-the-loop system
Audit-ready architecture
Real-world government use case
📌 Project Status

✅ Working Prototype (Backend + Frontend)
🚧 Advanced features in progress
