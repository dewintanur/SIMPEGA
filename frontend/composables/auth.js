import { useState } from '#app'

export const useAuth = () => {
  const token = useState('token', () => null)
  const user = useState('user', () => null)

  const setAuth = (data) => {
    token.value = data.token
    user.value = data.user
    localStorage.setItem('token', data.token)
    localStorage.setItem('user', JSON.stringify(data.user))
  }

  const loadAuth = () => {
    token.value = localStorage.getItem('token')
    user.value = JSON.parse(localStorage.getItem('user'))
  }

  const logout = () => {
    token.value = null
    user.value = null
    localStorage.removeItem('token')
    localStorage.removeItem('user')
  }

  return {
    token,
    user,
    setAuth,
    loadAuth,
    logout
  }
}
