module.exports = (robot) ->

	# Meeting time excitement. 
	robot.respond /meeting time/i, (res) ->
		robot.send {room: "general"}, "<!channel> meeting time! \n https://media.giphy.com/media/ajQIVqgZhohNK/giphy.gif"

	# Remembers # of absences for the member mentioned. 
	# @imp-bot to record absence 
	# if user absence count exceeds 5, a private message is sent. 
	robot.respond /(.*) is absent/i, (res) -> 
		userName = res.match[1]
		countData = "#{userName} absence count"
		robot.brain.set(countData, 
			(robot.brain.get(countData) || 0) + 1
			) 
		if (robot.brain.get(countData) > 5)
			try
				# tries to private chat
				robot.messageRoom "#{userName}", "Ummm... You've been absent to quite a few meetings. \n Try to make it next time!"
			catch e
				# if user doesn't exist. 
			

	# helper method that retrieves the absence 
	robot.respond /(.*) absence count/i, (res) -> 
		userName = res.match[1]
		countData = "#{userName} absence count"
		res.send "#{userName} absence count: " + (robot.brain.get(countData) || "0")

	# # DO NOT UNCOMMENT, FOR TESTING ONLY. 
	# robot.respond /(.*) clear absence/i, (res) ->
	# 	userName = res.match[1]
	# 	robot.brain.set("#{userName} absence count", 0)

	# Awesomeness++
	robot.hear /@(.*)\+\+/i, (res) ->
		userName = res.match[1]
		countData= "#{userName} awesomeness"
		robot.brain.set(countData,
			(robot.brain.get(countData) || 0) + 1
			)
		res.send "@#{userName}++ [woot! awesomeness points now at " + (robot.brain.get(countData) || "0") + " ]"

	# Awesomeness--
	robot.hear /@(.*)\-\-/i, (res) ->
		userName = res.match[1]
		countData = "#{userName} awesomeness"
		robot.brain.set(countData, (robot.brain.get(countData) || 0) - 1)
		res.send "@#{userName}-- [uh oh... awesomeness points down at " + (robot.brain.get(countData) || "-1") + " ]"

	# Rules
	rules = [
	  "1. A robot may not injure a human being or, through inaction, allow a human being to come to harm.",
	  "2. A robot must obey any orders given to it by human beings, except where such orders would conflict with the First Law.",
	  "3. A robot must protect its own existence as long as such protection does not conflict with the First or Second Law."
	  ]
	robot.hear /Laws of Robots/i, (res) ->
		res.send rules.join('\n')

	# Special Abilities
	abilities = [
		"1. `@username++` will give awesomeness points to that person!",
		"2. `@imp-bot meeting time` will notify everyone in the channel that it's meeting time!",
		"3. You must speak to `JiaYan` if you would like to request additional functionalities!"]
	robot.hear /abilities/i, (res) ->
		res.send abilities.join('\n')
