# POS Desktop App — Roadmap

## Table of Contents

1. [Architecture Context](#1-architecture-context)
2. [Current State](#2-current-state)
3. [What's Already Implemented](#3-whats-already-implemented)
4. [What Needs to Be Built](#4-what-needs-to-be-built)
5. [Offline-First Architecture & Sync Strategy](#5-offline-first-architecture--sync-strategy)
6. [Phase-Wise Plan (Desktop Tasks Only)](#6-phase-wise-plan-desktop-tasks-only)

---

## 1. Architecture Context

```
┌──────────────────────────────┐
│   POS Desktop App  ◀── YOU  │  Employee-facing
│   Flutter + Drift (SQLite)   │  Offline-first capable
└────────────┬─────────────────┘
             │ HTTP/REST (when online)
             │ Bulk sync (when reconnected)
             ▼
┌──────────────────────────────┐
│   POS Backend                │  Central server
│   FastAPI + PostgreSQL       │  42+ database tables
└────────────┬─────────────────┘
             │
             ▼
┌──────────────────────────────┐
│   POS Analytics App          │  Owner/admin-facing
└──────────────────────────────┘
```

**Data flow**: Desktop app creates orders/payments → stores locally (offline) → syncs to backend when online → Analytics app reads aggregated data.

---

## 2. Current State

| Capability                | Status              | Notes                                                 |
| ------------------------- | ------------------- | ----------------------------------------------------- |
| Order taking (POS)        | ✅ Full             | Product grid, cart, order summary                     |
| KOT / Kitchen display     | ✅ Full             | Status filter, KOT update                             |
| Authentication            | ✅ Email/JWT        | Token persisted in Drift                              |
| Dashboard                 | ✅ 6 sub-modules    | Sales, Inventory, Employees, Shifts, Products, Stores |
| Inventory CRUD            | ✅                  | Create/update items                                   |
| Shifts management         | ✅                  | Shift management with payment summaries               |
| Theme                     | ✅                  | Dark/light toggle in Drift                            |
| Network Layer             | ✅                  | HTTP interceptor, Bearer token, 401 handling          |
| Connection Checker        | ✅ Interface only   | Detects online/offline but no offline path            |
| **Offline mode**          | ❌ **Critical gap** | No local order queue, no sync                         |
| Local DB                  | ⚠️ Session only     | Only Users + AppSettings tables in Drift              |
| Settings page             | ❌ Stub             | `Text('Settings — coming soon')`                      |
| Receipt printing          | ❌                  |                                                       |
| Table management          | ❌                  | Model exists, no dedicated UI                         |
| Menu management           | ❌                  |                                                       |
| Expense tracking          | ❌                  |                                                       |
| Day close / end-of-shift  | ❌                  |                                                       |
| Discounts / split payment | ❌                  |                                                       |
| Billing / invoices        | ❌                  |                                                       |
| Delivery management       | ❌                  |                                                       |
| Guest / CRM               | ❌                  |                                                       |
| Purchasing / vendors      | ❌                  |                                                       |
| Tax group config          | ❌                  |                                                       |
| Aggregator integration    | ❌                  |                                                       |
| Notifications             | ❌                  |                                                       |
| Audit log viewer          | ❌                  |                                                       |
| Multi-language            | ❌                  | Locale in DB but no i18n setup                        |
| Biometric / app lock      | ❌                  | Setting in DB but no lock screen                      |
| Receipt printing          | ❌                  |                                                       |

---

## 3. What's Already Implemented

1. **Authentication** — Email/password login, JWT token persistence (Drift), 401 auto-logout, session management
2. **POS Home Screen** — Sidebar navigation, product grid, category tabs, cart management (add/remove/update quantity/notes), order summary panel, store selector
3. **Order Management** — Order list with status/type/payment filters, order detail view, update status, cancel order, process payment
4. **KOT (Kitchen Order Tickets)** — Kitchen display with order list, status filter (pending/preparing/ready), KOT status update
5. **Dashboard** — Grid navigation to 6 sub-modules: Sales, Inventory, Employees, Shifts, Products, Stores
6. **Theme** — Dark/light mode toggle persisted to local Drift DB
7. **App Settings Storage** — Dark mode, app lock, screenshot blocking, server endpoint, locale (stored in Drift, no UI)
8. **Network Layer** — `http` package with `InterceptedClient`, auto-attaches Bearer token, handles 401 globally
9. **Connection Checker** — Interface exists to detect online/offline state

---

## 4. What Needs to Be Built

### 🔴 CRITICAL — Offline-First Support (highest priority)

| #   | Task                           | Description                                                                                                                                                     |
| --- | ------------------------------ | --------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| D1  | **Local order storage tables** | Add Drift tables: `local_orders`, `local_order_items`, `local_payments`, `local_products`, `local_categories` — mirror backend schema                           |
| D2  | **Offline order queue**        | When offline, save orders to local Drift DB instead of failing. Mark with `sync_status = "pending"`                                                             |
| D3  | **Background sync service**    | Periodically check connectivity. When online, push all `pending` orders/payments via `POST /sync/orders` and `POST /sync/payments`. Mark as `synced` on success |
| D4  | **Product/category cache**     | On login or manual refresh, download products & categories from backend and cache in Drift. Use cached data for offline ordering                                |
| D5  | **Conflict resolution**        | Handle edge cases: what if a product was deleted while offline? Log conflicts, skip bad items, report to user                                                   |
| D6  | **Sync status indicator**      | Show sync status in the UI: "Online ✓", "Offline (12 orders pending sync)", "Syncing…"                                                                          |
| D7  | **Last-synced timestamp**      | Track and display when data was last synced to give employees confidence in data freshness                                                                      |

### 🟡 HIGH — Core POS Features

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

### 🟢 MEDIUM — Extended Features

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

### ⚪ LOW — Polish & Nice-to-Have

| #   | Task                                  | Description                                                                                  |
| --- | ------------------------------------- | -------------------------------------------------------------------------------------------- |
| D24 | **Multi-language / localization**     | Locale setting is stored in DB but no i18n setup. Add `flutter_localizations` and ARB files  |
| D25 | **Biometric / app lock**              | Setting stored in DB. Implement actual lock screen with PIN/biometric                        |
| D26 | **Keyboard shortcuts**                | Desktop-optimized shortcuts for common actions (new order, search product, complete payment) |
| D27 | **Sound alerts**                      | Audio notification for new KOT orders in kitchen display                                     |
| D28 | **Splash screen / loading**           | Better startup experience with branding                                                      |
| D29 | **Error reporting / crash analytics** | Add Sentry or similar for production error tracking                                          |

---

## 5. Offline-First Architecture & Sync Strategy

This is the **most critical architectural piece** for release readiness.

### 5.1 Architecture Overview

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

### 5.2 Local Database Tables to Add (Drift)

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

### 5.3 Sync Engine Design

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

### 5.4 Sync Flow — Step by Step

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

### 5.5 Backend Endpoints Needed for Sync

These are the backend endpoints this app depends on that don't exist yet:

| #   | Endpoint                       | Description                                                                                                                                  |
| --- | ------------------------------ | -------------------------------------------------------------------------------------------------------------------------------------------- |
| S1  | **`GET /sync/catalog`**        | Return products, categories, menus changed since a given timestamp. Accepts `?since=ISO_TIMESTAMP&store_id=UUID`. Returns only delta changes |
| S2  | **`GET /sync/store-config`**   | Return store settings, table count, employee list, tax groups for offline caching                                                            |
| S3  | **Extend `POST /sync/orders`** | Add conflict detection: check if product_id still exists, check price drift, return warnings alongside synced/failed counts                  |
| S4  | **`GET /sync/status`**         | Return sync health: last sync time per device, pending items, sync errors                                                                    |
| S5  | **Idempotency keys**           | Add `device_order_id` field to prevent duplicate syncs if the device retries a batch that partially succeeded                                |

---

## 6. Phase-Wise Plan (Desktop Tasks Only)

### Phase 1 — Offline-First MVP

- [ ] Add Drift tables for local orders, items, payments, cached products, categories, sync metadata (D1)
- [ ] Implement offline order queue — save to local DB when offline (D2)
- [ ] Build background sync service with retry logic (D3)
- [ ] Implement product/category caching on login (D4)
- [ ] Add conflict resolution logic (D5)
- [ ] Add sync status indicator in UI (D6, D7)

### Phase 2 — Core POS Completion

- [ ] Receipt printing (D9)
- [ ] Settings page (D8)
- [ ] Table management UI (D10)
- [ ] Day close / end-of-shift (D13)
- [ ] Discounts (D14)
- [ ] Multi-payment split (D15)
- [ ] Menu management (D11)
- [ ] Expense tracking (D12)

### Phase 3 — Extended Features

- [ ] Invoice generation (D16)
- [ ] Delivery management (D17)
- [ ] Guest / CRM (D18)
- [ ] Purchasing / vendors (D19)
- [ ] Tax groups (D20)
- [ ] Aggregator integration (D21)
- [ ] Notifications (D22)
- [ ] Audit log viewer (D23)

### Phase 4 — Polish & Scale

- [ ] Multi-language (D24)
- [ ] Biometric lock (D25)
- [ ] Keyboard shortcuts (D26)
- [ ] Sound alerts (D27)
- [ ] Splash screen (D28)
- [ ] Error reporting (D29)

---

> **NOTE**: The offline-first architecture (Phase 1) is the single most critical investment — a restaurant POS that doesn't work without internet is not viable for production use.
