import framework from 'framework'
import classes from 'dom-classes'

export default (e) => {

    const target = e.currentTarget

    const url = target.href
    if (!url.match(window.location.origin)) {
      target.setAttribute('target', '_blank');
    }
    if(classes.has(target, 'no-route') || (target.hasAttribute('target') && target.getAttribute('target') == '_blank')) return

    e.preventDefault()

    framework.go(target.getAttribute('href'))
}
