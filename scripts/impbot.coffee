module.exports = (robot) ->

	# Meeting time excitement. 
	robot.respond /meeting time/i, (res) ->
		res.send '@everyone meeting time! \n https://media.giphy.com/media/ajQIVqgZhohNK/giphy.gif'

	# Remembers # of absences for the member mentioned. 
	# @username to record absence 
	# if user absence count exceeds 5, a private message is sent. 
	robot.respond /(.*) is absent/i, (res) -> 
		user = res.match[1]
		countData = "#{user} absence count"
		robot.brain.set(countData, 
			(robot.brain.get(countData) || 0) + 1
			) 
		if (robot.brain.get(countData) > 5)
			try
				# tries to private chat
				robot.messageRoom "#{user}", "Ummm... You've been absent to quite a few meetings. \n Try to make it next time!"
			catch e
				# if user doesn't exist. 
			

	# helper method that retrieves the absence 
	robot.hear /(.*) absence count/i, (res) ->
		user = res.match[1]
		countData = "#{user} absence count"
		res.send "#{user} absence count: " + (robot.brain.get(countData) || "0")
