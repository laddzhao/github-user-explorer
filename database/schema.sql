-- github_query_history 表结构
CREATE TABLE IF NOT EXISTS github_query_history (
    id BIGINT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    username TEXT NOT NULL UNIQUE,
    avatar_url TEXT,
    user_bio TEXT,
    public_repos INTEGER DEFAULT 0,
    query_count INTEGER DEFAULT 1,
    last_searched_at TIMESTAMPTZ DEFAULT NOW(),
    created_at TIMESTAMPTZ DEFAULT NOW()
);

-- 创建索引以提高查询性能
CREATE INDEX idx_github_query_history_username ON github_query_history(username);
CREATE INDEX idx_github_query_history_last_searched ON github_query_history(last_searched_at DESC);
