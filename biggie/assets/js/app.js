import framework from 'framework'
import domselect from 'dom-select'
import biggie from '@utils/biggie'
import { name, version, repository } from '../../package.json'
import config from 'config'

class App {

  constructor(opt = {}) {

    console.log(`%c${name}@${version} %c– %c${repository.url}`, 'color: #6a6a6a', 'color: #333', 'color: #6a6a6a')

    this.ui = config.ui

    this.init()
  }

  init() {

    this.addEvents()

    framework.init()
  }

  addEvents() {

    biggie.bind.add(this.ui.link)
  }
}

module.exports = App
