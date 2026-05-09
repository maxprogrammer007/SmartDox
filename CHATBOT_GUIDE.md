# 🤖 AI Chatbot Feature - SmartDOX v2.1

## Overview
The new AI Chatbot feature enhances SmartDOX with intelligent conversation capabilities powered by **GROQ's free-tier LLM API**. Ask questions about tender evaluation, bidder assessment, compliance, and procurement best practices.

---

## Features

### 1. **Interactive Chatbot** 💬
- Real-time conversation with AI assistant
- Full conversation context maintained
- Expert knowledge on tender evaluation and procurement

### 2. **Quick Actions** ⚡
- **📚 Tender Evaluation Guide** - Get comprehensive tender evaluation methodology
- **⚠️ Compliance Checklist** - Review compliance and regulatory requirements
- **🚩 Red Flags Guide** - Identify potential risks in bids

### 3. **AI-Powered Analysis** 📊
- Tender advice specific to tender type
- Bid analysis with strengths, weaknesses, and risk assessment
- Professional recommendations

---

## Setup Instructions

### Step 1: Install Dependencies
```bash
pip install -r requirements.txt
```

### Step 2: Add GROQ API Key
The GROQ API key has been added to your `.env` file:
```
GROQ_API_KEY=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
```

The app automatically loads this from the `.env` file using `python-dotenv`.

### Step 3: Run the App
```bash
streamlit run app.py
```

---

## Usage

### Starting the Chatbot
1. Navigate to the **🤖 AI Chatbot** tab in the Streamlit app
2. Type your question in the chat input field
3. The AI assistant will respond with relevant information

### Example Questions
- "What are the key criteria for evaluating a construction tender?"
- "How do I verify a company's turnover from their financial statements?"
- "What certifications are required for IT service tenders?"
- "Can you explain the GST registration requirements?"
- "What red flags should I look for in bidder submissions?"

### Using Quick Actions
Click any of the quick action buttons to get:
- **Tender Evaluation Guide** - Methodology and best practices
- **Compliance Checklist** - Regulatory requirements and compliance steps
- **Red Flags Guide** - Common issues and risk indicators

---

## API Details

### GROQ Configuration
- **Model**: `openai/gpt-oss-20b` (free tier)
- **API Endpoint**: GROQ Cloud
- **Free Tier Limits**: Generous for most use cases
- **No Cost**: Free to use within tier limits

### Available Functions

#### `get_chatbot_response(message, conversation_history=None)`
Gets a response from the GROQ chatbot with conversation context.

```python
from services import get_chatbot_response

response = get_chatbot_response(
    "What should I check in a tender document?",
    conversation_history=[]
)
print(response)
```

#### `get_tender_advice(tender_type, company_info=None)`
Gets AI advice specific to tender type.

```python
from services import get_tender_advice

advice = get_tender_advice(
    "construction",
    company_info="Small construction firm with 5 years experience"
)
```

#### `analyze_bid_with_ai(bidder_data, tender_criteria)`
Provides detailed AI analysis of bid vs criteria.

```python
from services import analyze_bid_with_ai

analysis = analyze_bid_with_ai(
    bidder_data={
        'company_name': 'ABC Corp',
        'turnover': 10,
        'projects': 15,
        'gst': True,
        'iso': True
    },
    tender_criteria={
        'turnover': 5,
        'projects': 10,
        'gst': True,
        'iso': False
    }
)
```

---

## Environment Variables

| Variable | Value | Purpose |
|----------|-------|---------|
| `GROQ_API_KEY` | Your API Key | Authentication with GROQ API |

**Security Note**: Never commit `.env` file to version control. Add it to `.gitignore`.

---

## Error Handling

### "GROQ_API_KEY not configured"
The app detects when the API key is missing and shows instructions:
1. Create/update `.env` file with GROQ_API_KEY
2. Or set environment variable before running app
3. Restart the Streamlit app

### "Error communicating with chatbot"
This typically means:
- No internet connection
- GROQ API is down (rare)
- API key is invalid
- Rate limit exceeded (within free tier)

**Solution**: Check your connection and API key validity.

---

## Pricing

✅ **Completely Free** - GROQ offers:
- Free-tier API access
- No credit card required
- Generous rate limits for individual use
- Can be used for production applications

---

## Integration with SmartDOX Workflow

The chatbot complements the tender evaluation process:

1. **Process Tender** 📄 → Extract criteria from documents
2. **Evaluate Bidder** 👥 → Compare against criteria
3. **Ask Chatbot** 🤖 → Get contextual advice and analysis
4. **Make Decision** ✅ → Use AI insights for final verdict

---

## Tips for Best Results

### For Tender Evaluation
- Provide specific tender requirements when asking questions
- Ask follow-up questions to clarify complex criteria
- Use the compliance checklist for systematic evaluation

### For Bid Analysis
- Share both tender criteria and bidder information
- Ask about specific risk areas
- Request recommendations based on your priorities

### For Compliance
- Ask about industry-specific requirements
- Inquire about documentation needed
- Clarify regulatory obligations

---

## Advanced Usage

### Batch Analysis
You can create a script to analyze multiple bids:

```python
from services import analyze_bid_with_ai

bids = [...]  # List of bidder data
criteria = {...}  # Tender criteria

for bid in bids:
    analysis = analyze_bid_with_ai(bid, criteria)
    print(f"Analysis for {bid['company_name']}:")
    print(analysis)
    print("---")
```

### Custom Context
Build conversation history for specific analyses:

```python
from services import get_chatbot_response, format_conversation_for_history

history = []
# Build context through conversation
history.append(format_conversation_for_history("user", "I'm evaluating IT tenders"))
response1 = get_chatbot_response("What criteria should I use?", history)
# ... continue conversation with context
```

---

## Support & Updates

- For GROQ API issues: https://groq.com
- For SmartDOX updates: Check GitHub repository
- Report bugs: Open an issue on GitHub

---

**Version**: SmartDOX v2.1  
**Last Updated**: 2024  
**Status**: Production Ready
