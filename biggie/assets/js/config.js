import domselect from 'dom-select'
import query from 'query-dom-components'

const config = {

	BASE: '/',
	APP: 'boilerplate',
	GC_TEMPLATE: 'content',
	BIGGIE_TEMPLATE: 'biggie/generated',

	body: document.body,
	view: domselect('main'),

	width: window.innerWidth,
	height: window.innerHeight,

	ui: query({ el: document.body }),

	multilingual: true
}

export default config
