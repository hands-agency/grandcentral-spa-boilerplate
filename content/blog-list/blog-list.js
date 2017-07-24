import config from '../../biggie/assets/js/config'
import utils from '../../biggie/assets/js/utils'
import classes from '../../biggie/node_modules/dom-classes'
import Default from '../../biggie/assets/js/sections/default'

class NewsList extends Default {

	constructor(opt) {
		super(opt)

		this.slug = 'home'
		this.ui = null
	}

	init(req, done) {
		super.init(req, done)
	}

	ready(done) {
		super.ready()

		done()
	}

	animateIn(req, done) {
		classes.add(config.body, `is-${this.slug}`)

		TweenLite.to(this.page, 1, {
			autoAlpha: 1,
			ease: Expo.easeInOut,
			onComplete: done
		})
	}

	animateOut(req, done) {
		classes.remove(config.body, `is-${this.slug}`)

		TweenLite.to(this.page, 0.7, {
			autoAlpha: 0,
			ease: Expo.easeInOut,
			onComplete: done
		})
	}

	destroy(req, done) {
		super.destroy()

		this.ui = null
		this.page.parentNode.removeChild(this.page)

		done()
	}
}

module.exports = NewsList
