# GroupSorter
Takes in people's group preferences, outputs groups
Project made Spring 2016

About
This Groups Generator program was created for Westover members to create sorted groups based on data where students/faculty submit ranking preferences of the different group options.

How to access program
Click the application inside the Group Generator Program folder labeled Group Generator and use the following instructions:

How to use and what to upload
Survey Monkey:
	•	Student enters name
	⁃	Make it required to fill in		
	•	Student ranks the group options
	⁃	Make it required to fill in all options

Student Preferences:
	•	Export Survey Monkey results to excel
	⁃	Delete unnecessary rows and columns
	⁃	Do not keep any rows/columns with titles or unnecessary information— only keep data (i.e. numerical values and names)
	⁃	First Column=Student names
	⁃	The rest of the columns are preference numbers 
	⁃	(Example file included in README folder: StudentExample.xlsx)
	•	-Export Excel sheet to tab-separated file (.tsv)
		
Group Information:
	•	Create Excel file
	⁃	First column is Group name
	⁃	Second column is group capacity (max number of people that can be in group)
	⁃	Groups must be in same order that they are listed on Survey Monkey survey
	⁃	When choosing group capacities, make sure the sum of all the capacities is greater than or equal to the number of people being sorted
	⁃	The closer the sum of the capacities is to the number of people being sorted, the more evenly populated the groups will be.
	⁃	(Example file included in README folder: GroupExample.xlsx)
	•	-Export Excel sheet tab-separated file (.tsv)

-Upload the studentfile.tsv to “Student Preferences”
-Upload the groupfile.tsc to “Group Information”
-Click “Make Groups” and choose location to export file with group information


