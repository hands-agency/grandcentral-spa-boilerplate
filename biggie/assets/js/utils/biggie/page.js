import config from 'config'
import cache from 'cache'
import ajax from 'please-ajax'
import create from 'dom-create-element'
import slug from './slug'

export default (req, view, options, done) => {

  let id = slug(req, options)
  config.BASE.length > 1 ? id = id.replace(config.BASE.substring(1), '') : id
  const pattern = '/'
  const regexp = new RegExp(pattern, 'g')
  const cn = id.replace(regexp, '-')
  const handsCn = config.multilingual ? cn.slice(3) : cn
  const page = create({ selector: 'div', id: `page-${handsCn}`, styles: `page page-${handsCn}` })

    view.appendChild(page)

    if(!cache[id] || !options.cache) {

        ajax.get(`${config.BASE}www/${config.APP}/${config.BIGGIE_TEMPLATE}/${id}.html`, {
            success: (object) => {
                const html = object.data
                page.innerHTML = html
                if(options.cache) cache[id] = html
                done()
            }
        })

    } else {

        setTimeout(() => {
            page.innerHTML = cache[id]
            done()
        }, 1)
    }

    return page
}
