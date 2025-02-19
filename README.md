# google-takeout-download-automation
Simple HTML page to help with downloading a large amount of exported zip files from Google Takeout

# Steps
1. Create your Google Takeout request
2. When it's ready, go to the Google Takeout exports page
3. Right click the first download link and copy the link URL
4. Split it into parts at the "i=" query string param and paste into the constants in the script
5. Use the inputs on the page to kick it off. Google will auto sign-out after some time, so you'll have to do it in batches. Once you start getting the sign-in page on each new tab, you have to take note of the last successful download and then kick it off again from there.
