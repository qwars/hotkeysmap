###
ДИЗАЙН-СИСТЕМА
дизайн-система-дизайн-токены
дизайн-система-дизайн-токены--base
дизайн-система-дизайн-токены--border
дизайн-система-дизайн-токены--breakpoints
дизайн-система-дизайн-токены--colors
дизайн-система-дизайн-токены--font
дизайн-система-дизайн-токены--shadow
дизайн-система-дизайн-токены--spacing
дизайн-система-дизайн-токены--transition
дизайн-система-миниатюры
дизайн-система-миниатюры--miniatures-story-1
дизайн-система-icons
дизайн-система-icons--icons-story-basic-1
дизайн-система-icons--icons-story-rules-2
###

import Sketch as Tokens from './дизайн-система-дизайн-токены'
import Sketch as Miniatures from './дизайн-система-миниатюры'
import Sketch as Icons from './дизайн-система-icons'

export tag Sketch < section
	def render
		<self>
			if router.hash.includes window:encodeURI 'дизайн-система-дизайн-токены' then <section> "1"
			elif router.hash.includes window:encodeURI 'дизайн-система-миниатюры' then <Miniatures> "2"
			elif router.hash.includes window:encodeURI 'дизайн-система-icons' then <section> "3"
			else <section> "0"