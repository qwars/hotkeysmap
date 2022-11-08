import './index.styl'

def rectVisibleLayer el
	const bounding = el:firstElementChild:nextElementSibling.getBoundingClientRect
	el:classList.add 'on-right' if bounding:right + 10 > window:innerWidth + Imba.root.dom:scrollLeft
	el:classList.add 'on-top'if bounding:bottom + 10 > window:innerHeight + Imba.root.dom:scrollTop

def closeDialog e
	for item in Imba.root.querySelectorAll 'details[open]'
		item.dom:open = not not item.contains e.target

	for item in e.event.composedPath
		if 'DETAILS' === item:nodeName
			item:classList.remove 'on-top'
			item:classList.remove 'on-right'
			rectVisibleLayer item
			break
	const dialog = Imba.root.querySelector 'dialog[open]'
	if dialog and not ( e.target === dialog or dialog.contains e.target ) then dialog.open = false

Imba.root.on$
	Imba.root.@on_ ? Imba.root.@on_:length : 0
	['tap', 'closeDialog']
	self
