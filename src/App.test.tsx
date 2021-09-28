/*
 * @Author: jiangjin
 * @Date: 2021-09-25 17:21:15
 * @LastEditTime: 2021-09-28 19:05:11
 * @LastEditors: jiangjin
 * @Description:
 *
 */
import React from 'react'
import { render, screen } from '@testing-library/react'
import App from './App'

test('renders learn react link', () => {
  render(<App />)
  const linkElement = screen.getByText(/learn react/i)
  expect(linkElement).toBeInTheDocument()
})
