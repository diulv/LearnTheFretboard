
#Process Unicode chars
$OutputEncoding = [Console]::OutputEncoding = [System.Text.Encoding]::UTF8

#Get all fretted notes up for standard guitar up to 3
$FrettedNotes = @(
"6,0,E",
"6,1,F",
"6,2,F♯/G♭",
"6,3,G",
"6,4,G♯/A♭",
"6,5,A",
"6,6,A♯/B♭",
"6,7,B",
"6,8,C",
"6,9,C♯/D♭",
"6,10,D",
"6,11,D♯/E♭",
"6,12,E",
"6,13,F",
"6,14,F♯/G♭",
"6,15,G",
"6,16,G♯/A♭",
"6,17,A",
"6,18,A♯/B♭",
"6,19,B",
"6,20,C",
"6,21,C♯/D♭",
"6,22,D",
"5,0,A",
"5,1,A♯/B♭",
"5,2,B",
"5,3,C",
"5,4,C♯/D♭",
"5,5,D",
"5,6,D♯/E♭",
"5,7,E",
"5,8,F",
"5,9,F♯/G♭",
"5,10,G",
"5,11,G♯/A♭",
"5,12,A",
"5,13,A♯/B♭",
"5,14,B",
"5,15,C",
"5,16,C♯/D♭",
"5,17,D",
"5,18,D♯/E♭",
"5,19,E",
"5,20,F",
"5,21,F♯/G♭",
"5,22,G",
"4,0,D",
"4,1,D♯/E♭",
"4,2,E",
"4,3,F",
"4,4,F♯/G♭",
"4,5,G",
"4,6,G♯/A♭",
"4,7,A",
"4,8,A♯/B♭",
"4,9,B",
"4,10,C",
"4,11,C♯/D♭",
"4,12,D",
"4,13,D♯/E♭",
"4,14,E",
"4,15,F",
"4,16,F♯/G♭",
"4,17,G",
"4,18,G♯/A♭",
"4,19,A",
"4,20,A♯/B♭",
"4,21,B",
"4,22,C",
"3,0,G",
"3,1,G♯/A♭",
"3,2,A",
"3,3,A♯/B♭",
"3,4,B",
"3,5,C",
"3,6,C♯/D♭",
"3,7,D",
"3,8,D♯/E♭",
"3,9,E",
"3,10,F",
"3,11,F♯/G♭",
"3,12,G",
"3,13,G♯/A♭",
"3,14,A",
"3,15,A♯/B♭",
"3,16,B",
"3,17,C",
"3,18,C♯/D♭",
"3,19,D",
"3,20,D♯/E♭",
"3,21,E",
"3,22,F",
"2,0,B",
"2,1,C",
"2,2,C♯/D♭",
"2,3,D",
"2,4,D♯/E♭",
"2,5,E",
"2,6,F",
"2,7,F♯/G♭",
"2,8,G",
"2,9,G♯/A♭",
"2,10,A",
"2,11,A♯/B♭",
"2,12,B",
"2,13,C",
"2,14,C♯/D♭",
"2,15,D",
"2,16,D♯/E♭",
"2,17,E",
"2,18,F",
"2,19,F♯/G♭",
"2,20,G",
"2,21,G♯/A♭",
"2,22,A",
"1,0,E",
"1,1,F",
"1,2,F♯/G♭",
"1,3,G",
"1,4,G♯/A♭",
"1,5,A",
"1,6,A♯/B♭",
"1,7,B",
"1,8,C",
"1,9,C♯/D♭",
"1,10,D",
"1,11,D♯/E♭",
"1,12,E",
"1,13,F",
"1,14,F♯/G♭",
"1,15,G",
"1,16,G♯/A♭",
"1,17,A",
"1,18,A♯/B♭",
"1,19,B",
"1,20,C",
"1,21,C♯/D♭",
"1,22,D")

#Drop into objects for better sorting (e.g. practice with no accidentals)
$FretObjects = ForEach($FrettedNote in $FrettedNotes){
	$Tokens = $FrettedNote.Split(',')
	
	if ($Tokens.Count -eq 3){
		[PSCustomObject]@{
			String = $Tokens[0]
			Fret = $Tokens[1]
			Note = $Tokens[2]
		}
	}
}
		

$ASCIIFretboard = @(
"____________________________________________________________________________________________"
"1|||---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|",
" |||   |   |   |   |   |   |   |   |   |   |   | ⬤ |   |   |   |   |   |   |   |   |   |   |",  
"2|||---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|",
" |||   |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   |" ,
"3|||---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|",
" |||   |   | ⬤ |   | ⬤ |   | ⬤ |   | ⬤ |   |   |   |   |   | ⬤ |   | ⬤ |   | ⬤ |   | ⬤ |   |",
"4|||---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|",
" |||   |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   |",
"5|||---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|",
" |||   |   |   |   |   |   |   |   |   |   |   | ⬤ |   |   |   |   |   |   |   |   |   |   |",
"6|||---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|",
"¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯")


#$FretObject = $FretObjects | Where-Object {$_.Note -NotMatch "♯"}

while ($true){
	Clear-Host
	echo "Ctrl + C to exit"
	echo ""
	echo ""
	
	#Get Random Fret Object
	$FretObject = $FretObjects | Get-Random
	
	
	#Get Random Fret Object without accidentals
	#$FretObject = $FretObjects | Where-Object {$_.Note -NotMatch "♯"}
	
	#Iterate through ASCIIFretboard
	for($i = 0; $i -lt 14; $i++){
		#Is the note on this string?  String number to ASCIIFretboard index is (((String - 1) * 2) + 1)
		if( $i -eq (($FretObject.String - 1) * 2) + 1){
			#If so, update the position in the array
			$ASCIIFretboardWithNote = ""
			for($j = 0; $j -lt $ASCIIFretboard[$i].length; $j++){
				#If the Fret = 0, print at string index 2
				if(([int]$FretObject.Fret -eq 0) -and ($j -eq 2)){
					$ASCIIFretboardWithNote += "◯"
				}
				#If it's greater than zero, use the formula (Fret * 4) + 1
				elseif(([int]$FretObject.Fret -gt 0) -and ($j -eq ([int]$FretObject.Fret * 4 + 1 ))){
					$ASCIIFretboardWithNote += "◯"
				}
				else{
					$ASCIIFretboardWithNote += $ASCIIFretboard[$i][$j]
				}
			}
			echo $ASCIIFretboardWithNote
		}	
		else{
			echo $ASCIIFretboard[$i]
		}
	}
	echo ""
	echo "Press any key to reveal note"
	

	#Wait for input
	$null = $Host.UI.RawUI.ReadKey('NoEcho,IncludeKeyDown');
	
	echo $FretObject | ft
	echo ""
	echo "Press any key for next note"

	#Wait for input
	$null = $Host.UI.RawUI.ReadKey('NoEcho,IncludeKeyDown');
}