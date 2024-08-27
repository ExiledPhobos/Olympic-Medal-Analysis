-- Task 1: Create a Unified Medal Table

CREATE VIEW Unified_Medal_Table AS
SELECT 
    a.NOC,
    a.Gold AS Gold_1996, a.Silver AS Silver_1996, a.Bronze AS Bronze_1996, a.Total AS Total_1996,
    b.Gold AS Gold_2000, b.Silver AS Silver_2000, b.Bronze AS Bronze_2000, b.Total AS Total_2000,
    c.Gold AS Gold_2004, c.Silver AS Silver_2004, c.Bronze AS Bronze_2004, c.Total AS Total_2004,
    d.Gold AS Gold_2008, d.Silver AS Silver_2008, d.Bronze AS Bronze_2008, d.Total AS Total_2008,
    e.Gold AS Gold_2012, e.Silver AS Silver_2012, e.Bronze AS Bronze_2012, e.Total AS Total_2012,
    f.Gold AS Gold_2016, f.Silver AS Silver_2016, f.Bronze AS Bronze_2016, f.Total AS Total_2016,
    g.Gold AS Gold_2020, g.Silver AS Silver_2020, g.Bronze AS Bronze_2020, g.Total AS Total_2020,
    h.Gold AS Gold_2024, h.Silver AS Silver_2024, h.Bronze AS Bronze_2024, h.Total AS Total_2024,
    i.Gold AS Gold_1998, i.Silver AS Silver_1998, i.Bronze AS Bronze_1998, i.Total AS Total_1998,
    j.Gold AS Gold_2002, j.Silver AS Silver_2002, j.Bronze AS Bronze_2002, j.Total AS Total_2002,
    k.Gold AS Gold_2006, k.Silver AS Silver_2006, k.Bronze AS Bronze_2006, k.Total AS Total_2006,
    l.Gold AS Gold_2010, l.Silver AS Silver_2010, l.Bronze AS Bronze_2010, l.Total AS Total_2010,
    m.Gold AS Gold_2014, m.Silver AS Silver_2014, m.Bronze AS Bronze_2014, m.Total AS Total_2014,
    n.Gold AS Gold_2018, n.Silver AS Silver_2018, n.Bronze AS Bronze_2018, n.Total AS Total_2018,
    o.Gold AS Gold_2022, o.Silver AS Silver_2022, o.Bronze AS Bronze_2022, o.Total AS Total_2022,
    p.Gold AS Gold_1994, p.Silver AS Silver_1994, p.Bronze AS Bronze_1994, p.Total AS Total_1994
FROM 
    atlanta_1996 a
LEFT JOIN sydney_2000 b ON a.NOC = b.NOC
LEFT JOIN athens_2004 c ON a.NOC = c.NOC
LEFT JOIN beijing_2008 d ON a.NOC = d.NOC
LEFT JOIN london_2012 e ON a.NOC = e.NOC
LEFT JOIN rio_2016 f ON a.NOC = f.NOC
LEFT JOIN tokyo_2020 g ON a.NOC = g.NOC
LEFT JOIN paris_2024 h ON a.NOC = h.NOC
LEFT JOIN nagano_1998 i ON a.NOC = i.NOC
LEFT JOIN saltlakecity_2002 j ON a.NOC = j.NOC
LEFT JOIN torino_2006 k ON a.NOC = k.NOC
LEFT JOIN vancouver_2010 l ON a.NOC = l.NOC
LEFT JOIN sochi_2014 m ON a.NOC = m.NOC
LEFT JOIN pyeongchang_2018 n ON a.NOC = n.NOC
LEFT JOIN beijing_2022 o ON a.NOC = o.NOC
LEFT JOIN lillehammer_1994 p ON a.NOC = p.NOC
ORDER BY a.NOC;

-- Task 2: Calculate Total Medals by Country

CREATE VIEW Total_Medals_By_Country AS
SELECT 
    NOC,
    COALESCE(SUM(Gold_1996), 0) + COALESCE(SUM(Gold_2000), 0) + COALESCE(SUM(Gold_2004), 0) + 
    COALESCE(SUM(Gold_2008), 0) + COALESCE(SUM(Gold_2012), 0) + COALESCE(SUM(Gold_2016), 0) + 
    COALESCE(SUM(Gold_2020), 0) + COALESCE(SUM(Gold_2024), 0) + COALESCE(SUM(Gold_1998), 0) + 
    COALESCE(SUM(Gold_2002), 0) + COALESCE(SUM(Gold_2006), 0) + COALESCE(SUM(Gold_2010), 0) + 
    COALESCE(SUM(Gold_2014), 0) + COALESCE(SUM(Gold_2018), 0) + COALESCE(SUM(Gold_2022), 0) + 
    COALESCE(SUM(Gold_1994), 0) AS Total_Gold,

    COALESCE(SUM(Silver_1996), 0) + COALESCE(SUM(Silver_2000), 0) + COALESCE(SUM(Silver_2004), 0) + 
    COALESCE(SUM(Silver_2008), 0) + COALESCE(SUM(Silver_2012), 0) + COALESCE(SUM(Silver_2016), 0) + 
    COALESCE(SUM(Silver_2020), 0) + COALESCE(SUM(Silver_2024), 0) + COALESCE(SUM(Silver_1998), 0) + 
    COALESCE(SUM(Silver_2002), 0) + COALESCE(SUM(Silver_2006), 0) + COALESCE(SUM(Silver_2010), 0) + 
    COALESCE(SUM(Silver_2014), 0) + COALESCE(SUM(Silver_2018), 0) + COALESCE(SUM(Silver_2022), 0) + 
    COALESCE(SUM(Silver_1994), 0) AS Total_Silver,

    COALESCE(SUM(Bronze_1996), 0) + COALESCE(SUM(Bronze_2000), 0) + COALESCE(SUM(Bronze_2004), 0) + 
    COALESCE(SUM(Bronze_2008), 0) + COALESCE(SUM(Bronze_2012), 0) + COALESCE(SUM(Bronze_2016), 0) + 
    COALESCE(SUM(Bronze_2020), 0) + COALESCE(SUM(Bronze_2024), 0) + COALESCE(SUM(Bronze_1998), 0) + 
    COALESCE(SUM(Bronze_2002), 0) + COALESCE(SUM(Bronze_2006), 0) + COALESCE(SUM(Bronze_2010), 0) + 
    COALESCE(SUM(Bronze_2014), 0) + COALESCE(SUM(Bronze_2018), 0) + COALESCE(SUM(Bronze_2022), 0) + 
    COALESCE(SUM(Bronze_1994), 0) AS Total_Bronze,

    COALESCE(SUM(Total_1996), 0) + COALESCE(SUM(Total_2000), 0) + COALESCE(SUM(Total_2004), 0) + 
    COALESCE(SUM(Total_2008), 0) + COALESCE(SUM(Total_2012), 0) + COALESCE(SUM(Total_2016), 0) + 
    COALESCE(SUM(Total_2020), 0) + COALESCE(SUM(Total_2024), 0) + COALESCE(SUM(Total_1998), 0) + 
    COALESCE(SUM(Total_2002), 0) + COALESCE(SUM(Total_2006), 0) + COALESCE(SUM(Total_2010), 0) + 
    COALESCE(SUM(Total_2014), 0) + COALESCE(SUM(Total_2018), 0) + COALESCE(SUM(Total_2022), 0) + 
    COALESCE(SUM(Total_1994), 0) AS Grand_Total
FROM 
    Unified_Medal_Table
GROUP BY 
    NOC
ORDER BY 
    Grand_Total DESC;