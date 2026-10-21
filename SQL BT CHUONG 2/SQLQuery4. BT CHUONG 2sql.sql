
USE CourseRegistrationDB;
GO

SELECT
    c.course_id,
    c.course_name,
    COUNT(r.registration_id) AS total_registrations
FROM Courses c
LEFT JOIN Registrations r
    ON c.course_id = r.course_id
GROUP BY c.course_id, c.course_name
ORDER BY c.course_id;
GO
