import './index.styl'
import './data-display'

import Welcome,
	DesignSystem,
	RevisionsPolicy,
	DataEntry,
	DataDisplay,
	ComplexComponents,
	Charts,
	Typography,
	Layout,
	Utilities from './pages'

const MenuNavigation = require './navigation.json'

const NavigationToMap = do|list|
	list.map do
		[
			window.encodeURI $1[1]
			[
				$1[0]
				$1[2] and Map.new NavigationToMap $1[2]
			]
		]

const CurrentState =
	navigation: Map.new NavigationToMap JSON.parse MenuNavigation
	nav-open: false
	current-menu: []

tag MenuLink < a

	def loadCurrentUrl
		CurrentState:current-menu = data
		self

	def render
		<self :taproute.loadCurrentUrl> data[1][0].toLocaleLowerCase

export tag Menu < menutabs
	@classes = []

	def mount
		CurrentState:current-menu = [ params:document, CurrentState:navigation.get params:document ] if params:document

	def toggleNavOpen
		CurrentState:nav-open = not CurrentState:nav-open

	def render
		<self#admin-ui-menu>
			<abbr> <kbd :tap.toggleNavOpen> <svg:svg> <svg:use href="{ISVG}#Burger">
			<nav> for item in Array.from CurrentState:navigation.entries
				<MenuLink[ item ] .local-link=( params:document === item[0] )
					route-to="/admin-ui/{item[0]}">
			<aside>

export tag Navigation < navsidebar

	def render
		<self open=CurrentState:nav-open>
			if CurrentState:current-menu and CurrentState:current-menu[1] then <ul>
				for item in Array.from CurrentState:current-menu[1][1].entries
					<li>
						<legend .local-link=( params:navigation === item[0] )>
							<a route-to="/admin-ui/{ params:document }/{ item[0] }"> item[1][0]
						<ul> for sub in Array.from item[1][1].entries
							<li .local-link=router.hash.includes( sub[0] )> <a
								route-to="/admin-ui/{ params:document }/{ sub[0] }"> sub[1][0]

export tag Aside < aside
	@classes = []

	def render
		<self#admin-ui-aside>

export tag Article < article
	@classes = []

	def render
		<self#admin-ui-article>
			<Welcome route="{router.root}/admin-ui/WELCOME">
			<DesignSystem route="{router.root}/admin-ui/{window.encodeURI 'ДИЗАЙН-СИСТЕМА'}">
			<RevisionsPolicy route="{router.root}/admin-ui/{window.encodeURI 'РЕД. ПОЛИТИКА'}">
			<DataEntry route="{router.root}/admin-ui/{ window.encodeURI 'DATA ENTRY'}">
			<DataDisplay route="{router.root}/admin-ui/{window.encodeURI 'DATA DISPLAY'}">
			<ComplexComponents route="{router.root}/admin-ui/{window.encodeURI 'COMPLEX COMPONENTS'}">
			<Charts  route="{router.root}/admin-ui/CHARTS">
			<Typography route="{router.root}/admin-ui/TYPOGRAPHY">
			<Layout  route="{router.root}/admin-ui/LAYOUT">
			<Utilities  route="{router.root}/admin-ui/UTILITIES">