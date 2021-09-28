/*
 * @Author: jiangjin
 * @Date: 2021-09-25 17:21:15
 * @LastEditTime: 2021-09-25 17:31:09
 * @LastEditors: jiangjin
 * @Description: 
 * 
 */
import React, { useState } from 'react';
import logo from './logo.svg';
import './App.css';
import { animated, config, useSpring } from "react-spring";

function App() {
  const [flip, set] = useState(false)
  const { number } = useSpring({
    reset: true,
    reverse: flip,
    from: { number: 0 },
    number: 1,
    delay: 200,
    config: config.molasses,
    onRest: () => set(!flip),
  })

  return <animated.div>{number.to(n => n.toFixed(2))}</animated.div>
  // return null
}

export default App;
