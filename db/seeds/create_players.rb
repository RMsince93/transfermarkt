puts "👤 Creating players and season assignments..."

players_by_team = {
  "Liverpool FC" => [
    { name: "Mohamed Salah", nationality: "Egypt", birth_date: Date.new(1992, 6, 15), height: 175, weight: 71, position_name: "Right Winger", market_value: 50_000_000, preferred_foot: "Left" },
    { name: "Virgil van Dijk", nationality: "Netherlands", birth_date: Date.new(1991, 7, 8), height: 193, weight: 92, position_name: "Center Back", market_value: 75_000_000, preferred_foot: "Right" },
    { name: "Alisson Becker", nationality: "Brazil", birth_date: Date.new(1992, 10, 2), height: 191, weight: 91, position_name: "Goalkeeper", market_value: 60_000_000, preferred_foot: "Right" },
    { name: "Freddie Woodman", nationality: "England", birth_date: Date.new(1997, 3, 4), height: 188, weight: 83, position_name: "Goalkeeper", market_value: 2_000_000, preferred_foot: "Right" },
    { name: "Ármin Pécsi", nationality: "Hungary", birth_date: Date.new(2002, 7, 21), height: 185, weight: 75, position_name: "Goalkeeper", market_value: 500_000, preferred_foot: "Right" },
    { name: "Giorgi Mamardashvili", nationality: "Georgia", birth_date: Date.new(2000, 4, 11), height: 193, weight: 83, position_name: "Goalkeeper", market_value: 10_000_000, preferred_foot: "Right" },
    { name: "Rhys Williams", nationality: "England", birth_date: Date.new(2001, 3, 18), height: 183, weight: 81, position_name: "Center Back", market_value: 20_000_000, preferred_foot: "Right" },
    { name: "Ryan Gravenberch", nationality: "Netherlands", birth_date: Date.new(2002, 5, 16), height: 188, weight: 80, position_name: "Central Midfielder", market_value: 45_000_000, preferred_foot: "Right" },
    { name: "Alexis Mac Allister", nationality: "Argentina", birth_date: Date.new(1998, 12, 24), height: 174, weight: 80, position_name: "Central Midfielder", market_value: 35_000_000, preferred_foot: "Right" },
    { name: "Wataru Endo", nationality: "Japan", birth_date: Date.new(1993, 2, 9), height: 185, weight: 79, position_name: "Defensive Midfielder", market_value: 15_000_000, preferred_foot: "Right" },
    { name: "Florian Wirtz", nationality: "Germany", birth_date: Date.new(2003, 5, 3), height: 180, weight: 72, position_name: "Attacking Midfielder", market_value: 60_000_000, preferred_foot: "Right" },
    { name: "Dominik Szoboszlai", nationality: "Hungary", birth_date: Date.new(2000, 10, 25), height: 185, weight: 74, position_name: "Central Midfielder", market_value: 50_000_000, preferred_foot: "Right" },
    { name: "Curtis Jones", nationality: "England", birth_date: Date.new(2001, 1, 30), height: 178, weight: 68, position_name: "Central Midfielder", market_value: 30_000_000, preferred_foot: "Right" },
    { name: "Federico Chiesa", nationality: "Italy", birth_date: Date.new(1997, 10, 25), height: 172, weight: 65, position_name: "Right Winger", market_value: 25_000_000, preferred_foot: "Right" },
    { name: "Cody Gakpo", nationality: "Netherlands", birth_date: Date.new(1999, 5, 7), height: 184, weight: 80, position_name: "Striker", market_value: 50_000_000, preferred_foot: "Left" },
    { name: "Stefan Bajčetić", nationality: "Spain", birth_date: Date.new(2004, 12, 22), height: 176, weight: 68, position_name: "Defensive Midfielder", market_value: 12_000_000, preferred_foot: "Right" },
    { name: "Harvey Elliott", nationality: "England", birth_date: Date.new(2003, 4, 4), height: 175, weight: 65, position_name: "Attacking Midfielder", market_value: 40_000_000, preferred_foot: "Right" },
    { name: "Conor Bradley", nationality: "Northern Ireland", birth_date: Date.new(2003, 11, 19), height: 174, weight: 70, position_name: "Right Back", market_value: 5_000_000, preferred_foot: "Right" },
    { name: "Jeremy Frimpong", nationality: "Netherlands", birth_date: Date.new(2000, 2, 5), height: 173, weight: 65, position_name: "Right Back", market_value: 15_000_000, preferred_foot: "Right" },
    { name: "Milos Kerkez", nationality: "Hungary", birth_date: Date.new(2003, 11, 27), height: 174, weight: 68, position_name: "Left Back", market_value: 12_000_000, preferred_foot: "Left" },
    { name: "Andrew Robertson", nationality: "Scotland", birth_date: Date.new(1994, 3, 11), height: 178, weight: 68, position_name: "Left Back", market_value: 30_000_000, preferred_foot: "Left" },
    { name: "Ibrahima Konaté", nationality: "France", birth_date: Date.new(1999, 5, 25), height: 194, weight: 92, position_name: "Center Back", market_value: 35_000_000, preferred_foot: "Right" },
    { name: "Joe Gomez", nationality: "England", birth_date: Date.new(1997, 5, 23), height: 182, weight: 74, position_name: "Center Back", market_value: 18_000_000, preferred_foot: "Right" },
    { name: "Tyler Morton", nationality: "England", birth_date: Date.new(2002, 10, 17), height: 181, weight: 69, position_name: "Central Midfielder", market_value: 5_000_000, preferred_foot: "Right" },
    { name: "Ben Doak", nationality: "Scotland", birth_date: Date.new(2005, 11, 11), height: 170, weight: 60, position_name: "Right Winger", market_value: 7_000_000, preferred_foot: "Right" },
    { name: "Calvin Ramsay", nationality: "Scotland", birth_date: Date.new(2003, 12, 31), height: 182, weight: 74, position_name: "Right Back", market_value: 8_000_000, preferred_foot: "Right" }
  ],
  "Arsenal FC" => [
    { name: "David Raya", nationality: "Spain", birth_date: Date.new(1995, 9, 15), height: 183, weight: 80, position_name: "Goalkeeper", market_value: 40_000_000, preferred_foot: "Right" },
    { name: "Kepa Arrizabalaga", nationality: "Spain", birth_date: Date.new(1994, 10, 3), height: 186, weight: 84, position_name: "Goalkeeper", market_value: 10_000_000, preferred_foot: "Right" },
    { name: "Karl Hein", nationality: "Estonia", birth_date: Date.new(2002, 4, 13), height: 193, weight: 84, position_name: "Goalkeeper", market_value: 3_000_000, preferred_foot: "Right" },
    { name: "William Saliba", nationality: "France", birth_date: Date.new(2001, 3, 24), height: 192, weight: 83, position_name: "Center Back", market_value: 80_000_000, preferred_foot: "Right" },
    { name: "Gabriel Magalhães", nationality: "Brazil", birth_date: Date.new(1997, 12, 19), height: 190, weight: 87, position_name: "Center Back", market_value: 75_000_000, preferred_foot: "Left" },
    { name: "Jakub Kiwior", nationality: "Poland", birth_date: Date.new(2000, 2, 2), height: 185, weight: 80, position_name: "Center Back", market_value: 28_000_000, preferred_foot: "Right" },
    { name: "Myles Lewis-Skelly", nationality: "England", birth_date: Date.new(2005, 2, 17), height: 175, weight: 68, position_name: "Left Back", market_value: 45_000_000, preferred_foot: "Left" },
    { name: "Riccardo Calafiori", nationality: "Italy", birth_date: Date.new(2002, 2, 19), height: 180, weight: 72, position_name: "Left Back", market_value: 35_000_000, preferred_foot: "Left" },
    { name: "Oleksandr Zinchenko", nationality: "Ukraine", birth_date: Date.new(1996, 12, 15), height: 175, weight: 70, position_name: "Left Back", market_value: 20_000_000, preferred_foot: "Left" },
    { name: "Ben White", nationality: "England", birth_date: Date.new(1997, 10, 8), height: 186, weight: 78, position_name: "Right Back", market_value: 55_000_000, preferred_foot: "Right" },
    { name: "Takehiro Tomiyasu", nationality: "Japan", birth_date: Date.new(1998, 11, 5), height: 188, weight: 84, position_name: "Right Back", market_value: 30_000_000, preferred_foot: "Right" },
    { name: "Declan Rice", nationality: "England", birth_date: Date.new(1999, 1, 14), height: 185, weight: 80, position_name: "Defensive Midfielder", market_value: 100_000_000, preferred_foot: "Right" },
    { name: "Martin Ødegaard", nationality: "Norway", birth_date: Date.new(1998, 12, 17), height: 178, weight: 68, position_name: "Attacking Midfielder", market_value: 90_000_000, preferred_foot: "Left" },
    { name: "Bukayo Saka", nationality: "England", birth_date: Date.new(2001, 9, 5), height: 178, weight: 73, position_name: "Right Winger", market_value: 120_000_000, preferred_foot: "Left" },
    { name: "Gabriel Jesus", nationality: "Brazil", birth_date: Date.new(1997, 4, 3), height: 175, weight: 73, position_name: "Striker", market_value: 65_000_000, preferred_foot: "Right" },
    { name: "Leandro Trossard", nationality: "Belgium", birth_date: Date.new(1994, 12, 4), height: 172, weight: 65, position_name: "Left Winger", market_value: 35_000_000, preferred_foot: "Right" },
    { name: "Kai Havertz", nationality: "Germany", birth_date: Date.new(1999, 6, 11), height: 190, weight: 83, position_name: "Attacking Midfielder", market_value: 55_000_000, preferred_foot: "Left" },
    { name: "Gabriel Martinelli", nationality: "Brazil", birth_date: Date.new(2001, 6, 18), height: 178, weight: 75, position_name: "Left Winger", market_value: 70_000_000, preferred_foot: "Right" },
    { name: "Eddie Nketiah", nationality: "England", birth_date: Date.new(1999, 5, 30), height: 175, weight: 72, position_name: "Striker", market_value: 25_000_000, preferred_foot: "Right" },
    { name: "Reiss Nelson", nationality: "England", birth_date: Date.new(1999, 12, 10), height: 175, weight: 71, position_name: "Right Winger", market_value: 15_000_000, preferred_foot: "Right" }
  ],
  "Chelsea FC" => [
    { name: "Robert Sánchez", nationality: "Spain", birth_date: Date.new(1997, 9, 18), height: 193, weight: 87, position_name: "Goalkeeper", market_value: 25_000_000, preferred_foot: "Right" },
    { name: "Filip Jørgensen", nationality: "Denmark", birth_date: Date.new(2002, 2, 7), height: 196, weight: 85, position_name: "Goalkeeper", market_value: 8_000_000, preferred_foot: "Right" },
    { name: "Mike Penders", nationality: "Netherlands", birth_date: Date.new(2003, 6, 15), height: 188, weight: 80, position_name: "Goalkeeper", market_value: 1_000_000, preferred_foot: "Right" },
    { name: "Gabriel Slonina", nationality: "USA", birth_date: Date.new(2004, 5, 15), height: 191, weight: 85, position_name: "Goalkeeper", market_value: 10_000_000, preferred_foot: "Right" },
    { name: "Wesley Fofana", nationality: "France", birth_date: Date.new(2000, 12, 17), height: 190, weight: 83, position_name: "Center Back", market_value: 45_000_000, preferred_foot: "Right" },
    { name: "Axel Disasi", nationality: "France", birth_date: Date.new(1998, 3, 11), height: 190, weight: 88, position_name: "Center Back", market_value: 40_000_000, preferred_foot: "Right" },
    { name: "Levi Colwill", nationality: "England", birth_date: Date.new(2003, 2, 26), height: 187, weight: 82, position_name: "Center Back", market_value: 50_000_000, preferred_foot: "Left" },
    { name: "Benoît Badiashile", nationality: "France", birth_date: Date.new(2001, 3, 26), height: 194, weight: 94, position_name: "Center Back", market_value: 32_000_000, preferred_foot: "Left" },
    { name: "Reece James", nationality: "England", birth_date: Date.new(1999, 12, 8), height: 182, weight: 82, position_name: "Right Back", market_value: 60_000_000, preferred_foot: "Right" },
    { name: "Malo Gusto", nationality: "France", birth_date: Date.new(2003, 5, 19), height: 179, weight: 70, position_name: "Right Back", market_value: 25_000_000, preferred_foot: "Right" },
    { name: "Marc Cucurella", nationality: "Spain", birth_date: Date.new(1998, 7, 22), height: 176, weight: 66, position_name: "Left Back", market_value: 25_000_000, preferred_foot: "Left" },
    { name: "Ben Chilwell", nationality: "England", birth_date: Date.new(1996, 12, 21), height: 178, weight: 77, position_name: "Left Back", market_value: 28_000_000, preferred_foot: "Left" },
    { name: "Moisés Caicedo", nationality: "Ecuador", birth_date: Date.new(2001, 11, 2), height: 178, weight: 73, position_name: "Defensive Midfielder", market_value: 80_000_000, preferred_foot: "Right" },
    { name: "Enzo Fernández", nationality: "Argentina", birth_date: Date.new(2001, 1, 17), height: 178, weight: 73, position_name: "Central Midfielder", market_value: 75_000_000, preferred_foot: "Right" },
    { name: "Conor Gallagher", nationality: "England", birth_date: Date.new(2000, 2, 6), height: 182, weight: 74, position_name: "Central Midfielder", market_value: 45_000_000, preferred_foot: "Right" },
    { name: "Cole Palmer", nationality: "England", birth_date: Date.new(2002, 5, 6), height: 189, weight: 74, position_name: "Attacking Midfielder", market_value: 65_000_000, preferred_foot: "Left" },
    { name: "Christopher Nkunku", nationality: "France", birth_date: Date.new(1997, 11, 14), height: 181, weight: 78, position_name: "Attacking Midfielder", market_value: 45_000_000, preferred_foot: "Right" },
    { name: "Raheem Sterling", nationality: "England", birth_date: Date.new(1994, 12, 8), height: 170, weight: 69, position_name: "Left Winger", market_value: 30_000_000, preferred_foot: "Right" },
    { name: "Mykhaylo Mudryk", nationality: "Ukraine", birth_date: Date.new(2001, 1, 5), height: 179, weight: 70, position_name: "Left Winger", market_value: 45_000_000, preferred_foot: "Left" },
    { name: "Nicolas Jackson", nationality: "Senegal", birth_date: Date.new(2001, 6, 20), height: 186, weight: 78, position_name: "Striker", market_value: 40_000_000, preferred_foot: "Right" },
    { name: "Armando Broja", nationality: "Albania", birth_date: Date.new(2001, 9, 10), height: 190, weight: 80, position_name: "Striker", market_value: 25_000_000, preferred_foot: "Right" },
    { name: "Liam Delap", nationality: "England", birth_date: Date.new(2003, 2, 8), height: 183, weight: 79, position_name: "Striker", market_value: 15_000_000, preferred_foot: "Right" }
  ],
  "Manchester City FC" => [
    { name: "Ederson", nationality: "Brazil", birth_date: Date.new(1993, 8, 17), height: 188, weight: 86, position_name: "Goalkeeper", market_value: 45_000_000, preferred_foot: "Left" },
    { name: "Stefan Ortega", nationality: "Germany", birth_date: Date.new(1992, 11, 6), height: 185, weight: 83, position_name: "Goalkeeper", market_value: 9_000_000, preferred_foot: "Right" },
    { name: "Marcus Bettinelli", nationality: "England", birth_date: Date.new(1992, 5, 24), height: 193, weight: 86, position_name: "Goalkeeper", market_value: 1_000_000, preferred_foot: "Right" },
    { name: "Josko Gvardiol", nationality: "Croatia", birth_date: Date.new(2002, 1, 23), height: 185, weight: 80, position_name: "Center Back", market_value: 75_000_000, preferred_foot: "Left" },
    { name: "Rúben Dias", nationality: "Portugal", birth_date: Date.new(1997, 5, 14), height: 187, weight: 83, position_name: "Center Back", market_value: 80_000_000, preferred_foot: "Right" },
    { name: "Abdukodir Khusanov", nationality: "Uzbekistan", birth_date: Date.new(2004, 2, 29), height: 186, weight: 78, position_name: "Center Back", market_value: 5_000_000, preferred_foot: "Left" },
    { name: "Vitor Reis", nationality: "Brazil", birth_date: Date.new(2005, 7, 3), height: 184, weight: 75, position_name: "Center Back", market_value: 1_000_000, preferred_foot: "Right" },
    { name: "Manuel Akanji", nationality: "Switzerland", birth_date: Date.new(1995, 7, 19), height: 187, weight: 91, position_name: "Center Back", market_value: 40_000_000, preferred_foot: "Right" },
    { name: "Nathan Aké", nationality: "Netherlands", birth_date: Date.new(1995, 2, 18), height: 180, weight: 75, position_name: "Center Back", market_value: 38_000_000, preferred_foot: "Left" },
    { name: "John Stones", nationality: "England", birth_date: Date.new(1994, 5, 28), height: 188, weight: 70, position_name: "Center Back", market_value: 50_000_000, preferred_foot: "Right" },
    { name: "Josh Wilson-Esbrand", nationality: "England", birth_date: Date.new(2002, 12, 26), height: 182, weight: 72, position_name: "Left Back", market_value: 6_000_000, preferred_foot: "Left" },
    { name: "Rayan Aït-Nouri", nationality: "Algeria", birth_date: Date.new(2001, 6, 6), height: 179, weight: 70, position_name: "Left Back", market_value: 22_000_000, preferred_foot: "Left" },
    { name: "Issa Kaboré", nationality: "Burkina Faso", birth_date: Date.new(2001, 5, 12), height: 180, weight: 73, position_name: "Right Back", market_value: 8_000_000, preferred_foot: "Right" },
    { name: "Rico Lewis", nationality: "England", birth_date: Date.new(2004, 11, 21), height: 169, weight: 63, position_name: "Right Back", market_value: 35_000_000, preferred_foot: "Right" },
    { name: "Rodri", nationality: "Spain", birth_date: Date.new(1996, 6, 22), height: 191, weight: 82, position_name: "Defensive Midfielder", market_value: 110_000_000, preferred_foot: "Right" },
    { name: "Kalvin Phillips", nationality: "England", birth_date: Date.new(1995, 12, 2), height: 178, weight: 72, position_name: "Defensive Midfielder", market_value: 25_000_000, preferred_foot: "Right" },
    { name: "Tijjani Reijnders", nationality: "Netherlands", birth_date: Date.new(1998, 7, 29), height: 185, weight: 75, position_name: "Central Midfielder", market_value: 28_000_000, preferred_foot: "Right" },
    { name: "Nico González", nationality: "Spain", birth_date: Date.new(2002, 1, 3), height: 188, weight: 82, position_name: "Central Midfielder", market_value: 15_000_000, preferred_foot: "Right" },
    { name: "Bernardo Silva", nationality: "Portugal", birth_date: Date.new(1994, 8, 10), height: 173, weight: 64, position_name: "Attacking Midfielder", market_value: 60_000_000, preferred_foot: "Left" },
    { name: "Matheus Nunes", nationality: "Portugal", birth_date: Date.new(1998, 8, 27), height: 183, weight: 78, position_name: "Central Midfielder", market_value: 35_000_000, preferred_foot: "Right" },
    { name: "Mateo Kovacic", nationality: "Croatia", birth_date: Date.new(1994, 5, 6), height: 177, weight: 78, position_name: "Central Midfielder", market_value: 25_000_000, preferred_foot: "Right" },
    { name: "James McAtee", nationality: "England", birth_date: Date.new(2002, 10, 18), height: 180, weight: 70, position_name: "Attacking Midfielder", market_value: 15_000_000, preferred_foot: "Left" },
    { name: "Nico O'Reilly", nationality: "England", birth_date: Date.new(2005, 3, 21), height: 175, weight: 69, position_name: "Attacking Midfielder", market_value: 1_000_000, preferred_foot: "Right" },
    { name: "Claudio Echeverri", nationality: "Argentina", birth_date: Date.new(2006, 1, 2), height: 174, weight: 68, position_name: "Attacking Midfielder", market_value: 15_000_000, preferred_foot: "Right" },
    { name: "Máximo Perrone", nationality: "Argentina", birth_date: Date.new(2003, 1, 7), height: 177, weight: 71, position_name: "Central Midfielder", market_value: 8_000_000, preferred_foot: "Left" },
    { name: "İlkay Gündoğan", nationality: "Germany", birth_date: Date.new(1990, 10, 24), height: 180, weight: 80, position_name: "Central Midfielder", market_value: 20_000_000, preferred_foot: "Right" },
    { name: "Erling Haaland", nationality: "Norway", birth_date: Date.new(2000, 7, 21), height: 195, weight: 94, position_name: "Center Forward", market_value: 180_000_000, preferred_foot: "Left" },
    { name: "Phil Foden", nationality: "England", birth_date: Date.new(2000, 5, 28), height: 171, weight: 70, position_name: "Left Midfielder", market_value: 130_000_000, preferred_foot: "Left" },
    { name: "Omar Marmoush", nationality: "Egypt", birth_date: Date.new(1999, 2, 7), height: 183, weight: 79, position_name: "Left Midfielder", market_value: 18_000_000, preferred_foot: "Right" },
    { name: "Savinho", nationality: "Brazil", birth_date: Date.new(2004, 4, 10), height: 176, weight: 70, position_name: "Right Midfielder", market_value: 40_000_000, preferred_foot: "Left" },
    { name: "Jérémy Doku", nationality: "Belgium", birth_date: Date.new(2002, 5, 27), height: 173, weight: 66, position_name: "Right Midfielder", market_value: 60_000_000, preferred_foot: "Right" },
    { name: "Rayan Cherki", nationality: "France", birth_date: Date.new(2003, 8, 17), height: 176, weight: 73, position_name: "Right Midfielder", market_value: 25_000_000, preferred_foot: "Left" },
    { name: "Oscar Bobb", nationality: "Norway", birth_date: Date.new(2003, 7, 12), height: 174, weight: 68, position_name: "Right Midfielder", market_value: 20_000_000, preferred_foot: "Left" }
  ],
  "Manchester United FC" => [
    { name: "Senne Lammens", nationality: "Belgium", birth_date: Date.new(2002, 7, 7), height: 193, weight: 88, position_name: "Goalkeeper", market_value: 20_000_000, preferred_foot: "Right" },
    { name: "Altay Bayındır", nationality: "Turkey", birth_date: Date.new(1998, 4, 14), height: 198, weight: 88, position_name: "Goalkeeper", market_value: 8_000_000, preferred_foot: "Right" },
    { name: "Tom Heaton", nationality: "England", birth_date: Date.new(1986, 4, 15), height: 188, weight: 85, position_name: "Goalkeeper", market_value: 200_000, preferred_foot: "Right" },
    { name: "Leny Yoro", nationality: "France", birth_date: Date.new(2005, 11, 13), height: 190, weight: 79, position_name: "Center Back", market_value: 55_000_000, preferred_foot: "Right" },
    { name: "Matthijs de Ligt", nationality: "Netherlands", birth_date: Date.new(1999, 8, 12), height: 189, weight: 89, position_name: "Center Back", market_value: 38_000_000, preferred_foot: "Right" },
    { name: "Lisandro Martínez", nationality: "Argentina", birth_date: Date.new(1998, 1, 18), height: 175, weight: 77, position_name: "Center Back", market_value: 35_000_000, preferred_foot: "Left" },
    { name: "Harry Maguire", nationality: "England", birth_date: Date.new(1993, 3, 5), height: 194, weight: 97, position_name: "Center Back", market_value: 13_000_000, preferred_foot: "Right" },
    { name: "Ayden Heaven", nationality: "England", birth_date: Date.new(2006, 9, 22), height: 189, weight: 82, position_name: "Center Back", market_value: 10_000_000, preferred_foot: "Left" },
    { name: "Tyler Fredricson", nationality: "England", birth_date: Date.new(2005, 2, 23), height: 188, weight: 80, position_name: "Center Back", market_value: 3_000_000, preferred_foot: "Right" },
    { name: "Patrick Dorgu", nationality: "Denmark", birth_date: Date.new(2004, 10, 26), height: 185, weight: 80, position_name: "Left Back", market_value: 25_000_000, preferred_foot: "Left" },
    { name: "Luke Shaw", nationality: "England", birth_date: Date.new(1995, 7, 12), height: 178, weight: 75, position_name: "Left Back", market_value: 12_000_000, preferred_foot: "Left" },
    { name: "Tyrell Malacia", nationality: "Netherlands", birth_date: Date.new(1999, 8, 17), height: 169, weight: 67, position_name: "Left Back", market_value: 8_000_000, preferred_foot: "Left" },
    { name: "Diego León", nationality: "Paraguay", birth_date: Date.new(2007, 4, 3), height: 177, weight: 72, position_name: "Left Back", market_value: 4_000_000, preferred_foot: "Left" },
    { name: "Diogo Dalot", nationality: "Portugal", birth_date: Date.new(1999, 3, 18), height: 183, weight: 76, position_name: "Right Back", market_value: 28_000_000, preferred_foot: "Right" },
    { name: "Noussair Mazraoui", nationality: "Morocco", birth_date: Date.new(1997, 11, 14), height: 183, weight: 73, position_name: "Right Back", market_value: 25_000_000, preferred_foot: "Right" },
    { name: "Manuel Ugarte", nationality: "Uruguay", birth_date: Date.new(2001, 4, 11), height: 182, weight: 81, position_name: "Defensive Midfielder", market_value: 35_000_000, preferred_foot: "Right" },
    { name: "Casemiro", nationality: "Brazil", birth_date: Date.new(1992, 2, 23), height: 185, weight: 84, position_name: "Defensive Midfielder", market_value: 10_000_000, preferred_foot: "Right" },
    { name: "Kobbie Mainoo", nationality: "England", birth_date: Date.new(2005, 4, 19), height: 180, weight: 74, position_name: "Central Midfielder", market_value: 45_000_000, preferred_foot: "Right" },
    { name: "Bruno Fernandes", nationality: "Portugal", birth_date: Date.new(1994, 9, 8), height: 179, weight: 69, position_name: "Attacking Midfielder", market_value: 45_000_000, preferred_foot: "Right" },
    { name: "Mason Mount", nationality: "England", birth_date: Date.new(1999, 1, 10), height: 181, weight: 75, position_name: "Attacking Midfielder", market_value: 28_000_000, preferred_foot: "Right" },
    { name: "Bryan Mbeumo", nationality: "Cameroon", birth_date: Date.new(1999, 8, 7), height: 171, weight: 73, position_name: "Right Winger", market_value: 70_000_000, preferred_foot: "Left" },
    { name: "Amad Diallo", nationality: "Ivory Coast", birth_date: Date.new(2002, 7, 11), height: 173, weight: 68, position_name: "Right Winger", market_value: 40_000_000, preferred_foot: "Left" },
    { name: "Matheus Cunha", nationality: "Brazil", birth_date: Date.new(1999, 5, 27), height: 183, weight: 77, position_name: "Second Striker", market_value: 70_000_000, preferred_foot: "Right" },
    { name: "Benjamin Sesko", nationality: "Slovenia", birth_date: Date.new(2003, 5, 31), height: 195, weight: 85, position_name: "Striker", market_value: 70_000_000, preferred_foot: "Right" },
    { name: "Joshua Zirkzee", nationality: "Netherlands", birth_date: Date.new(2001, 5, 22), height: 193, weight: 84, position_name: "Striker", market_value: 28_000_000, preferred_foot: "Right" },
    { name: "Chido Obi", nationality: "Denmark", birth_date: Date.new(2007, 11, 29), height: 188, weight: 82, position_name: "Striker", market_value: 5_000_000, preferred_foot: "Right" }
  ],
  "FC Porto" => [
    { name: "Diogo Costa", nationality: "Portugal", birth_date: Date.new(1999, 9, 19), height: 186, weight: 81, position_name: "Goalkeeper", market_value: 40_000_000, preferred_foot: "Right" },
    { name: "Cláudio Ramos", nationality: "Portugal", birth_date: Date.new(1991, 11, 16), height: 183, weight: 83, position_name: "Goalkeeper", market_value: 1_200_000, preferred_foot: "Right" },
    { name: "João Costa", nationality: "Portugal", birth_date: Date.new(1996, 2, 2), height: 186, weight: 82, position_name: "Goalkeeper", market_value: 800_000, preferred_foot: "Right" },
    { name: "Jakub Kiwior", nationality: "Poland", birth_date: Date.new(2000, 2, 15), height: 189, weight: 77, position_name: "Center Back", market_value: 25_000_000, preferred_foot: "Left" },
    { name: "Nehuén Pérez", nationality: "Argentina", birth_date: Date.new(2000, 6, 24), height: 186, weight: 81, position_name: "Center Back", market_value: 13_000_000, preferred_foot: "Right" },
    { name: "Jan Bednarek", nationality: "Poland", birth_date: Date.new(1996, 4, 12), height: 189, weight: 82, position_name: "Center Back", market_value: 9_000_000, preferred_foot: "Right" },
    { name: "Dominik Prpić", nationality: "Croatia", birth_date: Date.new(2004, 5, 19), height: 188, weight: 80, position_name: "Center Back", market_value: 4_500_000, preferred_foot: "Left" },
    { name: "Francisco Moura", nationality: "Portugal", birth_date: Date.new(1999, 8, 16), height: 181, weight: 74, position_name: "Left Back", market_value: 15_000_000, preferred_foot: "Left" },
    { name: "Zaidu", nationality: "Nigeria", birth_date: Date.new(1997, 6, 13), height: 182, weight: 72, position_name: "Left Back", market_value: 2_000_000, preferred_foot: "Left" },
    { name: "Alberto Costa", nationality: "Portugal", birth_date: Date.new(2003, 9, 29), height: 186, weight: 78, position_name: "Right Back", market_value: 15_000_000, preferred_foot: "Right" },
    { name: "Martim Fernandes", nationality: "Portugal", birth_date: Date.new(2006, 1, 18), height: 181, weight: 73, position_name: "Right Back", market_value: 12_000_000, preferred_foot: "Right" },
    { name: "Pedro Lima", nationality: "Brazil", birth_date: Date.new(2006, 7, 1), height: 174, weight: 68, position_name: "Right Back", market_value: 5_000_000, preferred_foot: "Right" },
    { name: "Alan Varela", nationality: "Argentina", birth_date: Date.new(2001, 7, 4), height: 177, weight: 74, position_name: "Defensive Midfielder", market_value: 32_000_000, preferred_foot: "Right" },
    { name: "Pablo Rosario", nationality: "Dominican Republic", birth_date: Date.new(1997, 1, 7), height: 188, weight: 80, position_name: "Defensive Midfielder", market_value: 8_000_000, preferred_foot: "Right" },
    { name: "Tomás Pérez", nationality: "Argentina", birth_date: Date.new(2005, 8, 26), height: 182, weight: 72, position_name: "Defensive Midfielder", market_value: 3_000_000, preferred_foot: "Right" },
    { name: "Victor Froholdt", nationality: "Denmark", birth_date: Date.new(2006, 2, 25), height: 187, weight: 78, position_name: "Central Midfielder", market_value: 22_000_000, preferred_foot: "Right" },
    { name: "Stephen Eustáquio", nationality: "Canada", birth_date: Date.new(1996, 12, 21), height: 177, weight: 72, position_name: "Central Midfielder", market_value: 9_000_000, preferred_foot: "Right" },
    { name: "Rodrigo Mora", nationality: "Portugal", birth_date: Date.new(2007, 5, 5), height: 168, weight: 65, position_name: "Attacking Midfielder", market_value: 40_000_000, preferred_foot: "Right" },
    { name: "Gabri Veiga", nationality: "Spain", birth_date: Date.new(2002, 5, 27), height: 185, weight: 77, position_name: "Attacking Midfielder", market_value: 20_000_000, preferred_foot: "Right" },
    { name: "Borja Sainz", nationality: "Spain", birth_date: Date.new(2001, 2, 21), height: 174, weight: 70, position_name: "Left Winger", market_value: 20_000_000, preferred_foot: "Right" },
    { name: "William Gomes", nationality: "Brazil", birth_date: Date.new(2006, 3, 15), height: 171, weight: 66, position_name: "Left Winger", market_value: 15_000_000, preferred_foot: "Left" },
    { name: "Yann Karamoh", nationality: "France", birth_date: Date.new(1998, 7, 8), height: 184, weight: 75, position_name: "Left Winger", market_value: 1_800_000, preferred_foot: "Right" },
    { name: "Pepê", nationality: "Brazil", birth_date: Date.new(1997, 2, 24), height: 175, weight: 62, position_name: "Right Winger", market_value: 22_000_000, preferred_foot: "Right" },
    { name: "Samu Aghehowa", nationality: "Spain", birth_date: Date.new(2004, 5, 5), height: 193, weight: 84, position_name: "Striker", market_value: 50_000_000, preferred_foot: "Right" },
    { name: "Deniz Gül", nationality: "Turkey", birth_date: Date.new(2004, 7, 2), height: 190, weight: 82, position_name: "Striker", market_value: 4_000_000, preferred_foot: "Right" },
    { name: "Luuk de Jong", nationality: "Netherlands", birth_date: Date.new(1990, 8, 27), height: 188, weight: 86, position_name: "Striker", market_value: 2_500_000, preferred_foot: "Right" }
  ],
  "SL Benfica" => [
    { name: "Anatoliy Trubin", nationality: "Ukraine", birth_date: Date.new(2001, 8, 1), height: 199, weight: 88, position_name: "Goalkeeper", market_value: 28_000_000, preferred_foot: "Right" },
    { name: "Samuel Soares", nationality: "Portugal", birth_date: Date.new(2002, 6, 15), height: 190, weight: 84, position_name: "Goalkeeper", market_value: 4_000_000, preferred_foot: "Right" },
    { name: "António Silva", nationality: "Portugal", birth_date: Date.new(2003, 10, 30), height: 187, weight: 79, position_name: "Center Back", market_value: 32_000_000, preferred_foot: "Right" },
    { name: "Tomás Araújo", nationality: "Portugal", birth_date: Date.new(2002, 5, 16), height: 187, weight: 80, position_name: "Center Back", market_value: 32_000_000, preferred_foot: "Right" },
    { name: "Gonçalo Oliveira", nationality: "Portugal", birth_date: Date.new(2006, 7, 4), height: 183, weight: 74, position_name: "Center Back", market_value: 1_500_000, preferred_foot: "Left" },
    { name: "Nicolás Otamendi", nationality: "Argentina", birth_date: Date.new(1988, 2, 12), height: 183, weight: 82, position_name: "Center Back", market_value: 1_000_000, preferred_foot: "Right" },
    { name: "Samuel Dahl", nationality: "Sweden", birth_date: Date.new(2003, 3, 4), height: 174, weight: 72, position_name: "Left Back", market_value: 9_000_000, preferred_foot: "Left" },
    { name: "Rafa Obrador", nationality: "Spain", birth_date: Date.new(2004, 2, 24), height: 181, weight: 73, position_name: "Left Back", market_value: 2_000_000, preferred_foot: "Left" },
    { name: "Amar Dedić", nationality: "Bosnia and Herzegovina", birth_date: Date.new(2002, 8, 18), height: 180, weight: 74, position_name: "Right Back", market_value: 13_000_000, preferred_foot: "Right" },
    { name: "Alexander Bah", nationality: "Denmark", birth_date: Date.new(1997, 12, 9), height: 183, weight: 76, position_name: "Right Back", market_value: 10_000_000, preferred_foot: "Right" },
    { name: "Leandro Santos", nationality: "Portugal", birth_date: Date.new(2005, 9, 28), height: 181, weight: 70, position_name: "Right Back", market_value: 1_000_000, preferred_foot: "Right" },
    { name: "Richard Ríos", nationality: "Colombia", birth_date: Date.new(2000, 6, 2), height: 187, weight: 78, position_name: "Defensive Midfielder", market_value: 22_000_000, preferred_foot: "Right" },
    { name: "Enzo Barrenechea", nationality: "Argentina", birth_date: Date.new(2001, 5, 22), height: 186, weight: 77, position_name: "Defensive Midfielder", market_value: 13_000_000, preferred_foot: "Right" },
    { name: "Manu Silva", nationality: "Portugal", birth_date: Date.new(2001, 6, 12), height: 190, weight: 82, position_name: "Defensive Midfielder", market_value: 10_000_000, preferred_foot: "Right" },
    { name: "Fredrik Aursnes", nationality: "Norway", birth_date: Date.new(1995, 12, 10), height: 181, weight: 74, position_name: "Central Midfielder", market_value: 20_000_000, preferred_foot: "Right" },
    { name: "Leandro Barreiro", nationality: "Luxembourg", birth_date: Date.new(2000, 1, 3), height: 174, weight: 72, position_name: "Central Midfielder", market_value: 15_000_000, preferred_foot: "Right" },
    { name: "Diogo Prioste", nationality: "Portugal", birth_date: Date.new(2004, 3, 26), height: 179, weight: 73, position_name: "Central Midfielder", market_value: 1_800_000, preferred_foot: "Right" },
    { name: "João Veloso", nationality: "Portugal", birth_date: Date.new(2005, 6, 26), height: 185, weight: 76, position_name: "Central Midfielder", market_value: 1_500_000, preferred_foot: "Right" },
    { name: "Georgiy Sudakov", nationality: "Ukraine", birth_date: Date.new(2002, 9, 1), height: 177, weight: 68, position_name: "Attacking Midfielder", market_value: 32_000_000, preferred_foot: "Both" },
    { name: "João Rego", nationality: "Portugal", birth_date: Date.new(2005, 6, 20), height: 182, weight: 72, position_name: "Attacking Midfielder", market_value: 3_000_000, preferred_foot: "Right" },
    { name: "Andreas Schjelderup", nationality: "Norway", birth_date: Date.new(2004, 6, 1), height: 176, weight: 70, position_name: "Left Winger", market_value: 15_000_000, preferred_foot: "Right" },
    { name: "Bruma", nationality: "Portugal", birth_date: Date.new(1994, 10, 24), height: 173, weight: 65, position_name: "Left Winger", market_value: 7_000_000, preferred_foot: "Right" },
    { name: "Dodi Lukébakio", nationality: "Belgium", birth_date: Date.new(1997, 9, 24), height: 187, weight: 78, position_name: "Right Winger", market_value: 20_000_000, preferred_foot: "Left" },
    { name: "Gianluca Prestianni", nationality: "Argentina", birth_date: Date.new(2006, 1, 31), height: 166, weight: 62, position_name: "Right Winger", market_value: 8_000_000, preferred_foot: "Right" },
    { name: "Vangelis Pavlidis", nationality: "Greece", birth_date: Date.new(1998, 11, 21), height: 186, weight: 84, position_name: "Striker", market_value: 35_000_000, preferred_foot: "Both" },
    { name: "Franjo Ivanović", nationality: "Croatia", birth_date: Date.new(2003, 10, 1), height: 185, weight: 82, position_name: "Striker", market_value: 20_000_000, preferred_foot: "Right" },
    { name: "Henrique Araújo", nationality: "Portugal", birth_date: Date.new(2002, 1, 19), height: 182, weight: 76, position_name: "Striker", market_value: 2_000_000, preferred_foot: "Right" }
  ],
  "Sporting CP" => [
    { name: "Rui Silva", nationality: "Portugal", birth_date: Date.new(1994, 2, 7), height: 191, weight: 84, position_name: "Goalkeeper", market_value: 7_000_000, preferred_foot: "Left" },
    { name: "João Virgínia", nationality: "Portugal", birth_date: Date.new(1999, 10, 10), height: 192, weight: 84, position_name: "Goalkeeper", market_value: 1_000_000, preferred_foot: "Left" },
    { name: "Gonçalo Inácio", nationality: "Portugal", birth_date: Date.new(2001, 8, 25), height: 186, weight: 81, position_name: "Center Back", market_value: 45_000_000, preferred_foot: "Left" },
    { name: "Ousmane Diomande", nationality: "Ivory Coast", birth_date: Date.new(2003, 12, 4), height: 190, weight: 84, position_name: "Center Back", market_value: 45_000_000, preferred_foot: "Right" },
    { name: "Zeno Debast", nationality: "Belgium", birth_date: Date.new(2003, 10, 24), height: 191, weight: 83, position_name: "Center Back", market_value: 30_000_000, preferred_foot: "Right" },
    { name: "Eduardo Quaresma", nationality: "Portugal", birth_date: Date.new(2002, 3, 2), height: 185, weight: 79, position_name: "Center Back", market_value: 17_000_000, preferred_foot: "Right" },
    { name: "Maxi Araújo", nationality: "Uruguay", birth_date: Date.new(2000, 2, 15), height: 179, weight: 73, position_name: "Left Back", market_value: 17_000_000, preferred_foot: "Left" },
    { name: "Nuno Santos", nationality: "Portugal", birth_date: Date.new(1995, 2, 13), height: 177, weight: 70, position_name: "Left Back", market_value: 7_000_000, preferred_foot: "Left" },
    { name: "Matheus Reis", nationality: "Brazil", birth_date: Date.new(1995, 2, 18), height: 184, weight: 78, position_name: "Left Back", market_value: 6_000_000, preferred_foot: "Left" },
    { name: "Ricardo Mangas", nationality: "Portugal", birth_date: Date.new(1998, 3, 19), height: 179, weight: 74, position_name: "Left Back", market_value: 2_500_000, preferred_foot: "Left" },
    { name: "Georgios Vagiannidis", nationality: "Greece", birth_date: Date.new(2001, 9, 12), height: 182, weight: 75, position_name: "Right Back", market_value: 12_000_000, preferred_foot: "Right" },
    { name: "Iván Fresneda", nationality: "Spain", birth_date: Date.new(2004, 9, 28), height: 183, weight: 75, position_name: "Right Back", market_value: 8_000_000, preferred_foot: "Right" },
    { name: "Morten Hjulmand", nationality: "Denmark", birth_date: Date.new(1999, 6, 25), height: 185, weight: 80, position_name: "Defensive Midfielder", market_value: 50_000_000, preferred_foot: "Right" },
    { name: "Daniel Bragança", nationality: "Portugal", birth_date: Date.new(1999, 5, 27), height: 178, weight: 68, position_name: "Central Midfielder", market_value: 12_000_000, preferred_foot: "Left" },
    { name: "Hidemasa Morita", nationality: "Japan", birth_date: Date.new(1995, 5, 10), height: 177, weight: 72, position_name: "Central Midfielder", market_value: 11_000_000, preferred_foot: "Right" },
    { name: "Giorgi Kochorashvili", nationality: "Georgia", birth_date: Date.new(1999, 6, 29), height: 178, weight: 74, position_name: "Central Midfielder", market_value: 6_000_000, preferred_foot: "Right" },
    { name: "Geny Catamo", nationality: "Mozambique", birth_date: Date.new(2001, 1, 26), height: 172, weight: 68, position_name: "Right Midfielder", market_value: 15_000_000, preferred_foot: "Left" },
    { name: "João Simões", nationality: "Portugal", birth_date: Date.new(2007, 1, 6), height: 178, weight: 70, position_name: "Attacking Midfielder", market_value: 6_000_000, preferred_foot: "Left" },
    { name: "Pedro Gonçalves", nationality: "Portugal", birth_date: Date.new(1998, 6, 28), height: 173, weight: 72, position_name: "Left Winger", market_value: 30_000_000, preferred_foot: "Right" },
    { name: "Alisson Santos", nationality: "Brazil", birth_date: Date.new(2002, 9, 27), height: 177, weight: 72, position_name: "Left Winger", market_value: 2_500_000, preferred_foot: "Right" },
    { name: "Geovany Quenda", nationality: "Portugal", birth_date: Date.new(2007, 4, 30), height: 172, weight: 64, position_name: "Right Winger", market_value: 45_000_000, preferred_foot: "Left" },
    { name: "Francisco Trincão", nationality: "Portugal", birth_date: Date.new(1999, 12, 29), height: 184, weight: 76, position_name: "Right Winger", market_value: 35_000_000, preferred_foot: "Left" },
    { name: "Fotis Ioannidis", nationality: "Greece", birth_date: Date.new(2000, 1, 10), height: 187, weight: 86, position_name: "Striker", market_value: 22_000_000, preferred_foot: "Both" },
    { name: "Luis Suárez", nationality: "Colombia", birth_date: Date.new(1997, 12, 2), height: 181, weight: 78, position_name: "Striker", market_value: 22_000_000, preferred_foot: "Right" },
    { name: "Rodrigo Ribeiro", nationality: "Portugal", birth_date: Date.new(2005, 4, 28), height: 186, weight: 80, position_name: "Striker", market_value: 2_500_000, preferred_foot: "Right" }
  ]
}

season = Season.find_by(name: "2025/2026")
puts "⚠️ Season 2025/2026 not found; player-team assignments skipped." if season.nil?

players_by_team.each do |team_name, squad|
  team = Team.find_by(name: team_name)
  if team.nil?
    puts "⚠️ Team not found: #{team_name}"
    next
  end

  squad.each do |attrs|
    country = Country.find_by(name: attrs[:nationality])
    if country.nil?
      puts "⚠️ Country not found for #{attrs[:name]} (#{attrs[:nationality]})"
      next
    end

    position = Position.find_by(name: attrs[:position_name])
    if position.nil?
      puts "⚠️ Position not found for #{attrs[:name]} (#{attrs[:position_name]})"
      next
    end

    player_attrs = attrs.slice(:name, :birth_date, :height, :weight, :market_value, :preferred_foot)
    player = Player.find_or_initialize_by(name: attrs[:name])
    player.assign_attributes(player_attrs.merge(country:, position:))
    player.save!

    next if season.nil?

    pst = PlayerSeasonTeam.find_or_initialize_by(player:, season:)
    pst.team = team
    pst.save!
  end
end

puts "✅ Players and player-season-team records created/updated!"
