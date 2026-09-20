CREATE TABLE IF NOT EXISTS users (id INTEGER PRIMARY KEY AUTOINCREMENT, username TEXT NOT NULL UNIQUE, uuid TEXT NOT NULL UNIQUE, sub_token TEXT NOT NULL UNIQUE, trojan_pass TEXT NOT NULL DEFAULT '', trojan_hash TEXT NOT NULL DEFAULT '', quota_bytes INTEGER NOT NULL DEFAULT 0, used_bytes INTEGER NOT NULL DEFAULT 0, status TEXT NOT NULL DEFAULT 'active', note TEXT NOT NULL DEFAULT '', created_at INTEGER NOT NULL, updated_at INTEGER NOT NULL, expires_at INTEGER);
CREATE INDEX IF NOT EXISTS idx_users_uuid ON users(uuid);
CREATE INDEX IF NOT EXISTS idx_users_token ON users(sub_token);
CREATE INDEX IF NOT EXISTS idx_users_trojan ON users(trojan_hash);
CREATE INDEX IF NOT EXISTS idx_users_expires ON users(expires_at);
CREATE INDEX IF NOT EXISTS idx_users_status ON users(status);
CREATE TABLE IF NOT EXISTS settings (key TEXT PRIMARY KEY, value TEXT NOT NULL, updated_at INTEGER NOT NULL);
CREATE TABLE IF NOT EXISTS usage (day TEXT NOT NULL, user_id INTEGER NOT NULL, up_bytes INTEGER NOT NULL DEFAULT 0, down_bytes INTEGER NOT NULL DEFAULT 0, PRIMARY KEY (day, user_id));
CREATE INDEX IF NOT EXISTS idx_usage_day ON usage(day);
