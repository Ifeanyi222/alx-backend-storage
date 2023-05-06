-- script that creates an index idx_name_first on the table names and the first letter of name.
-- Requirements:
-- Import this table dump: names.sql.zip
-- Only the first letter of name must be indexed
CREATE INDEX idx_name_first ON names (LEFT(name, 1));

-- Verify the index was created
SELECT indexname, indexdef FROM pg_indexes WHERE tablename = 'names';
