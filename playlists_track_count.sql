SELECT COUNT(*), Name
FROM PlaylistTrack AS t
JOIN Playlist AS p
ON t.PlaylistId = p.PlaylistId
GROUP BY Name
ORDER BY Name ASC