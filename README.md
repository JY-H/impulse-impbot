# imp-bot

Impulse's very own hubot. 

## Functionality

* Announce meeting time: `@imp-bot: meeting time` will trigger an announcement in the general chat. 
* Record absences: `@imp-bot: "person" is absent` will allow impbot to record the absence. If the number of absences exceeds 5, imp-bot will send a private friendly reminder to that person. 
* Check the number of absences: `@imp-bot: "person" absence count"` will retrieve the number of absences. 
* @jiayan to request heroku access / submit functionality suggestions. 
* Hubot general functionalities/commands: 
`
% bin/hubot
hubot> hubot help
hubot adapter - Reply with the adapter
hubot animate me <query> - The same thing as "image me", except adds a few parameters to try to return an animated GIF instead.
hubot echo <text> - Reply back with <text>
hubot help - Displays all of the help commands that hubot knows about.
hubot help <query> - Displays all help commands that match <query>.
hubot image me <query> - The Original. Queries Google Images for <query> and returns a random top result.
hubot map me <query> - Returns a map view of the area returned by "query".
hubot mustache me <query> - Searches Google Images for the specified query and mustaches it.
hubot mustache me <url> - Adds a mustache to the specified URL.
hubot ping - Reply with pong
hubot pronounce <phrase> in <language> - Provides pronounciation of <phrase> (<language> is optional)
hubot pug bomb N - get N pugs
hubot pug me - Receive a pug
hubot the rules - Make sure hubot still knows the rules.
hubot time - Reply with current time
hubot translate me <phrase> - Searches for a translation for the <phrase> and then prints that bad boy out.
hubot translate me from <source> into <target> <phrase> - Translates <phrase> from <source> into <target>. Both <source> and <target> are optional
hubot youtube me <query> - Searches YouTube for the query and returns the video embed link.
ship it - Display a motivation squirrel
`


### Running imp-bot Locally

* Retrieve the HUBOT_SLACK_TOKEN from the slack integration configs page. 
* Clone this repo. 
* @jiayan to request access or take imp-bot offline. 
* Cd to the repo in terminal and enter `HUBOT_SLACK_TOKEN=PASTE_TOKEN_HERE ./bin/hubot --adapter slack`
* @jiayan to request access or redeploy imp-bot. 
