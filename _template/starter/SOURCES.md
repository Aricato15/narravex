# Source Index

Every file the user has provided, and where it is stored. Maintained by the intake workflow (`/intake`, see _workflows/02-intake.md). Do not hand-edit IDs or hashes.

| Source ID | Original filename | Stored path | Type | SHA-256 | Intents | Status | Added | Analysis | Applied to | Notes |
|---|---|---|---|---|---|---|---|---|---|---|

**Status:** `processed` (every intent decided), `partial` (some intents accepted, others deferred), `reference-only` (stored, nothing applied), `rejected`, `superseded` (replaced by a newer version; name it in Notes).
**Intents:** `theme`, `knowledge`, `plan`, `asset` (comma-separated).
**Applied to:** pattern IDs, topic/item IDs, plan or brief changes, `working/_assets/` path. Only list changes the user accepted.
**Aliases:** a file re-supplied under a different name with an identical hash is recorded in Notes as `alias: <filename> (<date>)`; it does not get a new ID.
