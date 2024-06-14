-- CREATE INDEX ON NAME AND SCORE

CREATE INDEX idx_name_first_score
ON names(name, score)
