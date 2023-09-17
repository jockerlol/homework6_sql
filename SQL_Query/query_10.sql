SELECT sub.name AS course_name
FROM students s
JOIN groups g ON s.group_id = g.id
JOIN marks m ON s.id = m.student_id
JOIN subjects sub ON m.subject_id = sub.id
JOIN teachers t ON sub.teacher_id = t.id
WHERE s.id = ? AND t.id = ?;