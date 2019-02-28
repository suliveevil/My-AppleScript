[Clean ScreenCapture - Macro Library - Keyboard Maestro Discourse](https://forum.keyboardmaestro.com/t/clean-screencapture/12591/12)

```applescript
-- Clean ScreenCapture v1.1.0 - German
-- assume your default setting：Show Desktop Icon、MenuBar、AutoHideDock

-- Hide Desktop Icon
do shell script "chflags -h hidden ~/Desktop/*"

-- Toggle AutoHide MenuBar
tell application "System Preferences" to reveal the ¬
	anchor named "main" of ¬
	pane id "com.apple.preference.general"
tell application "System Events" to tell ¬
	process "System Preferences" to tell ¬
	window "Allgemein" to tell ¬
	checkbox "Menüleiste automatisch ein- und ausblenden" to ¬
	perform action "AXPress"
delay 0.2

-- use System Keyboard Shotcut：Shift + Command + 3
-- 1 Area screenshot，change key code 20 to 21（on Device it is 4） or 22（on Device it is 5）
-- 2 Capture Screenshot to Clipboard，add 【control down,】 in curly braces

tell application "System Events"
	keystroke (key code 20 using {shift down, command down})
end tell

-- delay 10 seconds，you can change that at your wish
delay 10

-- Show Desktop Icon
do shell script "chflags -h nohidden ~/Desktop/*"

-- Toggle AutoHide MenuBar
tell application "System Preferences" to reveal the ¬
	anchor named "main" of ¬
	pane id "com.apple.preference.general"
tell application "System Events" to tell ¬
	process "System Preferences" to tell ¬
	window "Allgemein" to tell ¬
	checkbox "Menüleiste automatisch ein- und ausblenden" to ¬
	perform action "AXPress"
quit application "System Preferences"
```