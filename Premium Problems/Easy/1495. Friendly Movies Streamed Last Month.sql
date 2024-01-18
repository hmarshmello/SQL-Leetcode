SELECT title
FROM Content c LEFT JOIN tvprogram t using(content_id)
WHERE 
    MONTH(program_date) = 6 and YEAR(program_date) = 2020 and 
    content_type = 'Movies' and Kids_content = 'Y';
