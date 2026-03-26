# 🌍 Trade Bridge – Controlled Trade Execution Platform

Trade Bridge is a compliance‑first, transaction‑controlled trade infrastructure that eliminates trust gaps, enforces execution discipline, and embeds finance and insurance into the cross‑border agricultural trade lifecycle. The platform replaces fragmented marketplaces with a closed‑loop system where transactions are locked and enforceable, payments are secured via escrow, compliance is verified before export, financing is embedded and risk‑managed, supply is aggregated, and trade is traceable from farm to fork.

---

## 🚀 Key Features

### Core Platform
- **Escrow‑secured Payments** – Buyer funds are held in a ring‑fenced escrow account; tranches are released only upon verified milestones.
- **CFaaS (Contract‑Farming‑as‑a‑Service)** – Large buyers can finance inputs via escrow, with automated releases tied to farm diary entries.
- **Farm Diary & Traceability** – GPS‑tagged, photo‑evidenced records create an immutable audit trail from farm to buyer.
- **Compliance Engine** – KEPHIS certification, QA sampling, and MRL checks are enforced before export.
- **TradeScore** – Reputation score for farmers based on compliance and repayment history, enabling better credit terms.

### Enhanced Features (Integrated)
- **Mobile Money Integration** – M‑Pesa (Daraja) and Airtel Money (via Cellulant Tingg) for instant farmer payouts and loan collections.
- **Blockchain Traceability** – Compliance records anchored on Hedera Hashgraph for tamper‑proof verification; QR codes on final packaging.
- **Predictive Yield Forecasting** – Machine learning models using satellite imagery and farm diary data to estimate harvest volumes.
- **Logistics Tracking** – Real‑time container tracking via AfterShip API; automated POD triggers final escrow release.
- **Computer Vision QA** – AI‑powered fruit grading (TensorFlow.js) to pre‑screen batches before QA auditor review.
- **Carbon Credit Module** – Track sustainable farming practices and generate verifiable carbon credits via Regen Network.
- **Input Marketplace** – Farmers purchase inputs on credit using TradeScore; suppliers compete to offer best prices.
- **Offline‑First Mobile App** – Flutter app with local SQLite storage, syncing when connectivity returns.
- **API Gateway** – REST endpoints for banks, insurers, and partners to access (with consent) farmer TradeScore and batch compliance data.
- **Group Lending Dashboard** – SACCOs and farmer groups view collective metrics and communicate via integrated chat.

---

## 🏗️ Architecture

The system follows a **triple‑core architecture**:

1. **Platform Backbone** – Firestore database, Cloud Functions, and authentication (Firebase).  
   Modules: Farmer Registry, Farm Diary, Escrow Engine, Compliance Engine, CFaaS Orchestration.

2. **Independent Suppliers & Networks** – External aggregators (SMEs, cooperatives) that on‑board farmers and verify logs.

3. **Finance House** – Embedded lending, insurance, and mobile money integration.

All external integrations (M‑Pesa, Hedera, AfterShip, TensorFlow, Regen Network) are orchestrated via Cloud Functions.

### Tech Stack
| Component          | Technology                               |
|--------------------|------------------------------------------|
| Backend            | Node.js (Express) on Firebase Functions  |
| Database           | Firestore (NoSQL)                        |
| Authentication     | Firebase Auth (Email/Password, Google)   |
| Mobile Money       | M‑Pesa Daraja API + Cellulant Tingg      |
| Blockchain         | Hedera Hashgraph SDK                     |
| Logistics          | AfterShip API                            |
| Computer Vision    | TensorFlow.js (model hosted on Cloud)    |
| Predictive Models  | TensorFlow.js / Python (via Cloud Run)   |
| Mobile App         | Flutter (Dart)                           |
| Frontend (Demo)    | HTML/JS (Firebase Hosting)               |
| Infrastructure     | Firebase / Google Cloud Platform         |

---

## 📋 Prerequisites

- [Node.js](https://nodejs.org/) (v16 or later)
- [Firebase CLI](https://firebase.google.com/docs/cli) – `npm install -g firebase-tools`
- A [Firebase](https://console.firebase.google.com/) project with **Blaze** plan (required for Cloud Functions to call external APIs)
- Optional accounts for full integrations:
  - [Safaricom Daraja](https://developer.safaricom.co.ke/) (sandbox)
  - [Cellulant Tingg](https://tingg.africa/) (sandbox)
  - [Hedera](https://hedera.com/) testnet account
  - [AfterShip](https://www.aftership.com/) API key
  - [Google Cloud Vision](https://cloud.google.com/vision) (if not using your own model)

---

## 🛠️ Installation & Setup

### 1. Clone the repository
```bash
git clone https://github.com/your-org/trade-bridge.git
cd trade-bridge
