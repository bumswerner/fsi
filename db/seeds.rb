# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).


# generated objects Faculty


Faculty.create!(
  name: "Ingenieurwissenschaften",
  symbol: "IngWi",
  description: "Die Ausbildung von Ingenieuren an der htw saar wird von drei
                Kernelementen geprägt: Modernität aus Tradition, ein offenes
                Ohr für die Bedürfnisse der industriellen Praxis und eine 
                ausgeprägte Internationalität.
                Das macht uns stark und unverwechselbar.")
            
Faculty.create!(
  name: "Sozialwissenschaften",
  symbol: "SozWi",
  description: "Die Fakultät für Sozialwissenschaften organisiert sich in zwei
                Departments. Unter dem Dach eines \"Departments\" sind in der
                Fakultät für Sozialwissenschaften an der htw saar die zu einer
                Disziplin gehörenden Lehr- sowie Forschungsaktivitäten
                zusammengefasst.")
                  
Faculty.create!(
  name: "Wirtschaftswissenschaften",
  symbol: "WirtWi",
  description: "Um im Berufsleben in der heutigen Zeit – geprägt von Globalisierung,
                Interdisziplinarität und Internationalität  - erfolgreich bestehen
                zu können und sich lebenslang weiterbilden zu können, 
                möchten wir Ihnen als anwendungsorientierte Hochschule mehr mit 
                auf den Weg geben als reines Faktenwissen.")
                  
puts "Created 3 faculties"      

Studytype.create!(
  name: "Bachelor",
  symbol: "B",
  description: "Das Wort „Bachelor“ lässt sich auf das lateinische Wort „Bakkalaureus“ 
                zurückführen, was so viel wie „mit Lorbeeren gekrönt“ bedeutet.
                Schon im Mittelalter bezeichnete der Bakkalaureus den Inhaber
                des untersten akademischen Grades. Zu Beginn des 19. Jahrhunderts 
                verschwand dieser akademische Grad in Deutschland.
                An seine Stelle trat das Abitur.
                Zu Beginn des 21. Jahrhunderts führte die Bologna Reform den 
                Bachelor Abschluss in Deutschland im Rahmen des neuen
                mehrstufigen Bachelor-Master-Systems wieder ein.
                Ziel des Bologna Prozesses war es, das europäische Hochschulsystem
                zu vereinheitlichen, um eine bessere Vergleichbarkeit und mehr
                Austausch zu ermöglichen. Die Bachelor- und Masterabschlüsse 
                entsprechen mittlerweile in 47 Nationen einheitlichen Standards.")
                
Studytype.create!(
  name: "Master",
  symbol: "M",
  description: "Das Masterstudium dauert meistens zwei bis vier Semester und 
                ergänzt ein bereits absolviertes grundständiges Studium 
                (in aller Regel ein Bachelor-Studium). 
                Es kann der wissenschaftlichen Vertiefung des vorherigen Studiums
                dienen oder neue Wissensgebiete erschließen.
                Oft ist neben dem erfolgreichen Besuch von Lehrveranstaltungen
                auch eine Abschlussarbeit, die Master-Thesis, zu schreiben.
                In vielen Ländern (und teils auch Hochschulen innerhalb desselben Landes) 
                gibt es aber sehr unterschiedliche Mastervarianten, die in Ausrichtung,
                Dauer, Zulassungsvoraussetzungen und Aufbau variieren.")

puts "Created 2 studytypes"


Courseofstudy.create!(
  name: "Praktische Informatik",
  symbol: "PI",
  description: "Nach wie vor dringt die Informatik in immer mehr Lebensbereiche
                vor und erringt so eine stetig wachsende Bedeutung für unser 
                tägliches Leben. Neue computergestützte Technologien etablieren 
                sich und verursachen nachhaltige Veränderungen der Arbeitswelt
                und im privaten Bereich. Zur Umsetzung dieser Technologien 
                werden Fachkräfte nachgefragt, die sowohl ein fundiertes
                informatikspezifisches Wissen als auch Kenntnisse in 
                Betriebswirtschaft, Sprachen und Sozialkompetenz 
                (z.B. Teamorientierung) mitbringen. ",
  faculty_id: 1,
  studytype_id: 1)
  
Courseofstudy.create!(
  name: "Praktische Informatik",
  symbol: "PI",
  description: "Master-Absolventinnen und -Absolventen der Praktischen Informatik
                können beispielsweise in den Bereichen Softwareentwicklung, 
                Systemadministration, Projektleitung, Consulting, Training 
                und Integration zum Einsatz kommen. Gegenüber Bachelor-Absolventinnen 
                und -Absolventen unterscheidet sich jedoch ihre Einsatzart.",
  faculty_id: 1,
  studytype_id: 2)
  
Courseofstudy.create!(
  name: "Kommunikations Informatik",
  symbol: "KI",
  description: "Einerseits beherrschen unsere Absolventinnen und Absolventen die
                technischen Kommunikationsgeräte, die Daten in immer kürzerer 
                Zeit durch ständig verbesserte Adressierungsarten übertragen.
                Andererseits verfügen unsere Studierenden über eine Vielfalt 
                von Kenntnissen aus der Softwareentwicklung, um den Anforderungen
                von im Netz verteilt arbeitenden Prozessen gerecht zu werden.
                Hierzu nutzen Kommunikationsinformatiker/innen die gesamte 
                Bandbreite von Internet-Technologien bis Mobilfunk, die durch 
                das Wissen über Software-Engineering, Betriebssysteme, Datenbanken
                und Sicherheit flankiert wird.",
  faculty_id: 1,
  studytype_id: 1)
  
  
Courseofstudy.create!(
  name: "Wirtschaftsingenieurwesen",
  symbol: "WI",
  description: "Dadurch, dass sie die Welt immer aus zwei Blickwinkeln sehen,
                sind Wirtschaftsingenieure und -ingenieurinnen die Teamworker 
                unter den Ingenieuren! Weltweit agieren, aktiv die Zukunft vor 
                Ort mitgestalten  Sprachkenntnisse sind dabei genauso wichtig
                wie das Einfühlungsvermögen in fremde Kulturen und Mentalitäten.",
  faculty_id: 3,
  studytype_id: 1)  
  
Courseofstudy.create!(
  name: "Soziale Arbeit und Pädagogik der Kindheit",
  symbol: "SAPK",
  description: "Neben Bildungs- und Beratungsangeboten für Eltern und Familien
                sind spezifische Tätigkeitsfelder die Prävention, Intervention
                und Förderung von Kindern innerhalb institutioneller Einrichtungen
                für Bildung, Betreuung und Erziehung (KiTa, Krippe, Hort).
                Hinzu kommen Aufgaben der Leitung, Fachberatung und Qualitätsentwicklung 
                sowie der Kooperation und Vernetzung. Von besonderer Bedeutung
                ist der Übergang vom Kindergarten in die Grundschule und die
                sozialpädagogische Begleitung von Kindern, Lehrerinnen und
                Lehrern und Eltern in der Grundschule.",
  faculty_id: 2,
  studytype_id: 2)

puts "Created 5 Courseofstudy"

8.times do |number|
Category.create!(
  name: "Semester #{number+1}",
  symbol: "S #{number+1}",
  description: 'Ein Semester (lateinisch semestris ‚sechsmonatig‘, ‚halbjährig‘
                von sex ‚sechs‘ und mensis ‚monat‘[1]) ist eine seit dem 
                15. Jahrhundert gebräuchliche Bezeichnung für ein Studienhalbjahr
                an Universitäten bzw. Hochschulen oder Volkshochschulen (VHS).')
end

puts "Created 8 Categories of Semesters"

Category.create!(
  name: 'Wahlpflichtfächer',
  symbol: 'WFS',
  description: 'Wahlpflichtfach bedeutet, dass eine Student bzw. Schüler aus 
                einem Fachbereich oder Lehrangebot ein (oder mehrere) Fächer
                auswählen müssen.')
                
puts "Created 1 Category of Wahlpflichtfächer"


# id 1
Lecture.create!(
  name: "Mathe 1",
  description: "Lorem ipsum dolor sit amet, consetetur sadipscing elitr,
                sed diam nonumy eirmod tempor invidunt ut labore et dolore 
                magna aliquyam erat, sed diam voluptua. At vero eos et accusam
                et justo duo dolores et ea rebum. Stet clita kasd gubergren, 
                no sea takimata sanctus est Lorem ipsum dolor sit amet."
  )

# id 2
Lecture.create!(
  name: "Programmieren 1",
  description: "Lorem ipsum dolor sit amet, consetetur sadipscing elitr,
                sed diam nonumy eirmod tempor invidunt ut labore et dolore 
                magna aliquyam erat, sed diam voluptua. At vero eos et accusam
                et justo duo dolores et ea rebum. Stet clita kasd gubergren, 
                no sea takimata sanctus est Lorem ipsum dolor sit amet."
  )
  
# id 3
Lecture.create!(
  name: "BSE",
  description: "Lorem ipsum dolor sit amet, consetetur sadipscing elitr,
                sed diam nonumy eirmod tempor invidunt ut labore et dolore 
                magna aliquyam erat, sed diam voluptua. At vero eos et accusam
                et justo duo dolores et ea rebum. Stet clita kasd gubergren, 
                no sea takimata sanctus est Lorem ipsum dolor sit amet."
  )
  
# id 4
Lecture.create!(
  name: "Programmieren 2",
  description: "Lorem ipsum dolor sit amet, consetetur sadipscing elitr,
                sed diam nonumy eirmod tempor invidunt ut labore et dolore 
                magna aliquyam erat, sed diam voluptua. At vero eos et accusam
                et justo duo dolores et ea rebum. Stet clita kasd gubergren, 
                no sea takimata sanctus est Lorem ipsum dolor sit amet."
  )
  
# id 5
Lecture.create!(
  name: "Graphentheorie",
  description: "Lorem ipsum dolor sit amet, consetetur sadipscing elitr,
                sed diam nonumy eirmod tempor invidunt ut labore et dolore 
                magna aliquyam erat, sed diam voluptua. At vero eos et accusam
                et justo duo dolores et ea rebum. Stet clita kasd gubergren, 
                no sea takimata sanctus est Lorem ipsum dolor sit amet."
  )
  
# id 6
Lecture.create!(
  name: "Theoretische Informatik",
  description: "Lorem ipsum dolor sit amet, consetetur sadipscing elitr,
                sed diam nonumy eirmod tempor invidunt ut labore et dolore 
                magna aliquyam erat, sed diam voluptua. At vero eos et accusam
                et justo duo dolores et ea rebum. Stet clita kasd gubergren, 
                no sea takimata sanctus est Lorem ipsum dolor sit amet."
  )
  
# id 7
Lecture.create!(
  name: "Rechnerarchitektur",
  description: "Lorem ipsum dolor sit amet, consetetur sadipscing elitr,
                sed diam nonumy eirmod tempor invidunt ut labore et dolore 
                magna aliquyam erat, sed diam voluptua. At vero eos et accusam
                et justo duo dolores et ea rebum. Stet clita kasd gubergren, 
                no sea takimata sanctus est Lorem ipsum dolor sit amet."
  )
  
puts "Created 7 Lectures"

Assoziation.create!(
  code: "PIB4711",
  instructor: "Herr Braun",
  category_id: 1,
  courseofstudy_id: 1,
  lecture_id: 1
  )
  
Assoziation.create!(
  code: "PIB4812",
  instructor: "Herr Folz",
  category_id: 1,
  courseofstudy_id: 1,
  lecture_id: 2
  )
  
# Semester 1 - Praktische Informatik - BSE
Assoziation.create!(
  code: "PIB9713",
  instructor: "Herr Pauly and the Pick",
  category_id: 1,
  courseofstudy_id: 1,
  lecture_id: 3
  )
  
# Semester 2 - Praktische Informatk - Programmieren 2
Assoziation.create!(
  code: "PIB1151",
  instructor: "Eschi",
  category_id: 2,
  courseofstudy_id: 1,
  lecture_id: 4
  )
  
# Semester 2 - Praktische Informatk - Graphentheorie
Assoziation.create!(
  code: "PIB1252",
  instructor: "Berberisch",
  category_id: 2,
  courseofstudy_id: 1,
  lecture_id: 5
  )
  
# Semester 3 - Praktische Informatik - Theoretische Informatik
Assoziation.create!(
  code: "PIB3253",
  instructor: "Kretchmer",
  category_id: 3,
  courseofstudy_id: 1,
  lecture_id: 6
  )

# Semester 3 - Praktische Informatik - Rechnerarchitektur
Assoziation.create!(
  code: "PIB3354",
  instructor: "Leiner",
  category_id: 3,
  courseofstudy_id: 1,
  lecture_id: 7
  )
  
puts "Created 7 Assoziations"

# id 1
Section.create!(
  name: "Klausuren",
  description: "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, 
                sed diam nonumy eirmod tempor invidunt ut labore et dolore
                magna aliquyam erat, sed diam voluptua. At vero eos et accusam et"
  )

# id 2
Section.create!(
  name: "Übungen",
  description: "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, 
                sed diam nonumy eirmod tempor invidunt ut labore et dolore magna
                aliquyam erat, sed diam voluptua. At vero eos et accusam et justo"
  )

# id 3
Section.create!(
  name: "Skripte",
  description: "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, 
                sed diam nonumy eirmod tempor invidunt ut labore et dolore magna
                aliquyam erat, sed diam voluptua. At vero eos et accusam et justo"
  )
  
# id 4
Section.create!(
  name: "Lösungen",
  description: "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, 
                sed diam nonumy eirmod tempor invidunt ut labore et dolore magna
                aliquyam erat, sed diam voluptua. At vero eos et accusam et justo"
  )
  
puts "Created 4 Sections"

Connection.create!(
  name: "Klausuren --> Mathe 1",
  section_id: 1,
  lecture_id: 1
  )
  
Connection.create!(
  name: "Übungen --> Mathe 1",
  section_id: 2,
  lecture_id: 1
  )
  
Connection.create!(
  name: "Skripte --> Mathe 1",
  section_id: 3,
  lecture_id: 1
  )

Connection.create!(
  name: "Lösungen --> Mathe 1",
  section_id: 4,
  lecture_id: 1
  )
  
puts "Created 4 Connections"

Material.create!(
  name: "SS 2010",
  discription: "",
  section_id: 1,
  lecture_id: 1
  )
  
Material.create!(
  name: "SS 2011",
  discription: "",
  section_id: 1,
  lecture_id: 1
  )
  
Material.create!(
  name: "SS 2012",
  discription: "",
  section_id: 1,
  lecture_id: 1
  )
  
Material.create!(
  name: "SS 2013",
  discription: "",
  section_id: 1,
  lecture_id: 1
  )
  
puts "Created 4 Materials"
