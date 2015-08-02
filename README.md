# imp-bot

Impulse's very own hubot. 

## Functionality

* Announce meeting time: `@imp-bot: meeting time` will trigger an announcement in the general chat. 
* Record absences: `@imp-bot: "person" is absent` will allow impbot to record the absence. If the number of absences exceeds 5, imp-bot will send a private friendly reminder to that person. 
* Check the number of absences: `@imp-bot: "person" absence count"` will retrieve the number of absences. 
* @jiayan to request heroku access / submit functionality suggestions. 


### Running imp-bot Locally

* Retrieve the HUBOT_SLACK_TOKEN from the slack integration configs page. 
* Clone this repo. 
* @jiayan to request access or take imp-bot offline. 
* Cd to the repo in terminal and enter `HUBOT_SLACK_TOKEN=PASTE_TOKEN_HERE ./bin/hubot --adapter slack`
* @jiayan to request access or redeploy imp-bot. 
