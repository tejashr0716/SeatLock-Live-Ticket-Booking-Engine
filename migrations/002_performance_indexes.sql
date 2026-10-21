-- Migration 002: B-Tree and GiST Indexes for Sub-Millisecond Scans
CREATE INDEX IF NOT EXISTS idx_seatlock_status ON seatlock_entities (status);
CREATE INDEX IF NOT EXISTS idx_seatlock_cat_status ON seatlock_entities (category, status);
CREATE INDEX IF NOT EXISTS idx_seatlock_lease_expires ON seatlock_leases (entity_id, expires_at) WHERE released = FALSE;
