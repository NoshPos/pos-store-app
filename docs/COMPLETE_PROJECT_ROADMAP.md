# Nosh POS Platform — Complete Project Roadmap

> **Three-project architecture**: POS Desktop App (employee-facing) → Backend (PostgreSQL via FastAPI) → POS Analytics App (owner/admin-facing)
>
> **Generated**: 11 March 2026

---

## Table of Contents

1. [Platform Architecture Overview](#1-platform-architecture-overview)
2. [Current State Summary](#2-current-state-summary)
3. [POS Desktop App — What's Done & What's Needed](#3-pos-desktop-app--whats-done--whats-needed)
4. [POS Backend — What's Done & What's Needed](#4-pos-backend--whats-done--whats-needed)
5. [POS Analytics App — What's Done & What's Needed](#5-pos-analytics-app--whats-done--whats-needed)
6. [Offline-First Architecture & Sync Strategy](#6-offline-first-architecture--sync-strategy)
7. [Priority-Ordered Task List](#7-priority-ordered-task-list)
8. [Phase-Wise Development Plan](#8-phase-wise-development-plan)

---

## 1. Platform Architecture Overview

```
┌──────────────────────────┐
│   POS Desktop App        │  Employee-facing (cashier, waiter, kitchen)
│   Flutter + Drift (SQLite)│  Runs on macOS/Windows/Linux
│   Offline-first capable  │
└────────────┬─────────────┘
             │ HTTP/REST (when online)
             │ Bulk sync (when reconnected)
             ▼
┌──────────────────────────┐
│   POS Backend            │  Central server
│   FastAPI + PostgreSQL   │  Auth, business logic, sync
│   Alembic migrations     │  42+ database tables
└────────────┬─────────────┘
             │ HTTP/REST
             ▼
┌──────────────────────────┐
│   POS Analytics App      │  Owner/admin-facing
│   Flutter + Dio          │  Mobile analytics dashboard
│   Gemini AI integration  │  Reports, monitoring, management
└──────────────────────────┘
```

**Data flow**: Desktop app creates orders/payments → syncs to backend → Analytics app reads aggregated data from backend.

---

## 2. Current State Summary

| Capability                 | Desktop App          | Backend                 | Analytics App          |
| -------------------------- | -------------------- | ----------------------- | ---------------------- |
| Order taking (POS)         | ✅ Full              | ✅ Full API             | ❌ N/A                 |
| KOT / Kitchen display      | ✅ Full              | ✅ Full API             | ❌                     |
| Authentication             | ✅ Email/JWT         | ✅ Email + Employee PIN | ✅ Email/JWT           |
| Dashboard / Analytics      | ✅ 6 sub-modules     | ✅ Analytics API        | ✅ Full                |
| AI Assistant               | ❌                   | ❌                      | ✅ Gemini 2.0          |
| Inventory CRUD             | ✅                   | ✅ Full                 | ⚠️ Repo only           |
| Shifts management          | ✅                   | ✅ + Day Close          | ⚠️ Repo only           |
| Offline mode               | ❌ **Critical gap**  | ✅ Sync endpoints ready | ❌ N/A                 |
| Local DB                   | Drift (session only) | PostgreSQL (42+ tables) | SharedPreferences only |
| Menu management            | ❌                   | ✅ Full models          | ⚠️ Repo only           |
| Purchasing / vendors       | ❌                   | ✅ Full models          | ⚠️ Page exists         |
| Integrations / aggregators | ❌                   | ✅ Models               | ⚠️ Page exists         |
| Settings                   | ❌ Stub              | N/A                     | N/A                    |
| Notifications              | ❌                   | ✅ Models               | ✅ Page exists         |
| Reports / export           | ❌                   | ✅ Report models        | ❌                     |
| Receipt printing           | ❌                   | N/A                     | N/A                    |
| Expense tracking           | ❌                   | ✅ Model exists         | ❌                     |
| Guest / CRM                | ❌                   | ✅ Model exists         | ⚠️ Repo only           |
| Delivery management        | ❌                   | ✅ Model exists         | ⚠️ Repo only           |
| Billing / invoices         | ❌                   | ✅ Models exist         | ⚠️ Repo only           |
| Tax groups / ledger        | ❌                   | ✅ Models exist         | ⚠️ Repo only           |
| Zones                      | ❌                   | ✅ Models exist         | ⚠️ Repo only           |
| Marketing / campaigns      | ❌                   | ✅ Models exist         | ⚠️ Repo only           |
| Audit logs                 | ❌                   | ✅ Model exists         | ⚠️ Repo only           |

---

## 3. POS Desktop App — What's Done & What's Needed

### ✅ Already Implemented

1. **Authentication** — Email/password login, JWT token persistence (Drift), 401 auto-logout, session management
2. **POS Home Screen** — Sidebar navigation, product grid, category tabs, cart management (add/remove/update quantity/notes), order summary panel, store selector
3. **Order Management** — Order list with status/type/payment filters, order detail view, update status, cancel order, process payment
4. **KOT (Kitchen Order Tickets)** — Kitchen display with order list, status filter (pending/preparing/ready), KOT status update
5. **Dashboard** — Grid navigation to 6 sub-modules: Sales, Inventory, Employees, Shifts, Products, Stores
6. **Theme** — Dark/light mode toggle persisted to local Drift DB
7. **App Settings Storage** — Dark mode, app lock, screenshot blocking, server endpoint, locale (stored in Drift, no UI)
8. **Network Layer** — `http` package with `InterceptedClient`, auto-attaches Bearer token, handles 401 globally
9. **Connection Checker** — Interface exists to detect online/offline state

### ❌ What Needs to Be Built

#### CRITICAL — Offline-First Support (highest priority)

| #   | Task                           | Description                                                                                                                                                     |
| --- | ------------------------------ | --------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| D1  | **Local order storage tables** | Add Drift tables: `local_orders`, `local_order_items`, `local_payments`, `local_products`, `local_categories` — mirror backend schema                           |
| D2  | **Offline order queue**        | When offline, save orders to local Drift DB instead of failing. Mark with `sync_status = "pending"`                                                             |
| D3  | **Background sync service**    | Periodically check connectivity. When online, push all `pending` orders/payments via `POST /sync/orders` and `POST /sync/payments`. Mark as `synced` on success |
| D4  | **Product/category cache**     | On login or manual refresh, download products & categories from backend and cache in Drift. Use cached data for offline ordering                                |
| D5  | **Conflict resolution**        | Handle edge cases: what if a product was deleted while offline? Log conflicts, skip bad items, report to user                                                   |
| D6  | **Sync status indicator**      | Show sync status in the UI: "Online ✓", "Offline (12 orders pending sync)", "Syncing…"                                                                          |
| D7  | **Last-synced timestamp**      | Track and display when data was last synced to give employees confidence in data freshness                                                                      |

#### HIGH — Core POS Features

| #   | Task                         | Description                                                                                                                                           |
| --- | ---------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------- |
| D8  | **Settings page**            | Replace stub with real settings: server endpoint, dark mode, locale, app lock, sync interval, printer config                                          |
| D9  | **Receipt printing**         | Integrate thermal printer support (ESC/POS protocol). Use `esc_pos_printer` or `flutter_pos_printer_platform` package. Support USB + network printers |
| D10 | **Table management UI**      | Visual table layout/grid. Assign orders to tables. Show occupied/available status. Backend already has `table_count` and `DineInTable` model          |
| D11 | **Menu management**          | CRUD for menus, menu items, pricing rules, schedules. Backend has full models (`menus`, `menu_items`, `menu_schedules`, `menu_pricing_rules`)         |
| D12 | **Expense tracking**         | Record daily expenses (ingredients, rent, utilities). Backend has `expenses` table ready                                                              |
| D13 | **Day close / end-of-shift** | Automated day-close report: total sales, payment breakdown, cash count variance. Backend has `day_closes` table and shift close logic                 |
| D14 | **Discount management**      | Apply percentage/fixed discounts to orders. Add coupon code support                                                                                   |
| D15 | **Multi-payment split**      | Split bill between cash + card + UPI. Backend already supports multiple payments per order                                                            |

#### MEDIUM — Extended Features

| #   | Task                               | Description                                                                                                                             |
| --- | ---------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------- |
| D16 | **Billing / invoice generation**   | Generate invoices from completed orders. Backend has `invoices` and `bill_templates` models                                             |
| D17 | **Delivery order management**      | Handle delivery orders: assign rider, track status, aggregator integration. Backend has `delivery_order_details` model                  |
| D18 | **Guest / CRM**                    | Link orders to guest profiles, track visit history, loyalty points. Backend has `guests` table                                          |
| D19 | **Purchasing / vendor management** | Create purchase orders, receive stock, manage vendors. Backend has full PO workflow                                                     |
| D20 | **Tax group configuration**        | Configure tax rates per product/category. Backend has `tax_groups` and `tax_rules`                                                      |
| D21 | **Aggregator integration**         | Connect Swiggy/Zomato. Receive orders from aggregators. Backend has `aggregator_configs`, `aggregator_store_links`, `aggregator_orders` |
| D22 | **Notification support**           | Push notifications for new orders, KOT updates, low stock alerts                                                                        |
| D23 | **Audit log viewer**               | View audit trail of actions (order cancellations, voids, edits). Backend has `audit_logs` table                                         |

#### LOW — Polish & Nice-to-Have

| #   | Task                                  | Description                                                                                  |
| --- | ------------------------------------- | -------------------------------------------------------------------------------------------- |
| D24 | **Multi-language / localization**     | Locale setting is stored in DB but no i18n setup. Add `flutter_localizations` and ARB files  |
| D25 | **Biometric / app lock**              | Setting stored in DB. Implement actual lock screen with PIN/biometric                        |
| D26 | **Keyboard shortcuts**                | Desktop-optimized shortcuts for common actions (new order, search product, complete payment) |
| D27 | **Sound alerts**                      | Audio notification for new KOT orders in kitchen display                                     |
| D28 | **Splash screen / loading**           | Better startup experience with branding                                                      |
| D29 | **Error reporting / crash analytics** | Add Sentry or similar for production error tracking                                          |

---

## 4. POS Backend — What's Done & What's Needed

### ✅ Already Implemented

1. **42+ PostgreSQL tables** covering all business domains
2. **23 route modules** — auth, stores, employees, products, orders, kitchen, analytics, menus, inventory, purchasing, delivery, shifts, billing, guests, ledger, integrations, marketing, audit, users, chains, groups, notifications, zones, reports
3. **Sync service** — `sync_orders()` and `sync_payments()` with per-record error isolation
4. **Auth** — Dual-path: owner email/password + employee PIN (store-scoped), JWT tokens
5. **Order lifecycle** — Full status transitions with KOT-aware logic
6. **Analytics endpoints** — Per-store and multi-store aggregation
7. **Shifts + day close** — Open/close with cash count variance
8. **Full inventory** — Items, stock levels, adjustments, recipes, transfers
9. **Full purchasing** — Vendors, purchase orders, receipts

### ❌ What Needs to Be Built

| #   | Task                                  | Description                                                                                                                                   |
| --- | ------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------- |
| B1  | **WebSocket / real-time updates**     | Add WebSocket support for live KOT push to kitchen display, live order updates to analytics app. Use FastAPI WebSockets or Server-Sent Events |
| B2  | **Sync conflict resolution endpoint** | Extend sync service to handle conflicts (deleted products, changed prices). Return detailed conflict reports                                  |
| B3  | **Product catalog sync endpoint**     | `GET /sync/catalog?since={timestamp}` — return products, categories, menus changed since last sync for desktop app to cache locally           |
| B4  | **Image upload / file storage**       | Product images, profile photos, receipt attachments. Use S3/MinIO or local file storage                                                       |
| B5  | **Email / SMS notification service**  | Outbound notifications for order confirmations, daily reports. Use SendGrid, Twilio, or AWS SES                                               |
| B6  | **Background task queue**             | Add Celery/ARQ for async jobs: report generation, bulk data processing, email sending, scheduled tasks                                        |
| B7  | **Rate limiting**                     | Add request throttling to prevent abuse. Use `slowapi` or custom middleware                                                                   |
| B8  | **CORS hardening**                    | Replace `allow_origins=["*"]` with specific frontend domains in production                                                                    |
| B9  | **Health check improvements**         | Add DB connection check, disk space, queue health to `/health` endpoint                                                                       |
| B10 | **API versioning**                    | Add `/api/v1/` prefix for future-proofing                                                                                                     |
| B11 | **Data export endpoints**             | CSV/Excel export for orders, inventory, reports for analytics app                                                                             |
| B12 | **Dashboard aggregation caching**     | Cache analytics queries (Redis) to avoid expensive re-computation on every request                                                            |
| B13 | **Scheduled reports**                 | Auto-generate daily/weekly/monthly reports and store results in `report_runs`                                                                 |
| B14 | **Multi-tenant middleware**           | Add middleware-level store isolation for extra security                                                                                       |
| B15 | **Receipt template engine**           | Generate receipt HTML/PDF from order data using bill templates                                                                                |
| B16 | **Webhook support**                   | Inbound/outbound webhooks for aggregator integrations                                                                                         |

---

## 5. POS Analytics App — What's Done & What's Needed

### ✅ Already Implemented

1. **Authentication** — Email/password login + registration, JWT persistence (SharedPreferences), role-based access (owner/admin gate)
2. **Dashboard** — Date-filtered sales stats (totalSales, netSales, totalOrders, grossSales, tax, discounts, payment method breakdown), outlet statistics, multi-store outlet picker
3. **AI Chat Assistant** — Full Gemini 2.0 flash-lite integration, POS-scoped system prompt, chat history, typing indicators
4. **Running Orders** — Live order tracking page
5. **Online Orders** — Data table with filter section
6. **Menu & Store Management** — Menu and store actions pages
7. **Store Status Tracking** — Store monitoring page
8. **Pending Purchases** — Purchase tracking with filter section
9. **Notifications** — Notification page
10. **Third-party Config** — Integration configuration page
11. **Sales Reports** — Report detail page
12. **Navigation** — Drawer-based with 20+ routes, `CommonScaffold` wrapper
13. **Global Store Selection** — Persisted to SharedPreferences, supports "All Outlets" mode
14. **24 repository classes** covering all backend domains

### ❌ What Needs to Be Built

#### HIGH — Core Analytics Features

| #   | Task                             | Description                                                                                                                                                                   |
| --- | -------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| A1  | **Charts & graphs**              | Add `fl_chart` or `syncfusion_flutter_charts` for sales trends, revenue graphs, order volume charts. `orders_chart_section` widget exists but charting library not integrated |
| A2  | **Real-time dashboard updates**  | WebSocket or polling-based live updates for running orders, kitchen status, sales counters                                                                                    |
| A3  | **Detailed reports**             | Employee performance, product popularity, peak hours, category-wise sales, payment method trends. Backend has `report_templates` and `report_runs`                            |
| A4  | **Data export**                  | Export reports as CSV, PDF, or Excel. Share via email/device sharing                                                                                                          |
| A5  | **Date range comparisons**       | Compare current period vs previous (today vs yesterday, this week vs last week, MTD vs prev MTD)                                                                              |
| A6  | **Inventory alerts / dashboard** | Low stock warnings, reorder notifications, stock value summary. Connect `inventory_items.reorder_level`                                                                       |

#### MEDIUM — Management Features

| #   | Task                              | Description                                                                                               |
| --- | --------------------------------- | --------------------------------------------------------------------------------------------------------- |
| A7  | **Employee management UI**        | Full employee list, create/edit, role assignment, schedule management. Repository exists, needs UI wiring |
| A8  | **Product management UI**         | Product CRUD with images, pricing, category assignment. Models exist, 0 UI usages currently               |
| A9  | **Inventory management UI**       | Stock levels, adjustments, transfers, recipe management. Repository registered but UI incomplete          |
| A10 | **Shift oversight**               | View all shifts across stores, cash variance alerts, day close reports                                    |
| A11 | **Guest / CRM dashboard**         | Guest visit frequency, spending patterns, loyalty program management                                      |
| A12 | **Delivery tracking**             | Monitor active deliveries, rider performance, delivery time analytics                                     |
| A13 | **Billing / invoice viewer**      | View and manage invoices, payment history across stores                                                   |
| A14 | **Marketing campaign management** | Create/track campaigns, promotion performance analytics                                                   |
| A15 | **Audit log viewer**              | View all audit events across stores for compliance                                                        |
| A16 | **Zone management**               | Manage delivery zones, store groupings                                                                    |

#### LOW — Polish

| #   | Task                       | Description                                                                                     |
| --- | -------------------------- | ----------------------------------------------------------------------------------------------- |
| A17 | **Push notifications**     | Firebase Cloud Messaging for order alerts, daily summaries, low stock warnings                  |
| A18 | **Global search**          | Search across orders, products, employees, stores                                               |
| A19 | **Caching layer**          | Add local caching (Hive or Drift) to speed up dashboard loads and provide basic offline viewing |
| A20 | **Onboarding flow**        | Guided setup for new owners: create store → add products → invite employees                     |
| A21 | **Multi-language support** | Localization for Hindi, regional languages                                                      |

---

## 6. Offline-First Architecture & Sync Strategy

This is the **most critical architectural piece** for the POS Desktop App. Here's the complete strategy:

### 6.1 Architecture Overview

```
┌───────────────────────────────────────────────────────┐
│                  POS Desktop App                       │
│                                                        │
│  ┌─────────────┐    ┌──────────────┐    ┌───────────┐ │
│  │ UI / Views  │───▶│ Repositories │───▶│ Drift DB  │ │
│  └─────────────┘    └──────┬───────┘    │ (SQLite)  │ │
│                            │            └─────┬─────┘ │
│                     ┌──────▼───────┐          │       │
│                     │ Sync Engine  │◀─────────┘       │
│                     └──────┬───────┘                   │
│                            │                           │
└────────────────────────────┼───────────────────────────┘
                             │ (when online)
                             ▼
                     ┌───────────────┐
                     │  POS Backend  │
                     │  PostgreSQL   │
                     └───────────────┘
```

### 6.2 Local Database Tables to Add (Drift)

```dart
// Orders created offline
class LocalOrders extends Table {
  TextColumn get id => text()();                    // UUID
  TextColumn get storeId => text()();
  TextColumn get employeeId => text().nullable()();
  TextColumn get terminalId => text().nullable()();
  IntColumn get tableNumber => integer().nullable()();
  TextColumn get orderType => text().withDefault(const Constant('dine_in'))();
  TextColumn get status => text().withDefault(const Constant('open'))();
  RealColumn get grossAmount => real().withDefault(const Constant(0.0))();
  RealColumn get taxAmount => real().withDefault(const Constant(0.0))();
  RealColumn get discountAmount => real().withDefault(const Constant(0.0))();
  RealColumn get netAmount => real().withDefault(const Constant(0.0))();
  TextColumn get paymentStatus => text().withDefault(const Constant('pending'))();
  TextColumn get notes => text().nullable()();
  TextColumn get deviceId => text().nullable()();
  TextColumn get syncStatus => text().withDefault(const Constant('pending'))();
  // pending | syncing | synced | failed
  DateTimeColumn get createdAt => dateTime()();
  DateTimeColumn get updatedAt => dateTime().nullable()();

  @override
  Set<Column> get primaryKey => {id};
}

// Items within offline orders
class LocalOrderItems extends Table {
  TextColumn get id => text()();
  TextColumn get orderId => text()();
  TextColumn get productId => text()();
  TextColumn get productName => text()();
  IntColumn get quantity => integer()();
  RealColumn get price => real()();
  RealColumn get total => real()();
  TextColumn get notes => text().nullable()();

  @override
  Set<Column> get primaryKey => {id};
}

// Payments made offline
class LocalPayments extends Table {
  TextColumn get id => text()();
  TextColumn get orderId => text()();
  TextColumn get method => text()();  // cash | card | upi | wallet
  RealColumn get amount => real()();
  TextColumn get reference => text().nullable()();
  TextColumn get syncStatus => text().withDefault(const Constant('pending'))();
  DateTimeColumn get createdAt => dateTime()();

  @override
  Set<Column> get primaryKey => {id};
}

// Cached product catalog for offline use
class CachedProducts extends Table {
  TextColumn get id => text()();
  TextColumn get storeId => text()();
  TextColumn get categoryId => text().nullable()();
  TextColumn get categoryName => text().nullable()();
  TextColumn get name => text()();
  TextColumn get description => text().nullable()();
  RealColumn get price => real()();
  RealColumn get taxPercent => real().withDefault(const Constant(0.0))();
  BoolColumn get isActive => boolean().withDefault(const Constant(true))();
  DateTimeColumn get lastSyncedAt => dateTime()();

  @override
  Set<Column> get primaryKey => {id};
}

// Cached categories for offline use
class CachedCategories extends Table {
  TextColumn get id => text()();
  TextColumn get storeId => text()();
  TextColumn get name => text()();
  DateTimeColumn get lastSyncedAt => dateTime()();

  @override
  Set<Column> get primaryKey => {id};
}

// Sync metadata tracking
class SyncMetadata extends Table {
  TextColumn get key => text()();       // e.g., "products_last_sync", "orders_last_push"
  TextColumn get value => text()();     // timestamp or other metadata
  DateTimeColumn get updatedAt => dateTime()();

  @override
  Set<Column> get primaryKey => {key};
}
```

### 6.3 Sync Engine Design

```
┌─────────────────────────────────────────────────┐
│                 Sync Engine                       │
│                                                   │
│  1. ConnectionMonitor                             │
│     - Continuously monitors internet connectivity │
│     - Emits online/offline state changes          │
│                                                   │
│  2. OutboundSyncWorker (push)                     │
│     - Triggered when: online & pending items exist│
│     - Picks up pending orders → POST /sync/orders │
│     - Picks up pending payments → POST /sync/payments│
│     - Updates sync_status on success/failure      │
│     - Retries failed items with exponential backoff│
│                                                   │
│  3. InboundSyncWorker (pull)                      │
│     - Triggered: on login, periodically, manually │
│     - GET /sync/catalog?since=lastSync            │
│     - Updates CachedProducts & CachedCategories   │
│     - Downloads latest store config               │
│                                                   │
│  4. ConflictResolver                              │
│     - Handles deleted products (keep name, flag)  │
│     - Handles price changes (use offline price)   │
│     - Logs all conflicts for review               │
│                                                   │
│  5. SyncStatusNotifier (Riverpod)                 │
│     - Exposes: isOnline, pendingOrderCount,       │
│       pendingPaymentCount, lastSyncTime,          │
│       isSyncing, syncErrors                       │
│     - UI widgets observe this for status display  │
└─────────────────────────────────────────────────┘
```

### 6.4 Sync Flow — Step by Step

#### When OFFLINE (creating an order):

1. Employee taps "Place Order" on POS
2. Repository checks `ConnectionChecker.isConnected`
3. **Offline path**: Save order to `LocalOrders` + `LocalOrderItems` in Drift with `syncStatus = "pending"`
4. Assign a local UUID as the order ID
5. Show order in the orders list from local DB
6. Increment pending sync counter in `SyncStatusNotifier`

#### When ONLINE (sync kicks in):

1. `ConnectionMonitor` detects connectivity restored
2. `OutboundSyncWorker` queries all `LocalOrders` where `syncStatus = "pending"`
3. Batches orders (e.g., 50 at a time) and sends `POST /sync/orders`
4. Backend processes each order individually, returns `SyncResponse { synced, failed, errors }`
5. For synced orders: set `syncStatus = "synced"` in local DB
6. For failed orders: set `syncStatus = "failed"`, log error, retry later
7. Repeat for `LocalPayments`
8. `InboundSyncWorker` runs: `GET /sync/catalog?since={lastSync}` → updates local product cache
9. Update `SyncMetadata` with new timestamps

#### When ONLINE (normal operation):

1. Employee taps "Place Order"
2. Repository checks `ConnectionChecker.isConnected`
3. **Online path**: Send directly to backend API
4. **Also** save to local DB with `syncStatus = "synced"` (for local order history / fallback)

### 6.5 What to Build on Backend for Sync

| #   | Task                           | Description                                                                                                                                  |
| --- | ------------------------------ | -------------------------------------------------------------------------------------------------------------------------------------------- |
| S1  | **`GET /sync/catalog`**        | Return products, categories, menus changed since a given timestamp. Accepts `?since=ISO_TIMESTAMP&store_id=UUID`. Returns only delta changes |
| S2  | **`GET /sync/store-config`**   | Return store settings, table count, employee list, tax groups for offline caching                                                            |
| S3  | **Extend `POST /sync/orders`** | Add conflict detection: check if product_id still exists, check price drift, return warnings alongside synced/failed counts                  |
| S4  | **`GET /sync/status`**         | Return sync health: last sync time per device, pending items, sync errors — for analytics app monitoring                                     |
| S5  | **Idempotency keys**           | Add `device_order_id` field to prevent duplicate syncs if the device retries a batch that partially succeeded                                |

### 6.6 What to Build on Analytics App for Sync Monitoring

| #   | Task                       | Description                                                                                                  |
| --- | -------------------------- | ------------------------------------------------------------------------------------------------------------ |
| SM1 | **Sync health dashboard**  | Show per-store, per-device sync status: last sync time, pending items, failed syncs                          |
| SM2 | **Conflict resolution UI** | When sync conflicts occur (price mismatches, deleted products), show them to the owner for manual resolution |
| SM3 | **Device management**      | List all POS terminals/devices, their last seen time, sync status                                            |

---

## 7. Priority-Ordered Task List

### 🔴 CRITICAL (Must have for MVP release)

| #   | Project   | Task                               | Why Critical                                         |
| --- | --------- | ---------------------------------- | ---------------------------------------------------- |
| 1   | Desktop   | D1–D7: Full offline-first support  | POS must work without internet                       |
| 2   | Backend   | S1–S5: Sync infrastructure         | Enables offline ↔ backend data flow                  |
| 3   | Desktop   | D9: Receipt printing               | Restaurants need physical receipts                   |
| 4   | Desktop   | D8: Settings page                  | Employees need to configure server endpoint, printer |
| 5   | Desktop   | D10: Table management              | Core dine-in restaurant workflow                     |
| 6   | Desktop   | D13: Day close / end-of-shift      | Mandatory for daily accounting                       |
| 7   | Desktop   | D14–D15: Discounts + split payment | Expected POS functionality                           |
| 8   | Backend   | B8: CORS hardening                 | Security requirement for production                  |
| 9   | Analytics | A1: Charts & graphs                | Dashboard meaningless without visualizations         |
| 10  | Analytics | A2: Real-time updates              | Owners need live data                                |

### 🟡 HIGH (Needed for full product)

| #   | Project   | Task                              |
| --- | --------- | --------------------------------- |
| 11  | Desktop   | D11: Menu management              |
| 12  | Desktop   | D12: Expense tracking             |
| 13  | Desktop   | D16: Invoice generation           |
| 14  | Desktop   | D17: Delivery order management    |
| 15  | Backend   | B1: WebSocket / real-time updates |
| 16  | Backend   | B3: Product catalog sync endpoint |
| 17  | Backend   | B4: Image upload / file storage   |
| 18  | Backend   | B10: API versioning               |
| 19  | Analytics | A3: Detailed reports              |
| 20  | Analytics | A4: Data export (CSV/PDF)         |
| 21  | Analytics | A5: Date range comparisons        |
| 22  | Analytics | A6: Inventory alerts              |
| 23  | Analytics | A7: Employee management UI        |
| 24  | Analytics | A8: Product management UI         |

### 🟢 MEDIUM (Feature-complete product)

| #   | Project   | Task                         |
| --- | --------- | ---------------------------- |
| 25  | Desktop   | D18: Guest / CRM             |
| 26  | Desktop   | D19: Purchasing / vendors    |
| 27  | Desktop   | D20: Tax group config        |
| 28  | Desktop   | D21: Aggregator integration  |
| 29  | Desktop   | D22: Notifications           |
| 30  | Desktop   | D23: Audit log viewer        |
| 31  | Backend   | B2: Sync conflict resolution |
| 32  | Backend   | B5: Email / SMS              |
| 33  | Backend   | B6: Background task queue    |
| 34  | Backend   | B7: Rate limiting            |
| 35  | Backend   | B11: Data export endpoints   |
| 36  | Backend   | B12: Dashboard caching       |
| 37  | Analytics | A9–A16: Management UIs       |
| 38  | Analytics | SM1–SM3: Sync monitoring     |

### ⚪ LOW (Polish & nice-to-have)

| #   | Project   | Task                                                           |
| --- | --------- | -------------------------------------------------------------- |
| 39  | Desktop   | D24: Multi-language                                            |
| 40  | Desktop   | D25: Biometric lock                                            |
| 41  | Desktop   | D26: Keyboard shortcuts                                        |
| 42  | Desktop   | D27: Sound alerts                                              |
| 43  | Desktop   | D28: Splash screen                                             |
| 44  | Desktop   | D29: Error reporting                                           |
| 45  | Backend   | B9: Health check improvements                                  |
| 46  | Backend   | B13–B16: Scheduled reports, webhooks, templates                |
| 47  | Analytics | A17–A21: Push notifications, search, caching, onboarding, i18n |

---

## 8. Phase-Wise Development Plan

### Phase 1 — Offline-First MVP

**Goal**: POS Desktop App works fully offline, syncs when online. Basic analytics visible.

- [ ] **Desktop**: Add Drift tables for local orders, items, payments, cached products, categories, sync metadata (D1)
- [ ] **Desktop**: Implement offline order queue — save to local DB when offline (D2)
- [ ] **Desktop**: Build background sync service with retry logic (D3)
- [ ] **Desktop**: Implement product/category caching on login (D4)
- [ ] **Desktop**: Add conflict resolution logic (D5)
- [ ] **Desktop**: Add sync status indicator in UI (D6, D7)
- [ ] **Backend**: Build `GET /sync/catalog` endpoint (S1)
- [ ] **Backend**: Build `GET /sync/store-config` endpoint (S2)
- [ ] **Backend**: Add idempotency keys to sync (S5)
- [ ] **Backend**: Harden CORS for production (B8)

### Phase 2 — Core POS Completion

**Goal**: Desktop app has all essential POS features for restaurant operations.

- [ ] **Desktop**: Receipt printing (D9)
- [ ] **Desktop**: Settings page (D8)
- [ ] **Desktop**: Table management UI (D10)
- [ ] **Desktop**: Day close / end-of-shift (D13)
- [ ] **Desktop**: Discounts (D14)
- [ ] **Desktop**: Multi-payment split (D15)
- [ ] **Desktop**: Menu management (D11)
- [ ] **Desktop**: Expense tracking (D12)
- [ ] **Analytics**: Charts & graphs library integration (A1)
- [ ] **Analytics**: Date range comparisons (A5)

### Phase 3 — Real-Time & Analytics

**Goal**: Live data flow from POS to analytics. Comprehensive reporting.

- [ ] **Backend**: WebSocket / SSE for real-time updates (B1)
- [ ] **Backend**: API versioning (B10)
- [ ] **Backend**: Image upload / storage (B4)
- [ ] **Analytics**: Real-time dashboard updates (A2)
- [ ] **Analytics**: Detailed reports (A3)
- [ ] **Analytics**: Data export CSV/PDF (A4)
- [ ] **Analytics**: Inventory alerts dashboard (A6)
- [ ] **Analytics**: Employee management UI (A7)
- [ ] **Analytics**: Product management UI (A8)

### Phase 4 — Extended Features

**Goal**: Delivery, CRM, integrations, vendor management.

- [ ] **Desktop**: Invoice generation (D16)
- [ ] **Desktop**: Delivery management (D17)
- [ ] **Desktop**: Guest / CRM (D18)
- [ ] **Desktop**: Purchasing / vendors (D19)
- [ ] **Desktop**: Tax groups (D20)
- [ ] **Desktop**: Aggregator integration (D21)
- [ ] **Backend**: Sync conflict resolution endpoint (B2)
- [ ] **Backend**: Email / SMS service (B5)
- [ ] **Backend**: Background task queue (B6)
- [ ] **Backend**: Data export endpoints (B11)
- [ ] **Analytics**: Remaining management UIs (A9–A16)
- [ ] **Analytics**: Sync health monitoring (SM1–SM3)

### Phase 5 — Polish & Scale

**Goal**: Production hardening, multi-language, notifications, advanced features.

- [ ] **Desktop**: Multi-language (D24)
- [ ] **Desktop**: Biometric lock (D25)
- [ ] **Desktop**: Keyboard shortcuts (D26)
- [ ] **Desktop**: Sound alerts (D27)
- [ ] **Desktop**: Error reporting (D29)
- [ ] **Backend**: Rate limiting (B7)
- [ ] **Backend**: Dashboard caching (B12)
- [ ] **Backend**: Scheduled reports (B13)
- [ ] **Backend**: Receipt template engine (B15)
- [ ] **Backend**: Webhook support (B16)
- [ ] **Analytics**: Push notifications (A17)
- [ ] **Analytics**: Global search (A18)
- [ ] **Analytics**: Local caching (A19)
- [ ] **Analytics**: Onboarding flow (A20)
- [ ] **Analytics**: Multi-language (A21)

---

> **NOTE**: This roadmap is a living document. Update task statuses as work progresses. The offline-first architecture (Phase 1) is the single most critical investment — a restaurant POS that doesn't work without internet is not viable for production use.
