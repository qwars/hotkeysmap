export tag Application < output
	prop loading default: true
	prop waiting default: true
	prop messages default: []

	def setup

		const datastate = self
		extend tag element
			def application
				datastate

	def message
		@messages

	def message= v
		const idx = @messages.push v
		setTimeout(&, 20000) do Imba.commit @messages.splice( idx - 1, 1)

	def invalidCompletion e
		if e then message = Object.assign e,
			name:  'invalid',
			message: messages[ e:message ] or e:message

	def warningCompletion e
		if e then message = Object.assign e,
			name:  'warning',
			message: messages[ e:message ] or e:message

	def announcementCompletion e
		if e then message = Object.assign e,
			name:  'announcement',
			message: messages[ e:message ] or e:message

	def render
		<self .loading=@loading>

