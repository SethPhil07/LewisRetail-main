USE LewisRetail;
GO

SELECT 
    u.UserID,
    u.EmployeeNumber,
    u.FullName,
    a.Action,
    a.TableAffected,
    a.Timestamp
FROM Users u
JOIN AuditLog a 
    ON u.UserID = a.UserID
WHERE 
    u.EmployeeNumber LIKE 'EMP-%';