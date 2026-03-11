# POS Backend — Roadmap

## Table of Contents

1. [Architecture Context](#1-architecture-context)
2. [Current State](#2-current-state)
3. [What's Already Implemented](#3-whats-already-implemented)
4. [What Needs to Be Built](#4-what-needs-to-be-built)
5. [Sync Infrastructure (for Desktop Offline Support)](#5-sync-infrastructure-for-desktop-offline-support)
6. [Phase-Wise Plan (Backend Tasks Only)](#6-phase-wise-plan-backend-tasks-only)

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
│   POS Backend  ◀── YOU       │  Central server
│   FastAPI + PostgreSQL       │  Auth, business logic, sync
│   Alembic migrations         │  42+ database tables
└────────────┬─────────────────┘
             │ HTTP/REST
             ▼
┌──────────────────────────────┐
│   POS Analytics App          │  Owner/admin-facing
└──────────────────────────────┘
```

**Data flow**: Desktop app creates orders/payments → syncs to backend → Analytics app reads aggregated data from backend.

---

## 2. Current State

| Capability                   | Status               | Notes                                         |
| ---------------------------- | -------------------- | --------------------------------------------- |
| Database tables              | ✅ 42+ tables        | All business domains covered                  |
| Route modules                | ✅ 23 modules        | All major feature areas have routes           |
| Auth (owner email + emp PIN) | ✅ Full              | JWT tokens, 8 role types                      |
| Order lifecycle              | ✅ Full              | KOT-aware status transitions                  |
| Sync service                 | ✅ Orders + Payments | Bulk ingest with per-record error isolation   |
| Analytics endpoints          | ✅                   | Per-store and multi-store aggregation         |
| Shifts + day close           | ✅                   | Cash count variance                           |
| Full inventory               | ✅                   | Items, stock, adjustments, recipes, transfers |
| Full purchasing              | ✅                   | Vendors, POs, receipts                        |
| Alembic migrations           | ✅ 8 versions        |                                               |
| WebSocket / real-time        | ❌                   |                                               |
| Catalog sync endpoint        | ❌                   | Desktop needs this for offline caching        |
| Image upload / storage       | ❌                   |                                               |
| Email / SMS                  | ❌                   |                                               |
| Background task queue        | ❌                   |                                               |
| Rate limiting                | ❌                   |                                               |
| CORS hardening               | ❌                   | Currently `allow_origins=["*"]`               |
| API versioning               | ❌                   |                                               |
| Data export (CSV/Excel)      | ❌                   |                                               |
| Dashboard caching            | ❌                   |                                               |

---

## 3. What's Already Implemented

1. **42+ PostgreSQL tables** covering all business domains
2. **23 route modules** — auth, stores, employees, products, orders, kitchen, analytics, menus, inventory, purchasing, delivery, shifts, billing, guests, ledger, integrations, marketing, audit, users, chains, groups, notifications, zones, reports
3. **Sync service** — `sync_orders()` and `sync_payments()` with per-record error isolation, returns `SyncResponse { synced, failed, errors }`
4. **Auth** — Dual-path: owner email/password + employee PIN (store-scoped), JWT tokens, 8 roles (owner/manager/supervisor/cashier/waiter/kitchen/accountant/admin)
5. **Order lifecycle** — Full status transitions with KOT-aware logic (open → sent_to_kitchen → preparing → ready → completed → paid)
6. **Analytics endpoints** — Per-store summary (revenue, orders, tax, gross, net, discounts, payment breakdown), multi-store "by-store" aggregation
7. **Shifts + day close** — Open/close with cash counts, variance calculation, JSONB payment & order type breakdowns
8. **Full inventory** — Units, locations, items (with thresholds, costs, vendor refs, tags), stock levels, stock adjustments, recipes + recipe lines, stock transfers
9. **Full purchasing** — Vendors, purchase orders + lines, purchase receipts + lines
10. **Models for**: billing (KOT, Invoice, BillTemplate), guests, integrations (AggregatorConfig, AggregatorStoreLink, AggregatorOrder, IntegrationLog), marketing (Campaign), notifications (Notification, DeviceToken), zones (Zone, ZoneStoreLink), permission groups, reports (ReportTemplate, ReportRun), tax (TaxGroup, TaxRule), ledger (CityLedgerAccount, CityLedgerTransaction), audit (AuditLog), expenses (Expense), delivery (DeliveryOrderDetails)

---

## 4. What Needs to Be Built

### 🔴 CRITICAL — Production & Sync

| #   | Task                           | Description                                                                                                                                  |
| --- | ------------------------------ | -------------------------------------------------------------------------------------------------------------------------------------------- |
| B8  | **CORS hardening**             | Replace `allow_origins=["*"]` with specific frontend domains in production                                                                   |
| S1  | **`GET /sync/catalog`**        | Return products, categories, menus changed since a given timestamp. Accepts `?since=ISO_TIMESTAMP&store_id=UUID`. Returns only delta changes |
| S2  | **`GET /sync/store-config`**   | Return store settings, table count, employee list, tax groups for offline caching                                                            |
| S3  | **Extend `POST /sync/orders`** | Add conflict detection: check if product_id still exists, check price drift, return warnings alongside synced/failed counts                  |
| S4  | **`GET /sync/status`**         | Return sync health: last sync time per device, pending items, sync errors — for analytics app monitoring                                     |
| S5  | **Idempotency keys**           | Add `device_order_id` field to prevent duplicate syncs if the device retries a batch that partially succeeded                                |

### 🟡 HIGH — Core Infrastructure

| #   | Task                              | Description                                                                                                                                   |
| --- | --------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------- |
| B1  | **WebSocket / real-time updates** | Add WebSocket support for live KOT push to kitchen display, live order updates to analytics app. Use FastAPI WebSockets or Server-Sent Events |
| B3  | **Product catalog sync endpoint** | `GET /sync/catalog?since={timestamp}` — return products, categories, menus changed since last sync for desktop app to cache locally           |
| B4  | **Image upload / file storage**   | Product images, profile photos, receipt attachments. Use S3/MinIO or local file storage                                                       |
| B10 | **API versioning**                | Add `/api/v1/` prefix for future-proofing                                                                                                     |

### 🟢 MEDIUM — Extended Infrastructure

| #   | Task                                  | Description                                                                                                  |
| --- | ------------------------------------- | ------------------------------------------------------------------------------------------------------------ |
| B2  | **Sync conflict resolution endpoint** | Extend sync service to handle conflicts (deleted products, changed prices). Return detailed conflict reports |
| B5  | **Email / SMS notification service**  | Outbound notifications for order confirmations, daily reports. Use SendGrid, Twilio, or AWS SES              |
| B6  | **Background task queue**             | Add Celery/ARQ for async jobs: report generation, bulk data processing, email sending, scheduled tasks       |
| B7  | **Rate limiting**                     | Add request throttling to prevent abuse. Use `slowapi` or custom middleware                                  |
| B11 | **Data export endpoints**             | CSV/Excel export for orders, inventory, reports for analytics app                                            |
| B12 | **Dashboard aggregation caching**     | Cache analytics queries (Redis) to avoid expensive re-computation on every request                           |
| B14 | **Multi-tenant middleware**           | Add middleware-level store isolation for extra security                                                      |

### ⚪ LOW — Polish & Advanced

| #   | Task                          | Description                                                                   |
| --- | ----------------------------- | ----------------------------------------------------------------------------- |
| B9  | **Health check improvements** | Add DB connection check, disk space, queue health to `/health` endpoint       |
| B13 | **Scheduled reports**         | Auto-generate daily/weekly/monthly reports and store results in `report_runs` |
| B15 | **Receipt template engine**   | Generate receipt HTML/PDF from order data using bill templates                |
| B16 | **Webhook support**           | Inbound/outbound webhooks for aggregator integrations                         |

---

## 5. Sync Infrastructure (for Desktop Offline Support)

The desktop POS app needs to work offline. The backend's `sync_service.py` already handles `sync_orders()` and `sync_payments()`. These are the **new endpoints** needed:

### 5.1 `GET /sync/catalog`

**Purpose**: Desktop app downloads product/category catalog for offline use.

```
GET /sync/catalog?store_id={uuid}&since={ISO_TIMESTAMP}

Response:
{
  "products": [ ... ],       // only products updated since {since}
  "categories": [ ... ],     // only categories updated since {since}
  "deleted_product_ids": [ ... ],  // products deleted since {since}
  "deleted_category_ids": [ ... ],
  "server_time": "2026-03-11T10:00:00Z"   // client stores this as next "since"
}
```

### 5.2 `GET /sync/store-config`

**Purpose**: Desktop app downloads store configuration for offline use.

```
GET /sync/store-config?store_id={uuid}

Response:
{
  "store": { ... },
  "table_count": 20,
  "employees": [ ... ],
  "tax_groups": [ ... ],
  "tax_rules": [ ... ]
}
```

### 5.3 Extend `POST /sync/orders`

**Current**: Accepts batch of orders, returns synced/failed counts.
**Add**: Conflict detection + warnings.

```
POST /sync/orders

Response (enhanced):
{
  "synced": 48,
  "failed": 2,
  "errors": [ ... ],
  "warnings": [
    { "device_order_id": "abc", "type": "price_drift", "product_id": "xyz", "offline_price": 150, "current_price": 175 },
    { "device_order_id": "def", "type": "product_deleted", "product_id": "uvw" }
  ]
}
```

### 5.4 `GET /sync/status`

**Purpose**: Analytics app monitors sync health across all devices.

```
GET /sync/status?store_id={uuid}

Response:
{
  "devices": [
    { "device_id": "pos-1", "last_sync": "2026-03-11T09:45:00Z", "pending_orders": 0 },
    { "device_id": "pos-2", "last_sync": "2026-03-11T08:30:00Z", "pending_orders": 12 }
  ]
}
```

### 5.5 Idempotency Keys

Add `device_order_id` (String) column to the `orders` table. Desktop app generates a local UUID for each order and sends it during sync. Backend checks for duplicates before inserting.

```sql
ALTER TABLE orders ADD COLUMN device_order_id VARCHAR(255) UNIQUE;
```

---

## 6. Phase-Wise Plan (Backend Tasks Only)

### Phase 1 — Sync Infrastructure + Production Hardening

- [ ] Build `GET /sync/catalog` endpoint (S1)
- [ ] Build `GET /sync/store-config` endpoint (S2)
- [ ] Extend `POST /sync/orders` with conflict detection (S3)
- [ ] Build `GET /sync/status` endpoint (S4)
- [ ] Add idempotency keys to orders table + sync endpoint (S5)
- [ ] Harden CORS for production (B8)

### Phase 2 — Real-Time & Media

- [ ] WebSocket / SSE for real-time updates (B1)
- [ ] API versioning — `/api/v1/` prefix (B10)
- [ ] Image upload / file storage (B4)

### Phase 3 — Extended Infrastructure

- [ ] Sync conflict resolution endpoint (B2)
- [ ] Email / SMS notification service (B5)
- [ ] Background task queue — Celery/ARQ (B6)
- [ ] Data export endpoints — CSV/Excel (B11)

### Phase 4 — Scale & Hardening

- [ ] Rate limiting (B7)
- [ ] Dashboard aggregation caching — Redis (B12)
- [ ] Multi-tenant middleware (B14)
- [ ] Health check improvements (B9)
- [ ] Scheduled reports (B13)
- [ ] Receipt template engine (B15)
- [ ] Webhook support (B16)

---

> **NOTE**: Phase 1 (sync infrastructure) is blocking the Desktop App's offline capability. This should be prioritized above all other backend work.
