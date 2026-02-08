-- 启用行级安全
ALTER TABLE github_query_history ENABLE ROW LEVEL SECURITY;

-- 任何人都可以插入新记录
CREATE POLICY "允许任何人插入" ON github_query_history
    FOR INSERT WITH CHECK (true);

-- 任何人都可以更新记录
CREATE POLICY "允许任何人更新" ON github_query_history
    FOR UPDATE USING (true);

-- 任何人都可以读取记录
CREATE POLICY "允许任何人读取" ON github_query_history
    FOR SELECT USING (true);
