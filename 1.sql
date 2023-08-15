SELECT s.ID, g.GroupName, sub.SubjectName, t.FIO, cl.ClassRoomName,  c.weekdayname, c.weekid, c.LessonTime
FROM schedule s
INNER JOIN groups g ON s.GroupID = g.ID
INNER JOIN subjects sub ON s.SubjectID = sub.ID
INNER JOIN teachers t ON s.TeacherID = t.ID
INNER JOIN classrooms cl ON s.ClassRoomID = cl.ID
INNER JOIN calendar c ON s.WeekDay = c.WeekDay AND s.WeekID = c.WeekID AND s.LessonID = c.LessonID
WHERE c.WeekDay = 1
AND g.GroupName = 'ИСТ-311'
AND c.weekid = 1;