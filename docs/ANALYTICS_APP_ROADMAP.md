# POS Analytics App — Roadmap

## Table of Contents

1. [Architecture Context](#1-architecture-context)
2. [Current State](#2-current-state)
3. [What's Already Implemented](#3-whats-already-implemented)
4. [What Needs to Be Built](#4-what-needs-to-be-built)
5. [Sync Monitoring (Owner-Facing)](#5-sync-monitoring-owner-facing)
6. [Phase-Wise Plan (Analytics Tasks Only)](#6-phase-wise-plan-analytics-tasks-only)

---

## 1. Architecture Context

```
┌──────────────────────────────┐
│   POS Desktop App            │  Employee-facing
│   Flutter + Drift (SQLite)   │  Offline-first capable
└────────────┬─────────────────┘
             │ HTTP/REST + Bulk sync
             ▼
┌──────────────────────────────┐
│   POS Backend                │  Central server
│   FastAPI + PostgreSQL       │  Auth, business logic, sync
└────────────┬─────────────────┘
             │ HTTP/REST
             ▼
┌──────────────────────────────┐
│   POS Analytics App ◀── YOU  │  Owner/admin-facing
│   Flutter + Riverpod + AI    │  Business intelligence
└──────────────────────────────┘
```

**Data flow**: The analytics app reads aggregated data from the backend. It does NOT create orders or manage inventory — only monitors, analyzes, and provides insights.

---

## 2. Current State

| Capability              | Status             | Notes                                            |
| ----------------------- | ------------------ | ------------------------------------------------ |
| Dashboard (multi-store) | ✅ Charts + KPIs   | Revenue, orders, payment method breakdown        |
| AI Agent (Gemini)       | ✅ Chat + analysis | Natural language business queries via Gemini 2.0 |
| Onboarding flow         | ✅ Multi-step      | Store creation + employee setup                  |
| Auth (owner login)      | ✅ Token-based     | SharedPreferences + role gate (owner/admin only) |
| Orders analytics        | ✅ List + detail   | Per-store order history                          |
| Store management        | ✅ CRUD            | Create/edit stores                               |
| Employee management     | ✅ CRUD            | Create/edit employees with roles                 |
| Category management     | ✅ CRUD            | Product categories                               |
| Product management      | ✅ CRUD            | Products with prices                             |
| Table management        | ✅                 | Table count per store                            |
| KOT settings            | ✅                 | Kitchen Order Ticket config                      |
| Tax configuration       | ✅                 | Tax group + rule management                      |
| Menu builder            | ✅                 | Create menus, assign products                    |
| Repositories            | ✅ 24 classes      | Full data layer coverage                         |
| Offline / local caching | ❌                 | All reads are live API calls                     |
| Push notifications      | ❌                 |                                                  |
| Data export (CSV/PDF)   | ❌                 |                                                  |
| Sync monitoring         | ❌                 | No visibility into desktop sync health           |
| Settings / preferences  | ❌                 |                                                  |
| Error handling UX       | ❌                 |                                                  |
| Deep linking / routing  | ❌                 |                                                  |

---

## 3. What's Already Implemented

1. **24 repository classes** covering all API domains
2. **Dashboard** — Multi-store overview with charts (revenue, orders, payment breakdown), with date range selection
3. **AI Agent** — Gemini 2.0 flash-lite integration for natural language business queries
4. **Onboarding** — Multi-step flow for store, employee, category, product, table, and KOT setup
5. **Auth** — Token stored in SharedPreferences, role-gated (owner/admin only), `AuthWrapper` in main.dart
6. **Orders view** — Per-store order list with details, status filtering
7. **Store management** — Full CRUD for stores
8. **Employee management** — Full CRUD with role assignment
9. **Product management** — Full CRUD with pricing
10. **Category management** — Full CRUD
11. **Table management** — Table count configuration
12. **KOT settings** — Kitchen Order Ticket configuration
13. **Tax configuration** — Tax groups + tax rules CRUD
14. **Menu builder** — Create menus, assign products to sections

---

## 4. What Needs to Be Built

### 🔴 CRITICAL — Must-Have for Production

| #   | Task                       | Description                                                                                                     |
| --- | -------------------------- | --------------------------------------------------------------------------------------------------------------- |
| A1  | **Secure token storage**   | Replace SharedPreferences with `flutter_secure_storage` for JWT tokens. SharedPreferences is NOT encrypted      |
| A2  | **Token refresh flow**     | Add automatic token refresh before expiry. Currently no refresh logic — tokens expire silently                  |
| A3  | **Global error handling**  | Add Dio interceptors for 401 (auto-logout), 403 (show error), 5xx (retry), network errors (show offline banner) |
| A4  | **Loading & empty states** | Add shimmer/skeleton screens for loading, empty state illustrations, pull-to-refresh on all list screens        |

### 🟡 HIGH — Expected Features

| #   | Task                               | Description                                                                                                       |
| --- | ---------------------------------- | ----------------------------------------------------------------------------------------------------------------- |
| A5  | **Dashboard caching**              | Cache last dashboard data locally (Hive/SharedPreferences) so the app opens instantly and refreshes in background |
| A6  | **Date range analytics**           | Weekly, monthly, quarterly, yearly comparisons. Period-over-period growth indicators                              |
| A7  | **Inventory analytics**            | Low stock alerts, stock movement charts, cost analysis. Backend already has full inventory models                 |
| A8  | **Financial reports**              | Revenue reports, tax collected reports, payment method breakdown reports, shift end reports                       |
| A9  | **Employee performance analytics** | Orders per employee, average order value, tips, shift hours. Data exists in backend                               |
| A10 | **Push notifications**             | FCM integration for: low stock alerts, new orders (real-time), shift ends, daily report summaries                 |
| A11 | **Multi-store comparison view**    | Side-by-side store performance comparison charts                                                                  |
| A12 | **Real-time order feed**           | WebSocket/SSE connection to see orders as they come in from POS terminals                                         |

### 🟢 MEDIUM — Good to Have

| #   | Task                              | Description                                                                                            |
| --- | --------------------------------- | ------------------------------------------------------------------------------------------------------ |
| A13 | **Data export**                   | Export analytics to CSV/PDF from within the app. Share via system share sheet                          |
| A14 | **Settings / preferences screen** | Notification preferences, default date range, default store, theme selection                           |
| A15 | **Guest / loyalty analytics**     | Guest visit frequency, average spend per guest, loyalty program insights. Backend has guest models     |
| A16 | **Deep linking**                  | URL-based navigation for: notification taps → specific order, shared reports → specific dashboard view |
| A17 | **Theming**                       | Dark mode support, brand color customization                                                           |
| A18 | **AI Agent improvements**         | Add chart generation from AI responses, predefined quick-action prompts, conversation history          |

### ⚪ LOW — Polish & Advanced

| #   | Task                               | Description                                                          |
| --- | ---------------------------------- | -------------------------------------------------------------------- |
| A19 | **Widget / home screen shortcuts** | iOS/Android home screen widgets showing today's revenue, orders      |
| A20 | **Biometric auth**                 | Face ID / fingerprint to open the app (optional per user preference) |
| A21 | **Audit trail viewer**             | View audit logs for who did what. Backend already has AuditLog model |

---

## 5. Sync Monitoring (Owner-Facing)

The analytics app should give owners visibility into how well the POS desktops are syncing. This depends on the backend's `GET /sync/status` endpoint.

| #   | Task                      | Description                                                                                                |
| --- | ------------------------- | ---------------------------------------------------------------------------------------------------------- |
| SM1 | **Sync health dashboard** | Show sync status per POS device: last sync time, pending items, connection status. Call `GET /sync/status` |
| SM2 | **Sync alerts**           | Push notification or in-app banner when a device hasn't synced in X minutes                                |
| SM3 | **Sync conflict viewer**  | Display price drift warnings and deleted product conflicts from sync results                               |

### Sync Monitoring UI

```
┌─────────────────────────────────────┐
│  Sync Health                        │
├─────────────────────────────────────┤
│  📍 Store: Main Branch              │
│                                     │
│  POS-1   ● Online  Last: 2 min ago │
│  POS-2   ● Online  Last: 5 min ago │
│  POS-3   ○ Offline Last: 45 min    │
│              ⚠ 12 orders pending    │
│                                     │
│  ─────────────────────────────────  │
│  Conflicts (last 24h): 3           │
│  → 2 price drift  → 1 deleted item │
└─────────────────────────────────────┘
```

---

## 6. Phase-Wise Plan (Analytics Tasks Only)

### Phase 1 — Production Hardening

- [ ] Secure token storage + refresh flow (A1, A2)
- [ ] Global error handling with Dio interceptors (A3)
- [ ] Loading, empty, and error states across all screens (A4)
- [ ] Cache dashboard data locally (A5)

### Phase 2 — Analytics Depth

- [ ] Date range analytics with period comparison (A6)
- [ ] Inventory analytics (low stock, movement charts) (A7)
- [ ] Financial reports (revenue, tax, payment breakdown) (A8)
- [ ] Employee performance analytics (A9)
- [ ] Multi-store comparison view (A11)

### Phase 3 — Real-Time & Sync Monitoring

- [ ] Push notifications via FCM (A10)
- [ ] Real-time order feed via WebSocket/SSE (A12)
- [ ] Sync health dashboard (SM1)
- [ ] Sync alerts for offline POS devices (SM2)
- [ ] Sync conflict viewer (SM3)

### Phase 4 — Polish & Intelligence

- [ ] Data export to CSV/PDF (A13)
- [ ] Settings / preferences screen (A14)
- [ ] Guest / loyalty analytics (A15)
- [ ] Deep linking (A16)
- [ ] Dark mode + theming (A17)
- [ ] AI Agent improvements — charts, prompts, history (A18)
- [ ] Home screen widgets (A19)
- [ ] Biometric auth (A20)
- [ ] Audit trail viewer (A21)

---

> **NOTE**: Phase 1 is independent of backend sync work and can start immediately. Phase 3 (sync monitoring) depends on the backend's sync endpoints being built first.
