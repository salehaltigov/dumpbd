SELECT DISTINCT g.GroupName
FROM schedule s
INNER JOIN groups g ON s.GroupID = g.ID
INNER JOIN classrooms cl ON s.ClassRoomID = cl.ID
INNER JOIN calendar c ON s.WeekDay = c.WeekDay
WHERE cl.ClassRoomName = '212'
AND c.WeekDay = 3; 