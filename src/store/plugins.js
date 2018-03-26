import createPersistedState from 'vuex-persistedstate'
import { LOCALSTORAGE_KEY } from '../consts'

export const plugins = [
  createPersistedState({
    key: LOCALSTORAGE_KEY,
    paths: [
      'elasticsearchHost',
      'browse',
      'theme'
    ]
  })
]
