import React from 'react'

function Greeting() {
    return(
        <h1>Hello! I am a standard function.</h1>
    );
}

const ShinyButton = () => {
    const handleClick = () => {
        alert("You clicked me! | Conditional Demo #1");
    }
    return(
        <button onClick={handleClick}>Click This Button!</button>
    );
}


export default ShinyButton;