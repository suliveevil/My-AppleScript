-- OCR v1.0.0 - BAB version
set the ocrResult to ""
do shell script "screencapture -i /tmp/ocr_snapshot.png;tesseract /tmp/ocr_snapshot.png stdout -l chi_sim+chi_sim_vert+chi_tra+chi_tra_vert+eng+osd 2>&1|pbcopy"
set the clipboard to ocrResult
tell application "Eudb_en"
	reopen
	show dic with word the clipboard
end tell
display notification (the clipboard) with title "OCR Result"


























