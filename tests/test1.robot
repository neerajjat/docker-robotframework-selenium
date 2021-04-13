*** Settings ***
Library     SeleniumLibrary
Test Teardown   Close Browser

*** Variables ***
${url}      https://www.google.com
${search_box}			//input[@name='q']
${search_button}	//input[@value='Google Search']
${browser_implicit_wait}    10

*** Test Cases ***
TC-xxx Open homepage
    Open browser     ${url}   	chrome      options=add_argument("--no-sandbox")
    Set Browser Implicit Wait   ${browser_implicit_wait}
		Input text		${search_box}				It's a beautiful day
		Click element		${search_button}
		Capture page screenshot
